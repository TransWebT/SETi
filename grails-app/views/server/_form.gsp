<%@ page import="com.twt.seti.Server" %>



<div class="fieldcontain ${hasErrors(bean: serverInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="server.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${serverInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serverInstance, field: 'ipAddress', 'error')} required">
	<label for="ipAddress">
		<g:message code="server.ipAddress.label" default="Ip Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ipAddress" required="" value="${serverInstance?.ipAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serverInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="server.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1000" value="${serverInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serverInstance, field: 'serverType', 'error')} required">
	<label for="serverType">
		<g:message code="server.serverType.label" default="Server Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="serverType" name="serverType.id" from="${com.twt.seti.ServerType.list()}" optionKey="id" required="" value="${serverInstance?.serverType?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serverInstance, field: 'displayOrder', 'error')} ">
	<label for="displayOrder">
		<g:message code="server.displayOrder.label" default="Display Order" />
		
	</label>
	<g:field name="displayOrder" type="number" value="${serverInstance.displayOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serverInstance, field: 'modifiedBy', 'error')} required">
	<label for="modifiedBy">
		<g:message code="server.modifiedBy.label" default="Modified By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="modifiedBy" name="modifiedBy.id" from="${com.twt.seti.User.list()}" optionKey="id" required="" value="${serverInstance?.modifiedBy?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serverInstance, field: 'services', 'error')} ">
	<label for="services">
		<g:message code="server.services.label" default="Services" />
		
	</label>
	<g:select name="services" from="${com.twt.seti.Service.list()}" multiple="multiple" optionKey="id" size="5" value="${serverInstance?.services*.id}" class="many-to-many"/>
</div>

