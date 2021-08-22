package me.tokyohyeon.utils;

public class ET_CETERA 
{
	public static String MK_RND_STR(int MaxLine)
	{
		String 			seed = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ012343456789";
		StringBuffer 	sb = new StringBuffer();
		int 			seedlen = seed.length();
		
		for (int i = 0; i < MaxLine; ++i)
			sb.append(seed.charAt((int)(Math.random() * seedlen)));
		
		return sb.toString();
	}
	
	public static String[] MIME_TYPE(String extension)
	{
		String 			extInf[] = null;
		String 			MIME[] = 
		{
				"png", 	"image/png",
				"jpg", 	"image/jpeg",
				"jpeg", "image/jpeg",
				"gif", 	"image/gif"
		};

		for (int i = 0, j = 2; i < MIME.length; i += 2)
		{
			if (MIME[i].equals(extension))
			{
				extInf = new String[j];
				
				while (j-- > 0)
					extInf[j] = MIME[i + j];
				
				break;
			}
		}
		
		return extInf;
	}
	
	public static String PARSE_EXT(String Filename)
	{
		int extIndex;
		
		if ((extIndex = Filename.lastIndexOf(".")) < 0)
			return null;
		
		return Filename.substring(extIndex + 1);
	}
	
	public static boolean isNumberic(String val)
	{
		int len, i = 0;

		// String 에 아무것도 없을 경우
		if (null == val)
			return false;
		
		// 음수가 들어올 경우 맨 앞의 마이너스 문자는 올바른 것이기 때문에 검사 시작 포지션 을 한칸 늘린다.
		if (val.charAt(0) == '-')
			++i;
		
		// 음수 부호('-') 빼고 문자열 길이를 검사해서 1 미만일 경우
		if ((len = val.length()) - i < 1)
			return false;
		
		// 본격적으로 숫자인지 검사하는 부분
		for (int c; i < len; ++i)
			if ((c = val.charAt(i)) < '0' || c > '9')
				return false;
		
		return true;
	}
}
