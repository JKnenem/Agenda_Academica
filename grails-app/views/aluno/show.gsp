
<%@ page import="agendaAcademica.Aluno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aluno.label', default: 'Aluno')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-aluno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-aluno" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list aluno">
			
				<g:if test="${alunoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="aluno.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${alunoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="aluno.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${alunoInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="aluno.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${alunoInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.senha}">
				<li class="fieldcontain">
					<span id="senha-label" class="property-label"><g:message code="aluno.senha.label" default="Senha" /></span>
					
						<span class="property-value" aria-labelledby="senha-label"><g:fieldValue bean="${alunoInstance}" field="senha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="aluno.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${alunoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.anotacoes}">
				<li class="fieldcontain">
					<span id="anotacoes-label" class="property-label"><g:message code="aluno.anotacoes.label" default="Anotacoes" /></span>
					
						<g:each in="${alunoInstance.anotacoes}" var="a">
						<span class="property-value" aria-labelledby="anotacoes-label"><g:link controller="anotacao" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.materias}">
				<li class="fieldcontain">
					<span id="materias-label" class="property-label"><g:message code="aluno.materias.label" default="Materias" /></span>
					
						<g:each in="${alunoInstance.materias}" var="m">
						<span class="property-value" aria-labelledby="materias-label"><g:link controller="materia" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:alunoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${alunoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
