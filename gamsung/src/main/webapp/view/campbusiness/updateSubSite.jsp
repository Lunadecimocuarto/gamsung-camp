<%@ page contentType="text/html; charset=EUC-KR" %>

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
			$("form").attr("method" , "POST").attr("action" , "/campBusiness/updateSubSite").submit();
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
	       <h1 class=" text-info">�ΰ��ü� ����</h1>
	    </div>

		<!-- Form Start -->
		<form class="form-horizontal" >
		 	
		<input type="hidden" name="campNo" id="campNo" value="${subSite.campNo}">
		<input type="hidden" name="subSiteNo" id="subSiteNo" value="${subSite.subSiteNo}">
			
		<div class="form-group">
			<label for="subSiteType" class="col-sm-offset-1 col-sm-3 control-label">�ΰ��ü� ����</label>
			<div class="col-sm-4">
				<select name="subSiteType" class="form-control" >
					<option value="����" ${! empty subSite.subSiteType && subSite.subSiteType eq '����' ? "selected" : "" }>����</option>
					<option value="�¼�" ${! empty subSite.subSiteType && subSite.subSiteType eq '�¼�' ? "selected" : "" }>�¼�</option>
					<option value="����" ${! empty subSite.subSiteType && subSite.subSiteType eq '����' ? "selected" : "" }>����</option>
					<option value="ȭ���" ${! empty subSite.subSiteType && subSite.subSiteType eq 'ȭ���' ? "selected" : "" }>ȭ���</option>
					<option value="��������" ${! empty subSite.subSiteType && subSite.subSiteType eq '��������' ? "selected" : "" }>��������</option>
					<option value="Ʈ������" ${! empty subSite.subSiteType && subSite.subSiteType eq 'Ʈ������' ? "selected" : "" }>Ʈ������</option>
					<option value="�������ͳ�" ${! empty subSite.subSiteType && subSite.subSiteType eq '�������ͳ�' ? "selected" : "" }>�������ͳ�</option>
					<option value="��å��" ${! empty subSite.subSiteType && subSite.subSiteType eq '��å��' ? "selected" : "" }>��å��</option>
				</select>
			</div>
		</div>
		
		
		<div class="form-group">
			<label for="subSiteName" class="col-sm-offset-1 col-sm-3 control-label">�ΰ��ü� �̸�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="subSiteName" name="subSiteName" value="${subSite.subSiteName}">
				</div>
		</div>

		
		<!-- 
		<div class="form-group">
			<label for="subSiteImg" class="col-sm-offset-1 col-sm-3 control-label">�ΰ��ü� ����</label>
				<div class="col-sm-4">
					<input type="file"  id="subSiteImg" name="subSiteImg">
				</div>
		</div>
			
		-->
		
		<div class="form-group">
			<label for="subSiteInfo" class="col-sm-offset-1 col-sm-3 control-label">�ΰ��ü� ����</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="subSiteInfo" name="subSiteInfo" value="${subSite.subSiteInfo}">
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