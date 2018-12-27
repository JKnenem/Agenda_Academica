<%@ page import="agendaAcademica.Aluno" %>



<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="aluno.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="100" required="" value="${alunoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="aluno.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cpf" type="number" value="${alunoInstance.cpf}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="aluno.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${alunoInstance.constraints.sexo.inList}" required="" value="${alunoInstance?.sexo}" valueMessagePrefix="aluno.sexo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="aluno.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="senha" cols="40" rows="5" maxlength="312" required="" value="${alunoInstance?.senha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="aluno.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="email" cols="40" rows="5" maxlength="312" required="" value="${alunoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'anotacoes', 'error')} ">
	<label for="anotacoes">
		<g:message code="aluno.anotacoes.label" default="Anotacoes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${alunoInstance?.anotacoes?}" var="a">
    <li><g:link controller="anotacao" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="anotacao" action="create" params="['aluno.id': alunoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'anotacao.label', default: 'Anotacao')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'materias', 'error')} ">
	<label for="materias">
		<g:message code="aluno.materias.label" default="Materias" />
		
	</label>
	<g:select name="materias" from="${agendaAcademica.Materia.list()}" multiple="multiple" optionKey="id" size="5" value="${alunoInstance?.materias*.id}" class="many-to-many"/>

</div>

