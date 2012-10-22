
<%@ page import="com.twt.seti.Reservation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'reservation.label', default: 'Reservation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-reservation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-reservation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="reservationTag" title="${message(code: 'reservation.reservationTag.label', default: 'Reservation Tag')}" />
					
						<th><g:message code="reservation.requester.label" default="Requester" /></th>
					
						<g:sortableColumn property="comments" title="${message(code: 'reservation.comments.label', default: 'Comments')}" />
					
						<th><g:message code="reservation.application.label" default="Application" /></th>
					
						<th><g:message code="reservation.release.label" default="Release" /></th>
					
						<th><g:message code="reservation.lifecyclePhase.label" default="Lifecycle Phase" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${reservationInstanceList}" status="i" var="reservationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${reservationInstance.id}">${fieldValue(bean: reservationInstance, field: "reservationTag")}</g:link></td>
					
						<td>${fieldValue(bean: reservationInstance, field: "requester")}</td>
					
						<td>${fieldValue(bean: reservationInstance, field: "comments")}</td>
					
						<td>${fieldValue(bean: reservationInstance, field: "application")}</td>
					
						<td>${fieldValue(bean: reservationInstance, field: "release")}</td>
					
						<td>${fieldValue(bean: reservationInstance, field: "lifecyclePhase")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${reservationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
