<%@ page import="com.twt.seti.Service" %>



<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'instanceName', 'error')} required">
	<label for="instanceName">
		<g:message code="service.instanceName.label" default="Instance Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="instanceName" required="" value="${serviceInstance?.instanceName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'serviceType', 'error')} required">
	<label for="serviceType">
		<g:message code="service.serviceType.label" default="Service Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="serviceType" name="serviceType.id" from="${com.twt.seti.ServiceType.list()}" optionKey="id" required="" value="${serviceInstance?.serviceType?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'port', 'error')} ">
	<label for="port">
		<g:message code="service.port.label" default="Port" />
		
	</label>
	<g:textField name="port" value="${serviceInstance?.port}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="service.notes.label" default="Notes" />
		
	</label>
	<g:textArea name="notes" cols="40" rows="5" maxlength="2000" value="${serviceInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'displayOrder', 'error')} ">
	<label for="displayOrder">
		<g:message code="service.displayOrder.label" default="Display Order" />
		
	</label>
	<g:field name="displayOrder" type="number" value="${serviceInstance.displayOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'modifiedBy', 'error')} required">
	<label for="modifiedBy">
		<g:message code="service.modifiedBy.label" default="Modified By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="modifiedBy" name="modifiedBy.id" from="${com.twt.seti.User.list()}" optionKey="id" required="" value="${serviceInstance?.modifiedBy?.id}" class="many-to-one"/>
</div>

