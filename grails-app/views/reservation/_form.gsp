<%@ page import="com.twt.seti.Reservation" %>



<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'reservationTag', 'error')} required">
	<label for="reservationTag">
		<g:message code="reservation.reservationTag.label" default="Reservation Tag" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="reservationTag" required="" value="${reservationInstance?.reservationTag}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'requester', 'error')} required">
	<label for="requester">
		<g:message code="reservation.requester.label" default="Requester" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="requester" name="requester.id" from="${com.twt.seti.User.list()}" optionKey="id" required="" value="${reservationInstance?.requester?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="reservation.comments.label" default="Comments" />
		
	</label>
	<g:textArea name="comments" cols="40" rows="5" maxlength="2000" value="${reservationInstance?.comments}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'application', 'error')} required">
	<label for="application">
		<g:message code="reservation.application.label" default="Application" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="application" name="application.id" from="${com.twt.seti.Application.list()}" optionKey="id" required="" value="${reservationInstance?.application?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'release', 'error')} ">
	<label for="release">
		<g:message code="reservation.release.label" default="Release" />
		
	</label>
	<g:select id="release" name="release.id" from="${com.twt.seti.Release.list()}" optionKey="id" value="${reservationInstance?.release?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'lifecyclePhase', 'error')} ">
	<label for="lifecyclePhase">
		<g:message code="reservation.lifecyclePhase.label" default="Lifecycle Phase" />
		
	</label>
	<g:select id="lifecyclePhase" name="lifecyclePhase.id" from="${com.twt.seti.LifecyclePhase.list()}" optionKey="id" value="${reservationInstance?.lifecyclePhase?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'server', 'error')} required">
	<label for="server">
		<g:message code="reservation.server.label" default="Server" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="server" name="server.id" from="${com.twt.seti.Server.list()}" optionKey="id" required="" value="${reservationInstance?.server?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'service', 'error')} required">
	<label for="service">
		<g:message code="reservation.service.label" default="Service" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="service" name="service.id" from="${com.twt.seti.Service.list()}" optionKey="id" required="" value="${reservationInstance?.service?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'startDatetime', 'error')} required">
	<label for="startDatetime">
		<g:message code="reservation.startDatetime.label" default="Start Datetime" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDatetime" precision="day"  value="${reservationInstance?.startDatetime}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'endDatetime', 'error')} required">
	<label for="endDatetime">
		<g:message code="reservation.endDatetime.label" default="End Datetime" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDatetime" precision="day"  value="${reservationInstance?.endDatetime}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'displayOrder', 'error')} ">
	<label for="displayOrder">
		<g:message code="reservation.displayOrder.label" default="Display Order" />
		
	</label>
	<g:field name="displayOrder" type="number" value="${reservationInstance.displayOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'modifiedBy', 'error')} required">
	<label for="modifiedBy">
		<g:message code="reservation.modifiedBy.label" default="Modified By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="modifiedBy" name="modifiedBy.id" from="${com.twt.seti.User.list()}" optionKey="id" required="" value="${reservationInstance?.modifiedBy?.id}" class="many-to-one"/>
</div>

