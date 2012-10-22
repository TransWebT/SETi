
<%@ page import="com.twt.seti.LifecyclePhase" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lifecyclePhase.label', default: 'LifecyclePhase')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-lifecyclePhase" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-lifecyclePhase" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list lifecyclePhase">
			
				<g:if test="${lifecyclePhaseInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="lifecyclePhase.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${lifecyclePhaseInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lifecyclePhaseInstance?.displayOrder}">
				<li class="fieldcontain">
					<span id="displayOrder-label" class="property-label"><g:message code="lifecyclePhase.displayOrder.label" default="Display Order" /></span>
					
						<span class="property-value" aria-labelledby="displayOrder-label"><g:fieldValue bean="${lifecyclePhaseInstance}" field="displayOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lifecyclePhaseInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="lifecyclePhase.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${lifecyclePhaseInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${lifecyclePhaseInstance?.modifiedBy}">
				<li class="fieldcontain">
					<span id="modifiedBy-label" class="property-label"><g:message code="lifecyclePhase.modifiedBy.label" default="Modified By" /></span>
					
						<span class="property-value" aria-labelledby="modifiedBy-label"><g:link controller="user" action="show" id="${lifecyclePhaseInstance?.modifiedBy?.id}">${lifecyclePhaseInstance?.modifiedBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${lifecyclePhaseInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="lifecyclePhase.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${lifecyclePhaseInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${lifecyclePhaseInstance?.id}" />
					<g:link class="edit" action="edit" id="${lifecyclePhaseInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
