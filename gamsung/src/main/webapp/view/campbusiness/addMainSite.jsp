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
			
			//������� �������� �޾ƿ���	
			document.getElementById('mainSiteRegDate').value = new Date().toISOString().substring(0, 10);;
			
			$("#save").on("click" , function() {
				alert("�ֿ�ü��� ��� �Ǿ����ϴ�.");
				$("form").attr("method" , "POST").attr("action" , "/campBusiness/updateMainSite").attr("enctype","multipart/form-data").submit();
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
	       <h1 class=" text-info">�ֿ�ü� ���</h1>
	    </div>

		<!-- Form Start -->
		<form class="form-horizontal" >
		
		<input type="hidden" name="campNo" id="campNo" value="${campSession.campNo}">
		
		<div class="form-group">
			<label for="mainSiteNo" class="col-sm-offset-1 col-sm-3 control-label">��� ��ȣ</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="mainSiteNo" name="mainSiteNo" value="${mainSite.mainSiteNo}" readonly>
				</div>
		</div>	
		
		<div class="form-group">
			<label for="mainSiteRegDate" class="col-sm-offset-1 col-sm-3 control-label">��� ����</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="mainSiteRegDate" name="mainSiteRegDate" value="" readonly>
				</div>
		</div>

		<div class="form-group">
			<label for="mainSiteType" class="col-sm-offset-1 col-sm-3 control-label">�ֿ�ü� ����</label>
			<div class="col-sm-4">
				<select name="mainSiteType" class="form-control" >
					<option value="����ķ��" selected="selected">����ķ��</option>
					<option value="�۷���">�۷���</option>
					<option value="ī���">ī���</option>
					<option value="�氥��">�氥��</option>
					<option value="�Ҽ�">�Ҽ�</option>
					<option value="�ڵ����߿���">�ڵ����߿���</option>
				</select>
			</div>
		</div>
		
		
		<div class="form-group">
			<label for="mainSiteName" class="col-sm-offset-1 col-sm-3 control-label">�ֿ�ü� �̸�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="mainSiteName" name="mainSiteName" value="" placeholder="�̸��� �Է��ϼ���">
				</div>
		</div>

		<div class="form-group">
			<label for="mainSiteSize" class="col-sm-offset-1 col-sm-3 control-label">�ֿ�ü� ũ��</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="mainSiteSize" name="mainSiteSize" value="" placeholder="ũ�⸦ �Է��ϼ���">
				</div>
		</div>
		
		<div class="form-group">
			<label for="mainSiteSection" class="col-sm-offset-1 col-sm-3 control-label">�ֿ�ü� ��ġ(������ȣ)</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="mainSiteSection" name="mainSiteSection" value="" placeholder="ķ���峻 ������ġ�� �Է��ϼ���">
				</div>
		</div>
		
		<div class="form-group">
			<label for="mainSiteMinCapacity" class="col-sm-offset-1 col-sm-3 control-label">�⺻ ����ο���</label>
				<div class="col-sm-4">
					<input type="number" class="form-control" id="mainSiteMinCapacity" name="mainSiteMinCapacity" value="1" min="0">
				</div>
		</div>
		
		<div class="form-group">
			<label for="mainSiteMaxCapacity" class="col-sm-offset-1 col-sm-3 control-label">�ִ� ����ο���</label>
				<div class="col-sm-4">
					<input type="number" class="form-control" id="mainSiteMaxCapacity" name="mainSiteMaxCapacity" value="1" min="0">
				</div>
		</div>
		
		<div class="form-group">
			<label for="mainSiteMinPrice" class="col-sm-offset-1 col-sm-3 control-label">�⺻�ο� �ݾ�</label>
				<div class="col-sm-4">
					<input type="number" class="form-control" id="mainSiteMinPrice" name="mainSiteMinPrice" value="1" min="0">
				</div>
		</div>
		
		<div class="form-group">
			<label for="mainSiteAddPrice" class="col-sm-offset-1 col-sm-3 control-label">�߰��ο� �ݾ�</label>
				<div class="col-sm-4">
					<input type="number" class="form-control" id="mainSiteAddPrice" name="mainSiteAddPrice" value="1" min="0">
				</div>
		</div>
		
		<div class="form-group">
			<label for="mainSiteParkingSize" class="col-sm-offset-1 col-sm-3 control-label">�������� ���</label>
				<div class="col-sm-4">
					<input type="number" class="form-control" id="mainSiteParkingSize" name="mainSiteParkingSize" value="0" min="0">
				</div>
		</div>

		<div class="form-group">
			<label for="mainSiteImgFile1" class="col-sm-offset-1 col-sm-3 control-label">�ֿ�ü� �̹���(1/3)</label>				
				<div class="col-sm-4">
					<input type="file"  id="mainSiteImgFile1" name="mainSiteImgFile1">	
				</div>
		</div>
		
		<div class="form-group">
			<label for="mainSiteImgFile2" class="col-sm-offset-1 col-sm-3 control-label">�ֿ�ü� �̹���(2/3)</label>				
				<div class="col-sm-4">
					<input type="file"  id="mainSiteImgFile2" name="mainSiteImgFile2">	
				</div>
		</div>
		
		<div class="form-group">
			<label for="mainSiteImgFile3" class="col-sm-offset-1 col-sm-3 control-label">�ֿ�ü� �̹���(3/3)</label>				
				<div class="col-sm-4">
					<input type="file"  id="mainSiteImgFile3" name="mainSiteImgFile3">	
				</div>
		</div>
		
		<div class="form-group">
			<label for="mainSiteInfo" class="col-sm-offset-1 col-sm-3 control-label">�ֿ�ü� ����</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="mainSiteInfo" name="mainSiteInfo" value="" placeholder="�ֿ�ü� ������ �Է��ϼ���">
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