
<%@ page import="com.twt.seti.ServiceType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'serviceType.label', default: 'ServiceType')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-serviceType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-serviceType" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'serviceType.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'serviceType.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="displayOrder" title="${message(code: 'serviceType.displayOrder.label', default: 'Display Order')}" />
					
						<th><g:message code="serviceType.modifiedBy.label" default="Modified By" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'serviceType.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'serviceType.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${serviceTypeInstanceList}" status="i" var="serviceTypeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${serviceTypeInstance.id}">${fieldValue(bean: serviceTypeInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: serviceTypeInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: serviceTypeInstance, field: "displayOrder")}</td>
					
						<td>${fieldValue(bean: serviceTypeInstance, field: "modifiedBy")}</td>
					
						<td><g:formatDate date="${serviceTypeInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${serviceTypeInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${serviceTypeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
