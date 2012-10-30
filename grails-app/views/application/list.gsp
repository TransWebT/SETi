
<%@ page import="com.twt.seti.Application" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="${session?.CurrentLayout}">
		<g:set var="entityName" value="${message(code: 'application.label', default: 'Application')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-application" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-application" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'application.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'application.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="screenshot" title="${message(code: 'application.screenshot.label', default: 'Screenshot')}" />
					
						<th><g:message code="application.owner.label" default="Owner" /></th>
					
						<g:sortableColumn property="displayOrder" title="${message(code: 'application.displayOrder.label', default: 'Display Order')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'application.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${applicationInstanceList}" status="i" var="applicationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${applicationInstance.id}">${fieldValue(bean: applicationInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: applicationInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: applicationInstance, field: "screenshot")}</td>
					
						<td>${fieldValue(bean: applicationInstance, field: "owner")}</td>
					
						<td>${fieldValue(bean: applicationInstance, field: "displayOrder")}</td>
					
						<td><g:formatDate date="${applicationInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${applicationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
