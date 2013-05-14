<%@ taglib uri="http://www.zkoss.org/dsp/web/core" prefix="c" %>
<%@ taglib uri="http://www.zkoss.org/dsp/zk/core" prefix="z" %>
${z:setCSSCacheControl()}
.float-left {
	float: left;
}
.float-right {
	float: right;
	margin-top: 5px;
	padding-right: 10px;
}
.refresh {
	background: none !important;
	text-decoration: underline !important;
	border: 0 !important;
	color: blue !important;
}
.tabs * {
	background: #7EAAC6;
	cursor: pointer;
}
.tabs .bd {
	background: #7EAAC6;
	zoom: 1;
}
.tabs .t1, .tabs .t2, .tabs .t3 {
	background: #7EAAC6;
	font-size: 0;
	line-height: 0;
	margin: 0 2px;
	height: 1px;
	padding: 0;
	overflow: hidden;
}
.tabs .t2 {
	margin: 0 1px;
}
.tabs .t3 {
	background: white;
	height: 1px;
	margin: 0 1px;
}
.tabs .b1, .tabs .b2, .tabs .b3 {
	background: #7EAAC6;
	font-size: 0;
	line-height: 0;
	margin: 0 2px;
	height: 1px;
	padding: 0;
	overflow: hidden;
}
.tabs .b2 {
	margin: 0 1px;
}
.tabs .b3 {
	background: white;
	height: 1px;
	margin: 0 1px;
}
.tabs .cm {
	background: #C3E0F2;
	margin: 0 1px;
	border-left: 1px solid white;
	border-right: 1px solid white;
}
.tabs .text {
	line-height: 1.2em;
	position: relative;
	vertical-align: middle;
	text-align: center;
	white-space: nowrap;
	color: #0F3B82;
	padding: 2px 5px;
}
.tabs .text, .tabs .text * {
	background: none;
}
.cnt {
	position: relative;
}
.top {
	background: #f1fcff;
	border-bottom: 0.2em solid #B5D5E9;
	overflow: hidden;
	height: 0.7em;
	position: absolute;
	right: 0px;
	left: 0px;
	top: 0px;
}
.ie6 .top {
	width: 100%;
}
.calendar-toolbar .z-toolbar-body {
	width: 100%;
	padding-left: 2px;
}
.calendar-toolbar {
	margin: -3px;
	padding-top: 5px;
}
.gecko2 .calendar-toolbar {
	margin: -3px;
}
.arrows .cnt {
	background: #CCE5F4;
	zoom: 1;
}
.arrow-left {
	border-color: #CCE5F4 #7EAAC6 #CCE5F4 #CCE5F4;
	border-style: solid;
	border-width: 5px;
	height: 0;
	width: 0;
	top: 4px;
	left: 5px;
	position: absolute;
	font-size: 0;
	line-height: 0;
}
.arrow-right {
	border-color: #CCE5F4 #CCE5F4 #CCE5F4 #7EAAC6;
	border-style: solid;
	border-width: 5px;
	height: 0;
	width: 0;
	top: 4px;
	left: 11px;
	position: absolute;
	font-size: 0;
	line-height: 0;
}
.arrow-over .cnt {
	background-color: #B9D0DE;
}
.arrow-over .arrow-left {
	border-color: #B9D0DE white #B9D0DE #B9D0DE;
}
.arrow-over .arrow-right {
	border-color: #B9D0DE #B9D0DE #B9D0DE white;
}
.blue *, .red *, .green *, .purple *, .khaki * {
	color: white;
	text-align: center;
}
.red {
	background: #D96666!important;
}
.blue {
	background: #668CD9!important;
}
.green {
	background: #4CB052!important;
}
.khaki {
	background: #BFBF4D!important;
}
.purple {
	background: #B373B3!important;
}