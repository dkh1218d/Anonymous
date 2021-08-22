<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>DataTables Examples</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="/resources/admin/vendor/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/admin/vendor/css/responsive.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/admin/css/main.css">
    <script src='/resources/admin/vendor/js/jquery-3.3.1.min.js'></script>
    <script src="/resources/admin/vendor/js/jquery.dataTables.js"></script>
    <script src="/resources/admin/vendor/js/dataTables.responsive.min.js"></script>
    <script src="/resources/admin/vendor/js/dataTables.buttons.min.js"></script>
	<script src="/resources/admin/vendor/js/buttons.html5.min.js"></script>
    <script src="/resources/admin/js/main.js"></script>
 <%@include file="../admin/header.jsp"%>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Tables</h1>
	</div>	
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div ><!-- class="row" -->
	<div><!--  class="col-lg-12" -->
		<div ><!-- //class="panel panel-default" -->
			<div ><!-- class="panel-heading" -->
				Board List Page
				<button id='regBtn' type="button" class="btn btn-xs pull-right">Register
					New Board</button>
			</div>

			<!-- /.panel-heading -->
			<div ><!--class="panel-body"  -->
		    <h1>DataTables Grid Example</h1>
        <table id="myTable" class="display" style="width:100%;">
            <thead>
                <tr>
                	<th>username</th>
                    <th>userid</th>
                    <th>email</th>
                    <th>tell</th>
                    <th >regdate</th>
                    <th >joindate</th>
                    <th data-orderable="false">managerkey</th>
                    <th>birth</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
   <!--                 <th colspan="2" style="text-align:right;white-space:nowrap;">TOTAL : </th> -->
                    <th colspan="6" style="text-align:left;white-space:nowrap;"></th>
                </tr>
            </tfoot>
        </table>
				<!--  end Pagination -->
				</div>
			</div>

			<form id='actionForm' action="/admin/userlist" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>

				<input type='hidden' name='type'
					value='<c:out value="${ pageMaker.cri.type }"/>'> <input
					type='hidden' name='keyword'
					value='<c:out value="${ pageMaker.cri.keyword }"/>'>


			</form>


			<!-- Modal  추가 -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">Modal title</h4>
						</div>
						<div class="modal-body">처리가 완료되었습니다.</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save
								changes</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->


		</div>
		<!--  end panel-body -->
	</div>
	<!-- end panel -->
<!-- /.row -->






<script type="text/javascript">
	$(document)
			.ready(
					function() {

						var result = '<c:out value="${result}"/>';

						checkModal(result);

						history.replaceState({}, null, null);

						function checkModal(result) {

							if (result === '' || history.state) {
								return;
							}

							if (parseInt(result) > 0) {
								$(".modal-body").html(
										"게시글 " + parseInt(result)
												+ " 번이 등록되었습니다.");
							}

							$("#myModal").modal("show");
						}

						$("#regBtn").on("click", function() {

							self.location = "/board/register";

						});

						var actionForm = $("#actionForm");

						$(".paginate_button a").on(
								"click",
								function(e) {

									e.preventDefault();

									console.log('click');

									actionForm.find("input[name='pageNum']")
											.val($(this).attr("href"));
									actionForm.submit();
								});

						$(".move")
								.on(
										"click",
										function(e) {

											e.preventDefault();
											actionForm
													.append("<input type='hidden' name='bno' value='"
															+ $(this).attr(
																	"href")
															+ "'>");
											actionForm.attr("action",
													"/board/get");
											actionForm.submit();

										});

						var searchForm = $("#searchForm");

						$("#searchForm button").on(
								"click",
								function(e) {

									if (!searchForm.find("option:selected")
											.val()) {
										alert("검색종류를 선택하세요");
										return false;
									}

									if (!searchForm.find(
											"input[name='keyword']").val()) {
										alert("키워드를 입력하세요");
										return false;
									}

									searchForm.find("input[name='pageNum']")
											.val("1");
									e.preventDefault();

									searchForm.submit();

								});

					});
</script>






<%@include file="../admin/footer.jsp"%>
