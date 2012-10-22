
<%@ page import="com.twt.seti.ServiceType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'serviceType.label', default: 'ServiceType')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-serviceType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-serviceType" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list serviceType">
			
				<g:if test="${serviceTypeInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="serviceType.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${serviceTypeInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceTypeInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="serviceType.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${serviceTypeInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceTypeInstance?.displayOrder}">
				<li class="fieldcontain">
					<span id="displayOrder-label" class="property-label"><g:message code="serviceType.displayOrder.label" default="Display Order" /></span>
					
						<span class="property-value" aria-labelledby="displayOrder-label"><g:fieldValue bean="${serviceTypeInstance}" field="displayOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceTypeInstance?.modifiedBy}">
				<li class="fieldcontain">
					<span id="modifiedBy-label" class="property-label"><g:message code="serviceType.modifiedBy.label" default="Modified By" /></span>
					
						<span class="property-value" aria-labelledby="modifiedBy-label"><g:link controller="user" action="show" id="${serviceTypeInstance?.modifiedBy?.id}">${serviceTypeInstance?.modifiedBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceTypeInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="serviceType.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${serviceTypeInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceTypeInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="serviceType.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${serviceTypeInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${serviceTypeInstance?.id}" />
					<g:link class="edit" action="edit" id="${serviceTypeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
