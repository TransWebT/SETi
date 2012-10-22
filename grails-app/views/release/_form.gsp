<%@ page import="com.twt.seti.Release" %>



<div class="fieldcontain ${hasErrors(bean: releaseInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="release.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${releaseInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: releaseInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="release.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1000" value="${releaseInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: releaseInstance, field: 'displayOrder', 'error')} ">
	<label for="displayOrder">
		<g:message code="release.displayOrder.label" default="Display Order" />
		
	</label>
	<g:field name="displayOrder" type="number" value="${releaseInstance.displayOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: releaseInstance, field: 'modifiedBy', 'error')} required">
	<label for="modifiedBy">
		<g:message code="release.modifiedBy.label" default="Modified By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="modifiedBy" name="modifiedBy.id" from="${com.twt.seti.User.list()}" optionKey="id" required="" value="${releaseInstance?.modifiedBy?.id}" class="many-to-one"/>
</div>

