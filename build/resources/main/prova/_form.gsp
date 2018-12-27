<%@ page import="agendaAcademica.Prova" %>



<div class="fieldcontain ${hasErrors(bean: provaInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="prova.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descricao" cols="40" rows="5" maxlength="1000" required="" value="${provaInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: provaInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="prova.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${provaInstance?.data}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: provaInstance, field: 'nota', 'error')} required">
	<label for="nota">
		<g:message code="prova.nota.label" default="Nota" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nota" value="${fieldValue(bean: provaInstance, field: 'nota')}" required=""/>

</div>

