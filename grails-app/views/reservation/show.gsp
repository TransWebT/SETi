
<%@ page import="com.twt.seti.Reservation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'reservation.label', default: 'Reservation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-reservation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-reservation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list reservation">
			
				<g:if test="${reservationInstance?.reservationTag}">
				<li class="fieldcontain">
					<span id="reservationTag-label" class="property-label"><g:message code="reservation.reservationTag.label" default="Reservation Tag" /></span>
					
						<span class="property-value" aria-labelledby="reservationTag-label"><g:fieldValue bean="${reservationInstance}" field="reservationTag"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservationInstance?.requester}">
				<li class="fieldcontain">
					<span id="requester-label" class="property-label"><g:message code="reservation.requester.label" default="Requester" /></span>
					
						<span class="property-value" aria-labelledby="requester-label"><g:link controller="user" action="show" id="${reservationInstance?.requester?.id}">${reservationInstance?.requester?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservationInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="reservation.comments.label" default="Comments" /></span>
					
						<span class="property-value" aria-labelledby="comments-label"><g:fieldValue bean="${reservationInstance}" field="comments"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservationInstance?.application}">
				<li class="fieldcontain">
					<span id="application-label" class="property-label"><g:message code="reservation.application.label" default="Application" /></span>
					
						<span class="property-value" aria-labelledby="application-label"><g:link controller="application" action="show" id="${reservationInstance?.application?.id}">${reservationInstance?.application?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservationInstance?.release}">
				<li class="fieldcontain">
					<span id="release-label" class="property-label"><g:message code="reservation.release.label" default="Release" /></span>
					
						<span class="property-value" aria-labelledby="release-label"><g:link controller="release" action="show" id="${reservationInstance?.release?.id}">${reservationInstance?.release?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservationInstance?.lifecyclePhase}">
				<li class="fieldcontain">
					<span id="lifecyclePhase-label" class="property-label"><g:message code="reservation.lifecyclePhase.label" default="Lifecycle Phase" /></span>
					
						<span class="property-value" aria-labelledby="lifecyclePhase-label"><g:link controller="lifecyclePhase" action="show" id="${reservationInstance?.lifecyclePhase?.id}">${reservationInstance?.lifecyclePhase?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservationInstance?.server}">
				<li class="fieldcontain">
					<span id="server-label" class="property-label"><g:message code="reservation.server.label" default="Server" /></span>
					
						<span class="property-value" aria-labelledby="server-label"><g:link controller="server" action="show" id="${reservationInstance?.server?.id}">${reservationInstance?.server?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservationInstance?.service}">
				<li class="fieldcontain">
					<span id="service-label" class="property-label"><g:message code="reservation.service.label" default="Service" /></span>
					
						<span class="property-value" aria-labelledby="service-label"><g:link controller="service" action="show" id="${reservationInstance?.service?.id}">${reservationInstance?.service?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservationInstance?.startDatetime}">
				<li class="fieldcontain">
					<span id="startDatetime-label" class="property-label"><g:message code="reservation.startDatetime.label" default="Start Datetime" /></span>
					
						<span class="property-value" aria-labelledby="startDatetime-label"><g:formatDate date="${reservationInstance?.startDatetime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservationInstance?.endDatetime}">
				<li class="fieldcontain">
					<span id="endDatetime-label" class="property-label"><g:message code="reservation.endDatetime.label" default="End Datetime" /></span>
					
						<span class="property-value" aria-labelledby="endDatetime-label"><g:formatDate date="${reservationInstance?.endDatetime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservationInstance?.displayOrder}">
				<li class="fieldcontain">
					<span id="displayOrder-label" class="property-label"><g:message code="reservation.displayOrder.label" default="Display Order" /></span>
					
						<span class="property-value" aria-labelledby="displayOrder-label"><g:fieldValue bean="${reservationInstance}" field="displayOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservationInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="reservation.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${reservationInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservationInstance?.modifiedBy}">
				<li class="fieldcontain">
					<span id="modifiedBy-label" class="property-label"><g:message code="reservation.modifiedBy.label" default="Modified By" /></span>
					
						<span class="property-value" aria-labelledby="modifiedBy-label"><g:link controller="user" action="show" id="${reservationInstance?.modifiedBy?.id}">${reservationInstance?.modifiedBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservationInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="reservation.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${reservationInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${reservationInstance?.id}" />
					<g:link class="edit" action="edit" id="${reservationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
