<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"	crossorigin="anonymous">
	
	<script src="../../resources/lib/jquery/jquery.js"></script>
    <script src="../../resources/lib/bootstrap/js/bootstrap.min.js"></script>
  	<script src="../../resources/lib/imagesloaded/imagesloaded.pkgd.js"></script>

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

	<script type="text/javascript">			
	
		$(function() {		
			
			$("body").on("click","#addType",function () {			
				var result = confirm("�߰� �Ͻðڽ��ϱ�?"); 
				if(result) { 
					alert("�߰� �Ǿ����ϴ�.");
					$(this).parent().parent().parent().attr("method" , "POST").attr("action" , "/payment/addPaymentCode").submit();
				} else { 
					alert("��� �Ǿ����ϴ�.");					
				}
			});				    			
			
			$(".btn-warning").on("click" , function() {
				var result = confirm("���� �Ͻðڽ��ϱ�?"); 
				if(result) { 
					alert("���� �Ǿ����ϴ�.");
					$(this).parent().parent().parent().attr("method" , "POST").attr("action" , "/payment/updatePaymentCode").submit();
				} else { 
					alert("��� �Ǿ����ϴ�.");					
				}
				
			});
				
			var count = 0;
			$("#addform").on("click" , function() {	
				$("#ori").append(
								"<form id='addOne'>"					
								+"<div class='row'>"
								+"<div class='col-xs-1 form-group'>"
								+"<input type='text' id='paymentCode' name='paymentCode' value='' class='form-control'>"
								+"</div>"
								+"<div class='col-xs-2 form-group'>"
								+"<input type='number' id='paymentCodeRangeStart' name='paymentCodeRangeStart' class='form-control' value=''>"
								+"</div>"
								+"<div class='col-xs-2 form-group'>"
								+"<input type='number' id='paymentCodeRangeEnd' name='paymentCodeRangeEnd' class='form-control' value=''>"
								+"</div>"
								+"<div class='col-xs-3 form-group'>"
								+"<input type='text' id='paymentCodeInfo' name='paymentCodeInfo' class='form-control' value=''>"
								+"</div>"
								+"<div class='col-xs-1 form-group'>"
								+"<input type='number' id='paymentCodeFee' name='paymentCodeFee' class='form-control' value='' min='0' max='100'>"
								+"</div>"
								+"<div class='col-xs-1 form-group'>"
								+"<button id='addType' type='button' class='btn btn-primary'>���</button>"
								+"</div>"
								+"</div>"
								+"</form>"	);
				    
				count++; 
				if( count == 1){
					$("#addform").attr('disabled', true); 
				} 			
			});		
		});				
	
	</script>
	
</head>
<body>

	<div class="container">

		<div class="row">
			<div class="col-xs-1">�����ڵ�</div>
			<div class="col-xs-2">�������۰�</div>
			<div class="col-xs-2">�������ᰪ</div>
			<div class="col-xs-3">����</div>
			<div class="col-xs-1">������(%)</div>
			<div class="col-xs-1"></div>
			<div class="col-xs-1"></div>
		</div>
		
		<br>
		
		<ori id="ori">
		<c:set var="i" value="0" />
			<c:forEach var="payment" items="${list}">
				<c:set var="i" value="${ i+1 }" />
					<form id="${i}">					
						<div class="row">
							<div class="col-xs-1 form-group">
								<input type="text" id="paymentCode" name="paymentCode" value="${payment.paymentCode}" class="form-control">
							</div>
					
							<div class="col-xs-2 form-group">
								<input type="number" id="paymentCodeRangeStart" name="paymentCodeRangeStart" value="${payment.paymentCodeRangeStart}" class="form-control" value="">
							</div>
					
							<div class="col-xs-2 form-group">
								<input type="number" id="paymentCodeRangeEnd" name="paymentCodeRangeEnd" value="${payment.paymentCodeRangeEnd}" class="form-control" value="">
							</div>
							
							<div class="col-xs-3 form-group">
								<input type="text" id="paymentCodeInfo" name="paymentCodeInfo" value="${payment.paymentCodeInfo}" class="form-control">
							</div>
							
							<div class="col-xs-1 form-group">
								<input type="number" id="paymentCodeFee" name="paymentCodeFee" value="${payment.paymentCodeFee}" class="form-control" value="0" min="0" max="100">
							</div>

							<div class="col-xs-1 form-group">
								<button id="update" type="button" class="btn btn-warning">����</button>
							</div>
							
							<c:if test="${fn:length(list) == i }">
								<div class="col-xs-1 form-group">
									<button id="addform" type="button" class="btn btn-primary">�߰�</button>
								</div>
							</c:if>
						</div>
					</form>
			</c:forEach>
			</ori>
	</div>
</body>
</html>