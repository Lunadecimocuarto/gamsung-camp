<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


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
			$("#save").on("click" , function() {
				alert("1");
				$("form").attr("method" , "POST").attr("action" , "/campBusiness/addCamp").submit();
			});
			
			$("#tempsave").on("click" , function() {
				alert("2");				
			});
			
			$("#cancle").on("click" , function() {
				$("form")[0].reset();	
			});
		
		});	

</script>		
	    
</head>

<body>

	<!-- ToolBar -->
	<jsp:include page="/view/campbusiness/campBusinessToolbar.jsp" />

	<!-- Page Start -->
	<div class="container">
	
	
		<div class="page-header">
	       <h3 class=" text-info">ķ������ ���</h3>
	       <h5 class="text-muted"><strong class="text-danger">ȯ���մϴ�. �����! ��ϿϷ� �Ǿ����ϴ�.</strong></h5>
	    </div>
	    	
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>�� �� ��</strong></div>
			<div class="col-xs-8 col-md-4">${product.prodName}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>������</strong></div>
			<div class="col-xs-8 col-md-4">${product.prodDetail}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>��������</strong></div>
			<div class="col-xs-8 col-md-4">${product.manuDate}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>�ǸŰ���</strong></div>
			<div class="col-xs-8 col-md-4">${product.price}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>�̹��� </strong></div>
			<img src="/images/uploadFiles/${product.fileName}" />
		</div>
				  		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >��ǰ���</button>
			  <a class="btn btn-primary btn" href="#" role="button">�߰����</a>

		    </div>
		  </div>
		  	
 	</div>

</body>

</html>