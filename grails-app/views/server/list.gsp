
<%@ page import="com.twt.seti.Server" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'server.label', default: 'Server')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-server" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-server" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'server.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="ipAddress" title="${message(code: 'server.ipAddress.label', default: 'Ip Address')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'server.description.label', default: 'Description')}" />
					
						<th><g:message code="server.serverType.label" default="Server Type" /></th>
					
						<g:sortableColumn property="displayOrder" title="${message(code: 'server.displayOrder.label', default: 'Display Order')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'server.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${serverInstanceList}" status="i" var="serverInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${serverInstance.id}">${fieldValue(bean: serverInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: serverInstance, field: "ipAddress")}</td>
					
						<td>${fieldValue(bean: serverInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: serverInstance, field: "serverType")}</td>
					
						<td>${fieldValue(bean: serverInstance, field: "displayOrder")}</td>
					
						<td><g:formatDate date="${serverInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${serverInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
