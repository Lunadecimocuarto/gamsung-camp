<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

<!DOCTYPE html>

<html lang="ko">

<head>
	<meta charset="EUC-KR">

	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<!-- Bootstrap, jQuery CDN -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

	<!-- Bootstrap Dropdown Hover CSS -->
	<link href="/css/animate.min.css" rel="stylesheet">
	<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
	<!-- Bootstrap Dropdown Hover JS -->
	<script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
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
			
			$("#update").on("click" , function() {
				alert("ķ���������� �����մϴ�.");
				$("form").attr("method" , "POST").attr("action" , "/campBusiness/updateMainSite").submit();
			});
			
			$("#cancle").on("click" , function() {
				alert("������ ��� �Ǿ����ϴ�.");
				history.go(-1);
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
	       <h1 class=" text-info">�ֿ�ü� ����</h1>
	    </div>

		<!-- Form Start -->
		<form class="form-horizontal" >
		
		<input type="hidden" name="campNo" id="campNo" value="${campSession.campNo}">
		<input type="hidden" name="mainSiteNo" id="mainSiteNo" value="${mainSite.mainSiteNo}">
		
		<div class="form-group">
			<label for="mainSiteType" class="col-sm-offset-1 col-sm-3 control-label">�ֿ�ü� ����</label>
			<div class="col-sm-4">
				<select name="mainSiteType" class="form-control" >
					<option value="����ķ��" ${! empty mainSite.mainSiteType && mainSite.mainSiteType eq '����ķ��' ? "selected" : "" }>����ķ��</option>
					<option value="�۷���" ${! empty mainSite.mainSiteType && mainSite.mainSiteType eq '�۷���' ? "selected" : "" }>�۷���</option>
					<option value="ī���" ${! empty mainSite.mainSiteType && mainSite.mainSiteType eq 'ī���' ? "selected" : "" }>ī���</option>
					<option value="�氥��" ${! empty mainSite.mainSiteType && mainSite.mainSiteType eq '�氥��' ? "selected" : "" }>�氥��</option>
					<option value="�Ҽ�" ${! empty mainSite.mainSiteType && mainSite.mainSiteType eq '�Ҽ�' ? "selected" : "" }>�Ҽ�</option>
					<option value="�ڵ����߿���" ${! empty mainSite.mainSiteType && mainSite.mainSiteType eq '�ڵ����߿���' ? "selected" : "" }>�ڵ����߿���</option>
				</select>
			</div>
		</div>		
		
		<div class="form-group">
			<label for="mainSiteName" class="col-sm-offset-1 col-sm-3 control-label">�ֿ�ü� �̸�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="mainSiteName" name="mainSiteName" value="${mainSite.mainSiteName}">
				</div>
		</div>

		<div class="form-group">
			<label for="mainSiteSize" class="col-sm-offset-1 col-sm-3 control-label">�ֿ�ü� ũ��</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="mainSiteSize" name="mainSiteSize" value="${mainSite.mainSiteSize}">
				</div>
		</div>
		
		<div class="form-group">
			<label for="mainSiteSection" class="col-sm-offset-1 col-sm-3 control-label">�ֿ�ü� ��ġ(������ȣ)</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="mainSiteSection" name="mainSiteSection" value="${mainSite.mainSiteSection}">
				</div>
		</div>
		
		<div class="form-group">
			<label for="mainSiteMinCapacity" class="col-sm-offset-1 col-sm-3 control-label">�⺻ ����ο���</label>
				<div class="col-sm-4">
					<input type="number" class="form-control" id="mainSiteMinCapacity" name="mainSiteMinCapacity" value="${mainSite.mainSiteMinCapacity}">
				</div>
		</div>
		
		<div class="form-group">
			<label for="mainSiteMaxCapacity" class="col-sm-offset-1 col-sm-3 control-label">�ִ� ����ο���</label>
				<div class="col-sm-4">
					<input type="number" class="form-control" id="mainSiteMaxCapacity" name="mainSiteMaxCapacity" value="${mainSite.mainSiteMaxCapacity}">
				</div>
		</div>
		
		<div class="form-group">
			<label for="mainSiteMinPrice" class="col-sm-offset-1 col-sm-3 control-label">�⺻�ο� �ݾ�</label>
				<div class="col-sm-4">
					<input type="number" class="form-control" id="mainSiteMinPrice" name="mainSiteMinPrice" value="${mainSite.mainSiteMinPrice}">
				</div>
		</div>
		
		<div class="form-group">
			<label for="mainSiteAddPrice" class="col-sm-offset-1 col-sm-3 control-label">�߰��ο� �ݾ�</label>
				<div class="col-sm-4">
					<input type="number" class="form-control" id="mainSiteAddPrice" name="mainSiteAddPrice" value="${mainSite.mainSiteAddPrice}">
				</div>
		</div>
		
		<div class="form-group">
			<label for="mainSiteParkingSize" class="col-sm-offset-1 col-sm-3 control-label">�������� ���</label>
				<div class="col-sm-4">
					<input type="number" class="form-control" id="mainSiteParkingSize" name="mainSiteParkingSize" value="${mainSite.mainSiteParkingSize}">
				</div>
		</div>


		<!-- 
		<div class="form-group">
			<label for="mainSiteImg1" class="col-sm-offset-1 col-sm-3 control-label">�ֿ�ü� ����1</label>
				<div class="col-sm-4">
					<input type="mainSiteImg1"  id="file" name="mainSiteImg1">
				</div>
		</div>
		
		<div class="form-group">
			<label for="mainSiteImg2" class="col-sm-offset-1 col-sm-3 control-label">�ֿ�ü� ����2</label>
				<div class="col-sm-4">
					<input type="file"  id="mainSiteImg2" name="mainSiteImg2">
				</div>
		</div>
		
		<div class="form-group">
			<label for="mainSiteImg3" class="col-sm-offset-1 col-sm-3 control-label">�ֿ�ü� ����3</label>
				<div class="col-sm-4">
					<input type="file"  id="mainSiteImg3" name="mainSiteImg3">
				</div>
		</div>
			
		-->
		
		<div class="form-group">
			<label for="mainSiteInfo" class="col-sm-offset-1 col-sm-3 control-label">�ֿ�ü� ����</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="mainSiteInfo" name="mainSiteInfo" value="${mainSite.mainSiteInfo}">
				</div>
		</div>

		<div class="form-group">
			<div class="col-sm-offset-4  col-sm-4 text-center">
				<button id="cancle" type="button" class="btn btn-primary">���</button>
				<button id="update" type="button" class="btn btn-primary">����</button>
			</div>
		</div> 

		</form>
		<!-- Form End -->
		
 	</div>
	<!-- Page End -->

</body>

</html>