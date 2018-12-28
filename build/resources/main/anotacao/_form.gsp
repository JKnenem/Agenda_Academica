<%@ page import="agenda_academica.Anotacao" %>



<div class="fieldcontain ${hasErrors(bean: anotacaoInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="anotacao.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" maxlength="100" required="" value="${anotacaoInstance?.titulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: anotacaoInstance, field: 'texto', 'error')} required">
	<label for="texto">
		<g:message code="anotacao.texto.label" default="Texto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="texto" cols="40" rows="5" maxlength="1000" required="" value="${anotacaoInstance?.texto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: anotacaoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="anotacao.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${anotacaoInstance?.data}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: anotacaoInstance, field: 'aluno', 'error')} required">
	<label for="aluno">
		<g:message code="anotacao.aluno.label" default="Aluno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aluno" name="aluno.id" from="${agendaAcademica.Aluno.list()}" optionKey="id" required="" value="${anotacaoInstance?.aluno?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: anotacaoInstance, field: 'grupo', 'error')} required">
	<label for="grupo">
		<g:message code="anotacao.grupo.label" default="Grupo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="grupo" name="grupo.id" from="${agendaAcademica.Grupo.list()}" optionKey="id" required="" value="${anotacaoInstance?.grupo?.id}" class="many-to-one"/>

</div>

