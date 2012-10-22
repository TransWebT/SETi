<%@ page import="com.twt.seti.Application" %>



<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="application.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${applicationInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="application.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="2000" value="${applicationInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'screenshot', 'error')} ">
	<label for="screenshot">
		<g:message code="application.screenshot.label" default="Screenshot" />
		
	</label>
	<input type="file" id="screenshot" name="screenshot" />
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'owner', 'error')} ">
	<label for="owner">
		<g:message code="application.owner.label" default="Owner" />
		
	</label>
	<g:select id="owner" name="owner.id" from="${com.twt.seti.User.list()}" optionKey="id" value="${applicationInstance?.owner?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'displayOrder', 'error')} ">
	<label for="displayOrder">
		<g:message code="application.displayOrder.label" default="Display Order" />
		
	</label>
	<g:field name="displayOrder" type="number" value="${applicationInstance.displayOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'modifiedBy', 'error')} required">
	<label for="modifiedBy">
		<g:message code="application.modifiedBy.label" default="Modified By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="modifiedBy" name="modifiedBy.id" from="${com.twt.seti.User.list()}" optionKey="id" required="" value="${applicationInstance?.modifiedBy?.id}" class="many-to-one"/>
</div>

