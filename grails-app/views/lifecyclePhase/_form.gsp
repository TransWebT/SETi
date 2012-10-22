<%@ page import="com.twt.seti.LifecyclePhase" %>



<div class="fieldcontain ${hasErrors(bean: lifecyclePhaseInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="lifecyclePhase.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${lifecyclePhaseInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: lifecyclePhaseInstance, field: 'displayOrder', 'error')} ">
	<label for="displayOrder">
		<g:message code="lifecyclePhase.displayOrder.label" default="Display Order" />
		
	</label>
	<g:field name="displayOrder" type="number" value="${lifecyclePhaseInstance.displayOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: lifecyclePhaseInstance, field: 'modifiedBy', 'error')} required">
	<label for="modifiedBy">
		<g:message code="lifecyclePhase.modifiedBy.label" default="Modified By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="modifiedBy" name="modifiedBy.id" from="${com.twt.seti.User.list()}" optionKey="id" required="" value="${lifecyclePhaseInstance?.modifiedBy?.id}" class="many-to-one"/>
</div>

