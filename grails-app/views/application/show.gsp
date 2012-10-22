
<%@ page import="com.twt.seti.Application" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'application.label', default: 'Application')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-application" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-application" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list application">
			
				<g:if test="${applicationInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="application.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${applicationInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicationInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="application.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${applicationInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicationInstance?.screenshot}">
				<li class="fieldcontain">
					<span id="screenshot-label" class="property-label"><g:message code="application.screenshot.label" default="Screenshot" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicationInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="application.owner.label" default="Owner" /></span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:link controller="user" action="show" id="${applicationInstance?.owner?.id}">${applicationInstance?.owner?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicationInstance?.displayOrder}">
				<li class="fieldcontain">
					<span id="displayOrder-label" class="property-label"><g:message code="application.displayOrder.label" default="Display Order" /></span>
					
						<span class="property-value" aria-labelledby="displayOrder-label"><g:fieldValue bean="${applicationInstance}" field="displayOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicationInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="application.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${applicationInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicationInstance?.modifiedBy}">
				<li class="fieldcontain">
					<span id="modifiedBy-label" class="property-label"><g:message code="application.modifiedBy.label" default="Modified By" /></span>
					
						<span class="property-value" aria-labelledby="modifiedBy-label"><g:link controller="user" action="show" id="${applicationInstance?.modifiedBy?.id}">${applicationInstance?.modifiedBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicationInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="application.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${applicationInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${applicationInstance?.id}" />
					<g:link class="edit" action="edit" id="${applicationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
