<%@ page import="agenda_academica.Materia" %>



<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="materia.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="100" required="" value="${materiaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'professor', 'error')} required">
	<label for="professor">
		<g:message code="materia.professor.label" default="Professor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="professor" maxlength="100" required="" value="${materiaInstance?.professor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'provas', 'error')} ">
	<label for="provas">
		<g:message code="materia.provas.label" default="Provas" />
		
	</label>
	<g:select name="provas" from="${agendaAcademica.Prova.list()}" multiple="multiple" optionKey="id" size="5" value="${materiaInstance?.provas*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'trabalhos', 'error')} ">
	<label for="trabalhos">
		<g:message code="materia.trabalhos.label" default="Trabalhos" />
		
	</label>
	<g:select name="trabalhos" from="${agendaAcademica.Trabalho.list()}" multiple="multiple" optionKey="id" size="5" value="${materiaInstance?.trabalhos*.id}" class="many-to-many"/>

</div>

