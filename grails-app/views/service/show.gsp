
<%@ page import="com.twt.seti.Service" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'service.label', default: 'Service')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-service" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-service" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list service">
			
				<g:if test="${serviceInstance?.instanceName}">
				<li class="fieldcontain">
					<span id="instanceName-label" class="property-label"><g:message code="service.instanceName.label" default="Instance Name" /></span>
					
						<span class="property-value" aria-labelledby="instanceName-label"><g:fieldValue bean="${serviceInstance}" field="instanceName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.serviceType}">
				<li class="fieldcontain">
					<span id="serviceType-label" class="property-label"><g:message code="service.serviceType.label" default="Service Type" /></span>
					
						<span class="property-value" aria-labelledby="serviceType-label"><g:link controller="serviceType" action="show" id="${serviceInstance?.serviceType?.id}">${serviceInstance?.serviceType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.port}">
				<li class="fieldcontain">
					<span id="port-label" class="property-label"><g:message code="service.port.label" default="Port" /></span>
					
						<span class="property-value" aria-labelledby="port-label"><g:fieldValue bean="${serviceInstance}" field="port"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="service.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${serviceInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.displayOrder}">
				<li class="fieldcontain">
					<span id="displayOrder-label" class="property-label"><g:message code="service.displayOrder.label" default="Display Order" /></span>
					
						<span class="property-value" aria-labelledby="displayOrder-label"><g:fieldValue bean="${serviceInstance}" field="displayOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="service.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${serviceInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.modifiedBy}">
				<li class="fieldcontain">
					<span id="modifiedBy-label" class="property-label"><g:message code="service.modifiedBy.label" default="Modified By" /></span>
					
						<span class="property-value" aria-labelledby="modifiedBy-label"><g:link controller="user" action="show" id="${serviceInstance?.modifiedBy?.id}">${serviceInstance?.modifiedBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="service.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${serviceInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${serviceInstance?.id}" />
					<g:link class="edit" action="edit" id="${serviceInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
