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
	       <h1 class=" text-info">ķ���� ���</h1>
	    </div>

		<!-- Form Start -->
		<form class="form-horizontal">
		
		<div class="form-group">
			<label for="campRegDate" class="col-sm-offset-1 col-sm-3 control-label">��� ����</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="campRegDate" name="campRegDate" value="${camp.campRegDate}" readonly>
				</div>
		</div>
		
		<div class="form-group">
			<label for="businessUser" class="col-sm-offset-1 col-sm-3 control-label">�����ȸ��ID</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="businessUser" name="businessUser" value="${user.id}" readonly>
				</div>
		</div>

		<div class="form-group">
			<label for="campTheme1" class="col-sm-offset-1 col-sm-3 control-label">�׸� ����1</label>
			<div class="col-sm-4">
				<select name="campTheme1" class="form-control" >
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
			<label for="campTheme2" class="col-sm-offset-1 col-sm-3 control-label">�׸� ����2</label>
			<div class="col-sm-4">
				<select name="campTheme2" class="form-control" >
					<option value="1">��</option>
					<option value="2">����</option>
					<option value="3">����</option>
					<option value="4">�ܿ�</option>
					<option value="5" selected="selected">����</option>
					<option value="6">�ϸ�</option>
					<option value="7">���</option>
					<option value="8">����</option>
					<option value="9">�ֿϵ�������</option>	
				</select>
			</div>
		</div>

		<div class="form-group">
			<label for="campNature1" class="col-sm-offset-1 col-sm-3 control-label">�ֺ� ȯ��1</label>
			<div class="col-sm-4">
				<select name="campNature1" class="form-control" >
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
			<label for="campNature2" class="col-sm-offset-1 col-sm-3 control-label">�ֺ� ȯ��2</label>
			<div class="col-sm-4">
				<select name="campNature2" class="form-control" >
					<option value="1">���</option>
					<option value="2">ȣ��</option>
					<option value="3">��</option>
					<option value="4">�ٴ�</option>
					<option value="5" selected="selected">��</option>
					<option value="6">��</option>
					<option value="7">����</option>
					<option value="8">��</option>
				</select>
			</div>
		</div>	

		<div class="form-group">
			<label for="campOperation1" class="col-sm-offset-1 col-sm-3 control-label">� ����1</label>
			<div class="col-sm-4">
				<select name="campOperation1" class="form-control" >
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
			<label for="campOperation2" class="col-sm-offset-1 col-sm-3 control-label">� ����2</label>
			<div class="col-sm-4">
				<select name="campOperation2" class="form-control" >
					<option value="1">���</option>
					<option value="2" selected="selected">�� (3��~5��)</option>
					<option value="3">���� (6��~7��)</option>
					<option value="4">���� (9��~11��)</option>
					<option value="5">�ܿ� (12��~2��)</option>
					<option value="6">����</option>
					<option value="7">�ָ�</option>
				</select>
			</div>
		</div>
		
		<div class="form-group">
			<label for="campName" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �̸�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="campName" name="campName" value="${user.campName}" readonly>
				</div>
		</div>

		<div class="form-group">
			<label for="campCall" class="col-sm-offset-1 col-sm-3 control-label">ķ���� ��ȭ��ȣ</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="campCall" name="campCall" value="${user.campCall}" readonly>
				</div>
		</div>
		
		<div class="form-group">
			<label for="campAddr" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �ּ�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="campAddr" name="campAddr" value="${user.addr}" readonly>
				</div>
		</div>

		<!-- 
		<div class="form-group">
			<label for="campMapImg" class="col-sm-offset-1 col-sm-3 control-label">ķ���� ��������</label>
				<div class="col-sm-4">
					<input type="file"  id="campMapImg" name="campMapImg">
				</div>
		</div>
		
		<div class="form-group">
			<label for="campImg1" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �������1</label>
				<div class="col-sm-4">
					<input type="campImg1"  id="file" name="campImg1">
				</div>
		</div>
		
		<div class="form-group">
			<label for="campImg2" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �������2</label>
				<div class="col-sm-4">
					<input type="file"  id="campImg2" name="campImg2">
				</div>
		</div>
		
		<div class="form-group">
			<label for="campImg3" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �������3</label>
				<div class="col-sm-4">
					<input type="file"  id="campImg3" name="campImg3">
				</div>
		</div>
		
		<div class="form-group">
			<label for="campImg4" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �������4</label>
				<div class="col-sm-4">
					<input type="file"  id="campImg4" name="campImg4">
				</div>
		</div>
		
		<div class="form-group">
			<label for="campImg5" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �������5</label>
				<div class="col-sm-4">
					<input type="file"  id="campImg5" name="campImg5">
				</div>
		</div>		
		-->
		
		<div class="form-group">
			<label for="campSummery" class="col-sm-offset-1 col-sm-3 control-label">ķ���� ���Ұ�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="campSummery" name="campSummery" value="" placeholder="��� �Ұ��� �Է����ּ���">
				</div>
		</div>
		
		<div class="form-group">
			<label for="campDetail" class="col-sm-offset-1 col-sm-3 control-label">ķ���� �󼼼Ұ�</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="campDetail" name="campDetail" value="" placeholder="�� �Ұ��� �Է����ּ���">
				</div>
		</div>

		<div class="form-group">
			<div class="col-sm-offset-4  col-sm-4 text-center">
				<button id="cancle" type="button" class="btn btn-primary">���</button>
				<button id="tempsave"type="button" class="btn btn-primary">�ӽ�����</button>
				<button id="save" type="button" class="btn btn-primary">����</button>
			</div>
		</div>

		</form>
		<!-- Form End -->
		
 	</div>
	<!-- Page End -->

</body>

</html>