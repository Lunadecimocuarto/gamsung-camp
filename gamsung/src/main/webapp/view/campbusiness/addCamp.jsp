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

	// ���
	$(function() {
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$( "button.btn.btn-primary" ).on("click" , function() {
			fncAddProduct();
		});
	});	
	
	
	// ���
	$(function() {
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$("a[href='#' ]").on("click" , function() {
			$("form")[0].reset();
		});
	});	

			
		function fncAddProduct(){
			//Form ��ȿ�� ����
		 	/*
			var name = document.detailForm.prodName.value;
			var detail = document.detailForm.prodDetail.value;
			var manuDate = document.detailForm.manuDate.value;
			var price = document.detailForm.price.value;
			*/
			
			var name = $("input[name='prodName']").val();
			var detail = $("input[name='prodDetail']").val();
			var manuDate = $("input[name='manuDate']").val();
			var price = $("input[name='price']").val();

			if(name == null || name.length<1){
				alert("��ǰ���� �ݵ�� �Է��Ͽ��� �մϴ�.");
				return;
			}
			if(detail == null || detail.length<1){
				alert("��ǰ�������� �ݵ�� �Է��Ͽ��� �մϴ�.");
				return;
			}
			if(manuDate == null || manuDate.length<1){
				alert("�������ڴ� �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
			if(price == null || price.length<1){
				alert("������ �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}

			
			$("form").attr("method" , "POST").attr("action" , "/product/addProduct").attr("enctype","multipart/form-data").submit();
			
		}
				

</script>		

</head>

<body>

	<!-- ToolBar -->
	<jsp:include page="/view/campbusiness/zTestToolBar.jsp" />

	<!-- Page Start -->
	<div class="container">

		<div class="page-header">
	       <h1 class=" text-info">ķ���� ���</h1>
	    </div>

		<!-- Form Start -->
		<form class="form-horizontal">
		
		<div class="form-group">
			<label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">��� ����</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="prodName" name="prodName" value="${product.prodName}" readonly>
				</div>
		</div>
		
		<div class="form-group">
			<label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">�����ȸ��ID</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="prodName" name="prodName" value="${product.prodName}" readonly>
				</div>
		</div>

		<div class="form-group">
			<label for="ssn" class="col-sm-offset-1 col-sm-3 control-label">�׸� ����1</label>
			<div class="col-sm-4">
				<select name="paymentOption" class="form-control" >
					<option value="1" selected="selected">��</option>
					<option value="2">����</option>
					<option value="3">����</option>
					<option value="4">�ܿ�</option>
					<option value="5">����</option>
					<option value="6">�ϸ�</option>
					<option value="7">���</option>
					<option value="8">����</option>
					<option value="9">�ֿϵ�������</option>	
				</select>
			</div>
		</div>
		
		<div class="form-group">
			<label for="ssn" class="col-sm-offset-1 col-sm-3 control-label">�׸� ����2</label>
			<div class="col-sm-4">
				<select name="paymentOption" class="form-control" >
					<option value="1" selected="selected">��</option>
					<option value="2">����</option>
					<option value="3">����</option>
					<option value="4">�ܿ�</option>
					<option value="5">����</option>
					<option value="6">�ϸ�</option>
					<option value="7">���</option>
					<option value="8">����</option>
					<option value="9">�ֿϵ�������</option>	
				</select>
			</div>
		</div>

		<div class="form-group">
			<label for="ssn" class="col-sm-offset-1 col-sm-3 control-label">�ֺ� ȯ��1</label>
			<div class="col-sm-4">
				<select name="paymentOption" class="form-control" >
					<option value="1" selected="selected">���</option>
					<option value="2">ȣ��</option>
					<option value="3">��</option>
					<option value="4">�ٴ�</option>
					<option value="5">��</option>
					<option value="6">��</option>
					<option value="7">����</option>
					<option value="8">��</option>
				</select>
			</div>
		</div>

		<div class="form-group">
			<label for="ssn" class="col-sm-offset-1 col-sm-3 control-label">�ֺ� ȯ��2</label>
			<div class="col-sm-4">
				<select name="paymentOption" class="form-control" >
					<option value="1" selected="selected">���</option>
					<option value="2">ȣ��</option>
					<option value="3">��</option>
					<option value="4">�ٴ�</option>
					<option value="5">��</option>
					<option value="6">��</option>
					<option value="7">����</option>
					<option value="8">��</option>
				</select>
			</div>
		</div>	

		<div class="form-group">
			<label for="ssn" class="col-sm-offset-1 col-sm-3 control-label">� ����1</label>
			<div class="col-sm-4">
				<select name="paymentOption" class="form-control" >
					<option value="1" selected="selected">���</option>
					<option value="2">�� (3��~5��)</option>
					<option value="3">���� (6��~7��)</option>
					<option value="4">���� (9��~11��)</option>
					<option value="5">�ܿ� (12��~2��)</option>
					<option value="6">����</option>
					<option value="7">�ָ�</option>
				</select>
			</div>
		</div>
		
		<div class="form-group">
			<label for="ssn" class="col-sm-offset-1 col-sm-3 control-label">� ����2</label>
			<div class="col-sm-4">
				<select name="paymentOption" class="form-control" >
					<option value="1" selected="selected">���</option>
					<option value="2">�� (3��~5��)</option>
					<option value="3">���� (6��~7��)</option>
					<option value="4">���� (9��~11��)</option>
					<option value="5">�ܿ� (12��~2��)</option>
					<option value="6">����</option>
					<option value="7">�ָ�</option>
				</select>
			</div>
		</div>
		
		<div class="form-group">
			<label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �̸�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="prodName" name="prodName" value="${product.prodName}" readonly>
				</div>
		</div>

		<div class="form-group">
			<label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">ķ���� ��ȭ��ȣ</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="prodName" name="prodName" value="${product.prodName}" readonly>
				</div>
		</div>
		
		<div class="form-group">
			<label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �ּ�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="prodName" name="prodName" value="${product.prodName}" readonly>
				</div>
		</div>

		<div class="form-group">
			<label for="file" class="col-sm-offset-1 col-sm-3 control-label">ķ���� ��������</label>
				<div class="col-sm-4">
					<input type="file"  id="file" name="file">
				</div>
		</div>
		
		<div class="form-group">
			<label for="file" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �������1</label>
				<div class="col-sm-4">
					<input type="file"  id="file" name="file">
				</div>
		</div>
		
		<div class="form-group">
			<label for="file" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �������2</label>
				<div class="col-sm-4">
					<input type="file"  id="file" name="file">
				</div>
		</div>
		
		<div class="form-group">
			<label for="file" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �������3</label>
				<div class="col-sm-4">
					<input type="file"  id="file" name="file">
				</div>
		</div>
		
		<div class="form-group">
			<label for="file" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �������4</label>
				<div class="col-sm-4">
					<input type="file"  id="file" name="file">
				</div>
		</div>
		
		<div class="form-group">
			<label for="file" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �������5</label>
				<div class="col-sm-4">
					<input type="file"  id="file" name="file">
				</div>
		</div>
		
		<div class="form-group">
			<label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">ķ���� ���Ұ�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="prodName" name="prodName" value="${product.prodName}">
				</div>
		</div>
		
		<div class="form-group">
			<label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �󼼼Ұ�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="prodName" name="prodName" value="${product.prodName}">
				</div>
		</div>

		<div class="form-group">
			<div class="col-sm-offset-4  col-sm-4 text-center">
				<button type="button" class="btn btn-primary">���</button>
				<button type="button" class="btn btn-primary">�ӽ�����</button>
				<button type="button" class="btn btn-primary">����</button>
			</div>
		</div>

		</form>
		<!-- Form End -->
		
 	</div>
	<!-- Page End -->

</body>

</html>