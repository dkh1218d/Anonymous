package me.tokyohyeon.controller;

import java.awt.Image;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Base64;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.AllArgsConstructor;
import me.tokyohyeon.domain.ImgVO;
import me.tokyohyeon.service.ImageService;
import me.tokyohyeon.utils.ET_CETERA;

@Controller
@RequestMapping("/project/*")
@AllArgsConstructor
public class ImageController 
{
	private ImageService service;
	
	@GetMapping("/image/*")
	public void view(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		String 			URL = request.getServletPath();
		String			fileExt = null;
		String 			extInf[] = null;
		int 			pos = URL.lastIndexOf('/');
		byte[]			fileBinary = null;
		OutputStream	os = null;
		ImgVO			vo;
		
		if (pos++ == -1)
			return;
	
		if (null == (URL = URL.substring(pos)))
			return;
		
		if (null == (vo = service.readAlias(URL)))
			return;
		
		if (null == (fileExt = ET_CETERA.PARSE_EXT(vo.getIMG_NAME())))
			return;
		
		if (null == (extInf = ET_CETERA.MIME_TYPE(fileExt)))
			return;

		fileBinary = Base64.getDecoder().decode(vo.getBinary());

		response.setHeader("Content-Type", extInf[1] + "; charset=utf-8");
		response.setHeader("Content-Length", "" + vo.getLEN());
		
		os = response.getOutputStream();
		os.write(fileBinary, 0, vo.getLEN());
		os.close();
	}
	
	@PostMapping("/image")
	public void upload(MultipartHttpServletRequest mRequest) 
	{
        List<MultipartFile> fileList = mRequest.getFiles("u");
        String 			filename;
        byte[] 			binary;
        int 			fileSize;
        Image 			image;
        ImgVO			iVO;
        int				iWidth;
        int 			iHeight;
        
        for (MultipartFile mf : fileList) 
        {
        	filename = mf.getOriginalFilename();
            fileSize = (int)mf.getSize();

            if (fileSize <= 0)
            	return;
            
            try 
            {
            	binary = mf.getBytes();
            	
            	// 이미지 크기 가져오기

                image = ImageIO.read(mf.getInputStream());
                iWidth = image.getWidth(null);
                iHeight = image.getHeight(null);
            	
                iVO = new ImgVO();

                iVO.setIMG_NAME(filename);
                iVO.setALIAS(ET_CETERA.MK_RND_STR(255));

                iVO.setSIZE_W(iWidth);
                iVO.setSIZE_H(iHeight);
                iVO.setLEN(fileSize);
                
                iVO.setBinary(Base64.getEncoder().encodeToString(binary));
                
                service.insert(iVO);
            } 
            catch (Exception e) 
            {
                e.printStackTrace();
            }
        }
	}
}
