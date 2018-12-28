<%@ page import="agenda_academica.Trabalho" %>



<div class="fieldcontain ${hasErrors(bean: trabalhoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="trabalho.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descricao" cols="40" rows="5" maxlength="1000" required="" value="${trabalhoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trabalhoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="trabalho.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${trabalhoInstance?.data}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: trabalhoInstance, field: 'nota', 'error')} required">
	<label for="nota">
		<g:message code="trabalho.nota.label" default="Nota" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nota" value="${fieldValue(bean: trabalhoInstance, field: 'nota')}" required=""/>

</div>

