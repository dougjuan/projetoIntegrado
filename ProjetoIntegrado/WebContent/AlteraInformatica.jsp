<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="To.ToInformatica"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>cerveja.biz - Alterar Informatica</title>

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
	
	<%ToInformatica toInformatica = (ToInformatica)request.getAttribute("informaticaTO"); %>

	<!-- Container Principal -->
	<div id="main" class="container">
		<h3 class="page-header">
			Alterar Informática #<%=toInformatica.getId() %></h3>
		<!-- Formulario para alteração de clientes -->
		<form action="manter_informatica.do" method="post">
			<!-- area de campos do form -->
			<input type="hidden" name="id" value="<%=toInformatica.getId() %>" />


			<div class="row">
				<div class="form-group col-md-12">
					<label for="nome">Nome</label> <input type="text"
						class="form-control" name="nome" id="nome" required
						maxlength="100" placeholder="nome completo"
						value="<%=toInformatica.getNome()%>">
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label for="dataInicio">Data início</label> <input type="text"
						class="form-control" name="dataInicio" id="dataInicio" required
						maxlength="100" placeholder="data início"
						value="<%=toInformatica.getDataInicio()%>">
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label for="dataTermino">Data término</label> <input type="text"
						class="form-control" name="dataTermino" id="dataTermino" required
						maxlength="100" placeholder="dataTermino"
						value="<%=toInformatica.getDataTermino()%>">
				</div>
			</div>


			<div class="row">
				<div class="form-group col-md-12">
					<label for="horario">Horário</label> <input type="text"
						class="form-control" name="horario" id="horario" required
						maxlength="100" placeholder="horario"
						value="<%=toInformatica.getHorario()%>">
				</div>
			</div>


			<div class="row">
				<div class="form-group col-md-12">
					<label for="vagas">Vagas</label> <input type="text" class="form-control"
						name="vagas" id="vagas" required maxlength="100" placeholder="vagas"
						value="<%=toInformatica.getVagas()%>">
				</div>
			</div>


			<div class="row">
				<div class="form-group col-md-12">
					<label for="valor">Valor</label> <input type="number"
						class="form-control" name="valor" id="valor" required maxlength="100"
						placeholder="valor" value="<%=toInformatica.getValor()%>">
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label for="numLab">Número Laboratório</label> <input type="text"
						class="form-control" name="numLab" id="numLab" required
						maxlength="100" placeholder="número laboratório"
						value="<%=toInformatica.getNumLab()%>">
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label for="regSoft">Registro de Software</label> <input type="text"
						class="form-control" name="regSoft" id="regSoft" required
						maxlength="100" placeholder="registro de software"
						value="<%=toInformatica.getRegSoft()%>">
				</div>
			</div>

			<div id="actions" class="row">
				<div class="col-md-12">
					<button type="submit" class="btn btn-primary" name="acao"
						value="Editar">Salvar</button>
					<a href="listar_informatica.html" class="btn btn-default">Cancelar</a>
				</div>
			</div>
		</form>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>