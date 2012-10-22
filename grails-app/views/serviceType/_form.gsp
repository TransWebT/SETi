<%@ page import="com.twt.seti.ServiceType" %>



<div class="fieldcontain ${hasErrors(bean: serviceTypeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="serviceType.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${serviceTypeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceTypeInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="serviceType.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1000" value="${serviceTypeInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceTypeInstance, field: 'displayOrder', 'error')} ">
	<label for="displayOrder">
		<g:message code="serviceType.displayOrder.label" default="Display Order" />
		
	</label>
	<g:field name="displayOrder" type="number" value="${serviceTypeInstance.displayOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceTypeInstance, field: 'modifiedBy', 'error')} required">
	<label for="modifiedBy">
		<g:message code="serviceType.modifiedBy.label" default="Modified By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="modifiedBy" name="modifiedBy.id" from="${com.twt.seti.User.list()}" optionKey="id" required="" value="${serviceTypeInstance?.modifiedBy?.id}" class="many-to-one"/>
</div>

