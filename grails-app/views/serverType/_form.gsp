<%@ page import="com.twt.seti.ServerType" %>



<div class="fieldcontain ${hasErrors(bean: serverTypeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="serverType.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${serverTypeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serverTypeInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="serverType.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1000" value="${serverTypeInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serverTypeInstance, field: 'displayOrder', 'error')} ">
	<label for="displayOrder">
		<g:message code="serverType.displayOrder.label" default="Display Order" />
		
	</label>
	<g:field name="displayOrder" type="number" value="${serverTypeInstance.displayOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serverTypeInstance, field: 'modifiedBy', 'error')} required">
	<label for="modifiedBy">
		<g:message code="serverType.modifiedBy.label" default="Modified By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="modifiedBy" name="modifiedBy.id" from="${com.twt.seti.User.list()}" optionKey="id" required="" value="${serverTypeInstance?.modifiedBy?.id}" class="many-to-one"/>
</div>

