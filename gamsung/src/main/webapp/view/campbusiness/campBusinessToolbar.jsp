<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<script type="text/javascript">

	$(function() {	
			
		$("#main").on("click" , function() {
			$(self.location).attr("href","/main.jsp");
		}); 		
				
	 	$("a:contains('ķ�������� ��ȸ')").on("click" , function() {

		}); 
	
	 	$("a:contains('ķ�������� ���')").on("click" , function() {
	 		$(self.location).attr("href","/view/campbusiness/addCamp.jsp");
		}); 
		 
		$("a:contains('�ֿ�ü� ���')" ).on("click" , function() {

		});
		
	 	$("a:contains('�ֿ�ü� ���')" ).on("click" , function() {
	 		$(self.location).attr("href","/view/campbusiness/addMainSite.jsp");
		}); 
	 	
	 	$("a:contains('�ΰ��ü� ���')" ).on("click" , function() {

		}); 
	 	
	 	$("a:contains('�ΰ��ü� ���')" ).on("click" , function() {
	 		$(self.location).attr("href","/view/campbusiness/addSubSite.jsp");	
		}); 
	 	
	 	$("a:contains('�������')" ).on("click" , function() {
	
		}); 
	 	
	 	$("a:contains('�������')" ).on("click" , function() {
	 		
		}); 
	 	
	 	$("a:contains('ķ���� ��������')" ).on("click" , function() {

		}); 
	 		 	
	 	$("a:contains('ķ���� Q&A')").on("click" , function() {
	 		
		});
	 	
		$("a:contains('ķ��')").on("click" , function() {

		}); 
		 	
	 	$("a:contains('����Ʈ ������')").on("click" , function() {
	 		
		});	 	
	 	
	 	$("a:contains('����Ʈ ����')").on("click" , function() {

		});
	 	
	 	$("a:contains('���� ����')" ).on("click" , function() {
	 	
		}); 
	 	
	 	$("a:contains('�� ����')" ).on("click" , function() {

		});

	 	$("a:contains('�α׾ƿ�')" ).on("click" , function() {

		});
	 	
	 	$("a:contains('Ż���ϱ�')" ).on("click" , function() {
	 	
		});
	 	
	 	
	});
		
</script>  
	
<style>
	
	.navbar.navbar-inverse.navbar-fixed-top {
   		background-color: green;
	}
	
</style>


<!-- ToolBar Start /////////////////////////////////////-->
<div class="navbar  navbar-inverse navbar-fixed-top">
	
	<div class="container">
	       
		<a class="navbar-brand" id="main">
			<img src="/images/logo.png" alt="Logo" class="img-rounded" width="100%" align="top"/>
		</a>
		
		<!-- toolBar Button Start //////////////////////// -->
		<div class="navbar-header">
		    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#target">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		    </button>
		</div>
		<!-- toolBar Button End //////////////////////// -->
		
	    <!--  dropdown hover Start -->
	    	    

		<div class="collapse navbar-collapse" id="target" 
			data-hover="dropdown" data-animations="fadeInDownNew fadeInRightNew fadeInUpNew fadeInLeftNew">
	         
		<!-- Tool Bar �� �پ��ϰ� ����ϸ�.... -->
		<ul class="nav navbar-nav">

	    	<li class="dropdown">
				<a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
					<span>[ķ�����̸�]</span>
					<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" style="right:0;">
						<li><a href="#">ķ���� �̸�</a></li>
						<br>
						<li><a href="#">���� ����Ʈ</a></li>
						<li><a href="#">����Ʈ ����</a></li>
						<li><a href="#">���� ����</a></li>
						<br>
						<li><a href="#">�� ����</a></li>
						<br>
						<li><a href="#">�α׾ƿ�</a></li>
						<br>						
						<li><a href="#">Ż���ϱ�</a></li>					
					</ul>
			</li> 			
	
			<li class="dropdown">
				<a  href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
					<span>ķ���� ����</span>
					<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="#">ķ�������� ��ȸ</a></li>
						<li><a href="#">ķ�������� ���</a></li>
						<br>
	                    <li><a href="#">�ֿ�ü� ���</a></li>
						<li><a href="#">�ֿ�ü� ���</a></li>
						<br>
						<li><a href="#">�ΰ��ü� ���</a></li>
						<li><a href="#">�ΰ��ü� ���</a></li>
					</ul>
			</li>
			
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">����Ʈ ������</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">ķ��</a></li>
			</ul>		   
			
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">ķ���� Q&A</a></li>
			</ul>				
			
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">ķ���� ��������</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">�������</a></li>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">�������</a></li>
			</ul>
			
		</div>
		<!-- dropdown hover END -->	       
	    
	</div>
</div>
