<%@ page contentType="text/html; charset=EUC-KR" %>

<!DOCTYPE html>

<html lang="ko">

<head>
	<meta charset="EUC-KR">

	<!-- Bootstrap, jQuery CDN -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	
	<script src="../../resources/lib/jquery/jquery.js"></script>
    <script src="../../resources/lib/bootstrap/js/bootstrap.min.js"></script>
  	<script src="../../resources/lib/imagesloaded/imagesloaded.pkgd.js"></script>
	
	<!-- CSS -->
	<style>
		body > div.container{
			margin-top: 70px;
		}
    </style>

	<!-- JavaScript -->
	<script type="text/javascript">

		// ��ư
		$(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			
			//������� �������� �޾ƿ���	
			document.getElementById('subSiteRegDate').value = new Date().toISOString().substring(0, 10);;
			
			$("#save").on("click" , function() {
				alert("�ΰ��ü��� ��� �Ǿ����ϴ�.");			
				$("form").attr("method" , "POST").attr("action" , "/campBusiness/updateSubSite").attr("enctype","multipart/form-data").submit();
			});
					
			$("#cancle").on("click" , function() {
				alert("��� �Ǿ����ϴ�.");
				window.history.back();
			});
			
			$("#resetform").on("click" , function() {
				alert("�ʱ�ȭ �Ǿ����ϴ�.");				
				$("form")[0].reset();				
			});
		
		});	

</script>		

</head>

<body>

	<!-- ToolBar -->
	<jsp:include page="/view/common/headerCampBusiness.jsp" />

	<!-- Page Start -->
	<div class="container">

		<div class="page-header">
	       <h1 class=" text-info">�ΰ��ü� ���</h1>
	    </div>

		<!-- Form Start -->
		<form class="form-horizontal" >
		
		<input type="hidden" name="campNo" id="campNo" value="${campSession.campNo}">
		
		<div class="form-group">
			<label for="subSiteNo" class="col-sm-offset-1 col-sm-3 control-label">��� ��ȣ</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="subSiteNo" name="subSiteNo" value="${subSite.subSiteNo}" readonly>
				</div>
		</div>
			
		<div class="form-group">
			<label for="subSiteRegDate" class="col-sm-offset-1 col-sm-3 control-label">��� ����</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="subSiteRegDate" name="subSiteRegDate" value="" readonly>
				</div>
		</div>

		<div class="form-group">
			<label for="subSiteType" class="col-sm-offset-1 col-sm-3 control-label">�ΰ��ü� ����</label>
			<div class="col-sm-4">
				<select name="subSiteType" class="form-control" >
					<option value="����" selected="selected">����</option>
					<option value="�¼�">�¼�</option>
					<option value="����">����</option>
					<option value="ȭ���">ȭ���</option>
					<option value="��������">��������</option>
					<option value="Ʈ������">Ʈ������</option>
					<option value="�������ͳ�">�������ͳ�</option>
					<option value="��å��">��å��</option>
				</select>
			</div>
		</div>
		
		
		<div class="form-group">
			<label for="subSiteName" class="col-sm-offset-1 col-sm-3 control-label">�ΰ��ü� �̸�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="subSiteName" name="subSiteName" value="" placeholder="�̸��� �Է��ϼ���">
				</div>
		</div>
		
		<div class="form-group">
			<label for="subSiteImgFile" class="col-sm-offset-1 col-sm-3 control-label">�ΰ��ü� �̹���</label>				
				<div class="col-sm-4">
					<input type="file"  id="subSiteImgFile" name="subSiteImgFile">	
				</div>
		</div>
		
		<div class="form-group">
			<label for="subSiteInfo" class="col-sm-offset-1 col-sm-3 control-label">�ΰ��ü� ����</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="subSiteInfo" name="subSiteInfo" value="" placeholder="������ �Է��ϼ���">
				</div>
		</div>		

		<div class="form-group">
			<div class="col-sm-offset-4  col-sm-4 text-center">
				<button id="resetform" type="button" class="btn btn-primary">��� �ʱ�ȭ</button>
				<button id="cancle" type="button" class="btn btn-primary">���</button>
				<button id="save" type="button" class="btn btn-primary">����</button>
			</div>
		</div>

		</form>
		<!-- Form End -->
		
 	</div>
	<!-- Page End -->

</body>

</html>