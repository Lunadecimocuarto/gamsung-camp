<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<script src="/resources/lib/jquery/jquery.js"></script>
    <script src="/resources/lib/bootstrap/js/bootstrap.min.js"></script>
  	<script src="/resources/lib/imagesloaded/imagesloaded.pkgd.js"></script>
  	<link rel="stylesheet" href="/resources/lib/bootstrap/css/bootstrap.min.css"></link>

	<style>
		.container {
			padding-top: 70px;
			padding-right: 15px;
			padding-left: 15px;
			margin-right: auto;
			margin-left: auto;
		}
		
		@media ( min-width : 768px) {
			.container {
				width: 750px;
			}
		}
		
		@media ( min-width : 992px) {
			.container {
				width: 970px;
			}
		}
		
		@media ( min-width : 1200px) {
			.container {
				width: 1170px;
			}
		}
		
		.container-fluid {
			padding-right: 15px;
			padding-left: 15px;
			margin-right: auto;
			margin-left: auto;
		}
	</style>

	<!-- JavaScript -->
	<script type="text/javascript">
	
		
	
		function comma(str) {
		    str = String(str);
		    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
		}
		
		function uncomma(str) {
		    str = String(str);
		    return str.replace(/[^\d]+/g, '');
		}		
		
		$(function() {	
			
			$("#charge").on("click" , function() {
				alert("���� �Ǿ����ϴ�.");		
			});
			
			$("#withdraw").on("click" , function() {
				alert("��� �Ǿ����ϴ�.");							
			});
			
			$("#cancle").on("click" , function() {
				alert("��� �Ǿ����ϴ�.");
				window.history.back();			
			});
				
		});			 

	</script>		

</head>

<body>

	<div class="container">	
		
		<div class="row">
			<div class="page-header">
	       		<h1 class=" text-info">ķ���� �˻�</h1>
	    	</div>
		</div>
		
		<!-- ��� -->
		<div class="row">
		
			<div class="col-xs-6">�� &nbsp;&nbsp;#[el.tag��ȸ��]#&nbsp;&nbsp; ķ������ �˻��Ǿ����ϴ�</div>
			
			<div class="col-xs-2">
				�̸���
				<span>&nbsp;����&nbsp;</span>
				<span>&nbsp;����&nbsp;</span>
			</div>
			
			<div class="col-xs-2">
				��ȸ��
				<span>&nbsp;����&nbsp;</span>
				<span>&nbsp;����&nbsp;</span>
			</div>
			
			<div class="col-xs-2">
				������
				<span>&nbsp;����&nbsp;</span>
				<span>&nbsp;����&nbsp;</span>
			</div>	
			 
		</div>
		
		<hr>
		
		<!-- ķ���� ��� ����-->	
		<c:set var="i" value="0" />
			<c:forEach var="camp" items="${list}">
				<c:set var="i" value="${ i+1 }" />
					<div class="row">
						
						<!-- ķ���� �̹��� -->
						<div class="col-lg-3">
					      	<div id="charge" style="background-color: #00aaff; width: 200px; height: 200px; border-radius: 10px; display: flex; justify-content: center; align-items: center">
					      	<div style="font-size:30px; color:white">�̹���</div></div>				    	
			    		</div>      		
			    		
			    		<!-- ķ���� ���� -->
						<div class="col-lg-9">
						
							<div class="row">
								<div class="col-xs-2">ķ���� �̸�</div>					
								<div class="col-xs-4"> #[el.tag ķ�����̸�]#</div>
								
								<div class="col-xs-2">�������</div>					
								<div class="col-xs-4"> #[el.tag �������]#</div>
							</div>	
							
							<div class="row">
								<br>
								<br>
								<div class="col-xs-2">����</div>					
								<div class="col-xs-4"> #[el.tag ����]#</div>
								
								<div class="col-xs-2">��ȸ��</div>					
								<div class="col-xs-4"> #[el.tag ��ȸ��]#</div>
							</div>
							
							<div class="row">
								<br>
								<br>
								<div class="col-xs-2">�ּ�</div>					
								<div class="col-xs-4"> #[el.tag �ּ�]#</div>
								
								<div class="col-xs-2">��ȭ��ȣ</div>					
								<div class="col-xs-4"> #[el.tag ��ȭ��ȣ]#</div>
							</div>
							
							<div class="row">
								<br>
								<br>
								<div class="col-xs-2">ķ���� �⺻����</div>					
								<div class="col-xs-4"> #[el.tag �⺻����]#</div>			
							</div>	
																	 
					    </div>    	
			    		
					</div>
		</c:forEach>
		<!-- ķ���� ��� ��-->	
		
		<hr>
		
 		<!-- PageNavigation -->
 		<div class="row">
			<jsp:include page="../common/pageNavigator.jsp"/>
		</div>
		

</body>

</html>
