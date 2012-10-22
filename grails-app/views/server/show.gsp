
<%@ page import="com.twt.seti.Server" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'server.label', default: 'Server')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-server" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-server" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list server">
			
				<g:if test="${serverInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="server.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${serverInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serverInstance?.ipAddress}">
				<li class="fieldcontain">
					<span id="ipAddress-label" class="property-label"><g:message code="server.ipAddress.label" default="Ip Address" /></span>
					
						<span class="property-value" aria-labelledby="ipAddress-label"><g:fieldValue bean="${serverInstance}" field="ipAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serverInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="server.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${serverInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serverInstance?.serverType}">
				<li class="fieldcontain">
					<span id="serverType-label" class="property-label"><g:message code="server.serverType.label" default="Server Type" /></span>
					
						<span class="property-value" aria-labelledby="serverType-label"><g:link controller="serverType" action="show" id="${serverInstance?.serverType?.id}">${serverInstance?.serverType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${serverInstance?.displayOrder}">
				<li class="fieldcontain">
					<span id="displayOrder-label" class="property-label"><g:message code="server.displayOrder.label" default="Display Order" /></span>
					
						<span class="property-value" aria-labelledby="displayOrder-label"><g:fieldValue bean="${serverInstance}" field="displayOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serverInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="server.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${serverInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${serverInstance?.modifiedBy}">
				<li class="fieldcontain">
					<span id="modifiedBy-label" class="property-label"><g:message code="server.modifiedBy.label" default="Modified By" /></span>
					
						<span class="property-value" aria-labelledby="modifiedBy-label"><g:link controller="user" action="show" id="${serverInstance?.modifiedBy?.id}">${serverInstance?.modifiedBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${serverInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="server.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${serverInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${serverInstance?.services}">
				<li class="fieldcontain">
					<span id="services-label" class="property-label"><g:message code="server.services.label" default="Services" /></span>
					
						<g:each in="${serverInstance.services}" var="s">
						<span class="property-value" aria-labelledby="services-label"><g:link controller="service" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${serverInstance?.id}" />
					<g:link class="edit" action="edit" id="${serverInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
