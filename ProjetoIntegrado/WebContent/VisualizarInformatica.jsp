<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="To.ToInformatica"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>cerveja.biz - Visualizar Informática</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>

<body>
 <!-- Barra superior com os menus de navegação -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">cerveja.biz</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="listar_alunos.html">Alunos</a></li>
					<li><a href="listar_artes.html">Artes</a></li>
					<li><a href="listar_informatica.html">Informática</a></li>
				</ul>
			</div>
		</div>
	</nav>


	<%
		ToInformatica toInformatica = (ToInformatica) request.getAttribute("informaticaTO");
	%>
	<!-- Modal -->
	<div class="modal fade" id="delete-modal" tabindex="-1" role="dialog"
		aria-labelledby="modalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Fechar">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="modalLabel">Excluir Informática</h4>
				</div>
				<div class="modal-body">Deseja realmente excluir este curso?
				</div>
				<div class="modal-footer">
					<form action="manter_informatica.do" method="post">
						<input type="hidden" name="id" value="<%=toInformatica.getId()%>" />
						<button type="submit" class="btn btn-primary" name="acao"
							value="Excluir">Sim</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- /.modal -->

	<!-- Container Principal -->
	<div id="main" class="container">
		<h3 class="page-header">
			Visualizar Informática #<%=toInformatica.getId()%></h3>


		<div class="row">
			<div class="col-md-6">
				<p>
					<strong>Nome</strong>
				</p>
				<p>
					<%=toInformatica.getNome()%>
				</p>
			</div>




			<div class="col-md-6">
				<p>
					<strong>Data Início</strong>
				</p>
				<p>
					<%=toInformatica.getDataInicio()%>
				</p>
			</div>



			<div class="col-md-6">
				<p>
					<strong>Data Término</strong>
				</p>
				<p>
					<%=toInformatica.getDataTermino()%>
				</p>
			</div>


			<div class="col-md-6">
				<p>
					<strong>Horário</strong>
				</p>
				<p>
					<%=toInformatica.getHorario()%>
				</p>
			</div>


			<div class="col-md-6">
				<p>
					<strong>Vagas</strong>
				</p>
				<p>
					<%=toInformatica.getVagas()%>
				</p>
			</div>


			<div class="col-md-6">
				<p>
					<strong>Valor</strong>
				</p>
				<p>
					<%=toInformatica.getValor()%>
				</p>
			</div>


			<div class="col-md-6">
				<p>
					<strong>Número laboratório</strong>
				</p>
				<p>
					<%=toInformatica.getNumLab()%>
				</p>
			</div>


			<div class="col-md-6">
				<p>
					<strong>Registro de software</strong>
				</p>
				<p>
					<%=toInformatica.getRegSoft()%>
				</p>
			</div>
		</div>


		<hr />
		<div id="actions" class="row">
			<div class="col-md-12">
				<a href="manter_informatica.do?acao=Atualizar&id=<%=toInformatica.getId()%>"
					class="btn btn-primary">Editar</a> <a href="#"
					class="btn btn-danger" data-toggle="modal"
					data-target="#delete-modal">Excluir</a> <a
					href="listar_informatica.html" class="btn btn-default">Voltar</a>
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>