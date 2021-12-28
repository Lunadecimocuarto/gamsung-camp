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
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("#confirm").on("click" , function() {
				$("form").attr("method" , "get").attr("action" , "/campBusiness/listSubSite").submit();
			});
			
			$("#update").on("click" , function() {
				alert("����ȭ������ ��ȯ�մϴ�.")
				$("form").attr("method" , "POST").attr("action" , "/campBusiness/updateSubSiteView").submit();
			});
			
			$("#delete").on("click" , function() {
				if (confirm("'Ȯ��'�� �����ø� ������ �˴ϴ� \n���� �Ŀ��� ������ �Ұ����մϴ�.") == true){    
					$("form").attr("method" , "POST").attr("action" , "/campBusiness/deleteSubSite").submit();
				} else {
				    return;
				}
			});
		
		});	

</script>		
	    
</head>

<body>

	<!-- ToolBar -->
	<jsp:include page="/view/common/headerCampBusiness.jsp" />

	<!-- Page Start -->
	<div class="container">	
	<form>
	
	<input type="hidden" name="campNo" value="${camp.campNo}">
	<input type="hidden" name="subSiteNo" value="${subSite.subSiteNo}">
	
		<div class="page-header">
	       <h3 class=" text-info">�ΰ��ü� ������</h3>
	    </div>
	    	
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>�ΰ��ü� �������</strong></div>
			<div class="col-xs-8 col-md-4">${subSite.subSiteRegDate}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>�ΰ��ü� ����</strong></div>
			<div class="col-xs-8 col-md-4">${subSite.subSiteType}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>�ΰ��ü� �̸�</strong></div>
			<div class="col-xs-8 col-md-4">${subSite.subSiteName}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>�ΰ��ü� ����</strong></div>
			<div class="col-xs-8 col-md-4">${subSite.subSiteInfo}</div>
		</div>
		
		<hr/>
		
		<!-- 	
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>�ΰ��ü� ����</strong></div>
			<img src="/uploadFiles/campimg/campbusiness/subSite/${subSite.subSiteImg}" />
		</div>
		-->
		 							  		  
		<div class="form-group">
			<div class="col-sm-offset-4  col-sm-4 text-center">
				<button id="delete" type="button" class="btn btn-primary">����</button>
				<button id="update"type="button" class="btn btn-primary">����</button>
				<button id="confirm" type="button" class="btn btn-primary">Ȯ��</button>
			</div>
		</div>
		  
	</form>	  	
 	</div>

</body>

</html>