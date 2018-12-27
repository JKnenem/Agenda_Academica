<%@ page import="agenda_academica.Grupo" %>



<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="grupo.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="100" required="" value="${grupoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="grupo.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descricao" cols="40" rows="5" maxlength="1000" required="" value="${grupoInstance?.descricao}"/>

</div>

