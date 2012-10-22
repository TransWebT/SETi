
<%@ page import="com.twt.seti.ServerType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'serverType.label', default: 'ServerType')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-serverType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-serverType" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'serverType.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'serverType.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="displayOrder" title="${message(code: 'serverType.displayOrder.label', default: 'Display Order')}" />
					
						<th><g:message code="serverType.modifiedBy.label" default="Modified By" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'serverType.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'serverType.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${serverTypeInstanceList}" status="i" var="serverTypeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${serverTypeInstance.id}">${fieldValue(bean: serverTypeInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: serverTypeInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: serverTypeInstance, field: "displayOrder")}</td>
					
						<td>${fieldValue(bean: serverTypeInstance, field: "modifiedBy")}</td>
					
						<td><g:formatDate date="${serverTypeInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${serverTypeInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${serverTypeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
