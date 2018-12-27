
<%@ page import="agenda_academica.Prova" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prova.label', default: 'Prova')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-prova" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-prova" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'prova.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'prova.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="nota" title="${message(code: 'prova.nota.label', default: 'Nota')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${provaInstanceList}" status="i" var="provaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${provaInstance.id}">${fieldValue(bean: provaInstance, field: "descricao")}</g:link></td>
					
						<td><g:formatDate date="${provaInstance.data}" /></td>
					
						<td>${fieldValue(bean: provaInstance, field: "nota")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${provaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
