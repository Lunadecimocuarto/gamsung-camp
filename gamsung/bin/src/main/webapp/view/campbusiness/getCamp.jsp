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
			margin-top: 90px;
		}
    </style>

	<!-- JavaScript -->
	<script type="text/javascript">

		// ��ư
		$(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("#confirm").on("click" , function() {
				window.self.location = "/campBusiness/goSubMainCampBusiness";
			});
			
			$("#update").on("click" , function() {
				alert("����ȭ������ ��ȯ�մϴ�.")
				$("form").attr("method" , "POST").attr("action" , "/campBusiness/updateCampView").submit();
			});
			
			$("#delete").on("click" , function() {
				if (confirm("'Ȯ��'�� �����ø� ������ �˴ϴ� \n���� �Ŀ��� ������ �Ұ����մϴ�.") == true){    
					$("form").attr("method" , "POST").attr("action" , "/campBusiness/deleteCamp").submit();
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
	<form>	
	<div class="container">	
	
	    <input type="hidden" name="campNo" value="${camp.campNo}">	
	    	
	 
	    <br>
	    <br>
	    <br>	
		<div class="page-header">
	       <h3 class=" text-info">ķ���� ������</h3>
	    </div>
		    	
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� ��Ϲ�ȣ</strong></div>
			<div class="col-xs-8 col-md-4">${camp.campNo}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>�����ȸ��ID</strong></div>
			<div class="col-xs-8 col-md-4">${campSession.user.id}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� �̸�</strong></div>
			<div class="col-xs-8 col-md-4">${campSession.user.campName}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� �ּ�</strong></div>
			<div class="col-xs-8 col-md-4">${campSession.user.addr}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� ��ȭ��ȣ</strong></div>
			<div class="col-xs-8 col-md-4">${campSession.user.campCall}</div>
		</div>
		
		<hr/>							
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� ����</strong></div>
			<div class="col-xs-8 col-md-4">${camp.campRate}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>�����</strong></div>
			<div class="col-xs-8 col-md-4">${camp.campReservationCount}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� �̹��� ��ȸ��</strong></div>
			<div class="col-xs-8 col-md-4">${camp.campViewCountCurrentMonth}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� ������ ��ȸ��</strong></div>
			<div class="col-xs-8 col-md-4">${camp.campViewCountPreviousMonth}</div>
		</div>
		
		<hr/>	
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� �������</strong></div>
			<div class="col-xs-8 col-md-4">${camp.campSummery}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� ������</strong></div>
			<div class="col-xs-8 col-md-4">${camp.campDetail}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� �������</strong></div>
			<div class="col-xs-8 col-md-4">${camp.campRegDate}</div>
		</div>
		
		<hr/>

		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� �׸�1</strong></div>
			<div class="col-xs-8 col-md-4">${camp.campTheme1}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� �׸�2</strong></div>
			<div class="col-xs-8 col-md-4">${camp.campTheme2}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� �ڿ�1</strong></div>
			<div class="col-xs-8 col-md-4">${camp.campNature1}</div>
		</div>
		
		<hr/>	
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� �ڿ�2</strong></div>
			<div class="col-xs-8 col-md-4">${camp.campNature2}</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� �1</strong></div>
			<div class="col-xs-8 col-md-4">
				<c:choose>
					<c:when test="${ empty camp.campOperation1 || camp.campOperation1 == '���'}"> 
						���
					</c:when>
					<c:when test="${ empty camp.campOperation1 || camp.campOperation1 == '��'}"> 
						�� (3��~5��)
					</c:when>
					<c:when test="${ empty camp.campOperation1 || camp.campOperation1 == '����'}"> 
						���� (6��~8��)
					</c:when>
					<c:when test="${ empty camp.campOperation1 || camp.campOperation1 == '����'}"> 
						���� (9��~11��)
					</c:when>
					<c:when test="${ empty camp.campOperation1 || camp.campOperation1 == '�ܿ�'}"> 
						�ܿ� (12��~2��)
					</c:when>
					<c:when test="${ empty camp.campOperation1 || camp.campOperation1 == '����'}"> 
						����
					</c:when>
					<c:otherwise>
						�ָ�
					</c:otherwise>
				</c:choose>	
			</div>
		</div>
		
		<hr/>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� �2</strong></div>
				<c:choose>
					<c:when test="${ empty camp.campOperation2 || camp.campOperation2 == '���'}"> 
						���
					</c:when>
					<c:when test="${ empty camp.campOperation2 || camp.campOperation2 == '��'}"> 
						�� (3��~5��)
					</c:when>
					<c:when test="${ empty camp.campOperation2 || camp.campOperation2 == '����'}"> 
						���� (6��~8��)
					</c:when>
					<c:when test="${ empty camp.campOperation2 || camp.campOperation2 == '����'}"> 
						���� (9��~11��)
					</c:when>
					<c:when test="${ empty camp.campOperation2 || camp.campOperation2 == '�ܿ�'}"> 
						�ܿ� (12��~2��)
					</c:when>
					<c:when test="${ empty camp.campOperation2 || camp.campOperation2 == '����'}"> 
						����
					</c:when>
					<c:otherwise>
						�ָ�
					</c:otherwise>
				</c:choose>	
		</div>
		
		<hr/>
	
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� �����̹���</strong></div>
			<img src="/uploadFiles/campimg/campbusiness/camp/${camp.campMapImg}" />
		</div>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� ����1</strong></div>
			<img src="/uploadFiles/campimg/campbusiness/camp/${camp.campImg1}" />
		</div>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� ����2</strong></div>
			<img src="/uploadFiles/campimg/campbusiness/camp/${camp.campImg2}" />
		</div>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� ����3</strong></div>
			<img src="/uploadFiles/campimg/campbusiness/camp/${camp.campImg3}" />
		</div>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� ����4</strong></div>
			<img src="/uploadFiles/campimg/campbusiness/camp/${camp.campImg4}" />
		</div>
		
		<div class="row">
	  		<div class="col-xs-4 col-md-2"><strong>ķ���� ����5</strong></div>
			<img src="/uploadFiles/campimg/campbusiness/camp/${camp.campImg5}" />
		</div>	
					
		<br>
		<br>			
								  		  
		<div class="form-group">
			<div class="col-sm-offset-4  col-sm-4 text-center">
				<button id="delete" type="button" class="btn btn-primary">����</button>
				<button id="update"type="button" class="btn btn-primary">����</button>
				<button id="confirm" type="button" class="btn btn-primary">Ȯ��</button>
			</div>
		</div>
		
		
		</div>
	</form>  
</body>

</html>