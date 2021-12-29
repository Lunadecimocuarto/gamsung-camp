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
	  		<div class="col-xs-4 col-md-2"><strong>�ΰ��ü� ��Ϲ�ȣ</strong></div>
			<div class="col-xs-8 col-md-4">${subSite.subSiteNo}</div>
		</div>
				
		<hr/>
	    	
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
			
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>�ΰ��ü� ����</strong></div>
			<img src="../uploadfiles/campimg/campbusiness/subsite/${subSite.subSiteImg}" />
		</div>
		 							  		  
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