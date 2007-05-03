<%
/**
 * Copyright (c) 2000-2007 Liferay, Inc. All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
%>

<%@ include file="/html/portlet/tagged_content/init.jsp" %>

<form action="<liferay-portlet:actionURL portletConfiguration="true" />" method="post" name="<portlet:namespace />fm">
<input name="<portlet:namespace /><%= Constants.CMD %>" type="hidden" value="<%= Constants.UPDATE %>">

<bean:message key="displayed-content-must-contain-the-following-tags" />

<br /><br />

<liferay-ui:tags-selector
	hiddenInput="entries"
	curTags="<%= StringUtil.merge(entries) %>"
	focus="<%= true %>"
/>

<br />

<bean:message key="displayed-content-must-not-contain-the-following-tags" />

<br /><br />

<liferay-ui:tags-selector
	hiddenInput="notEntries"
	curTags="<%= StringUtil.merge(notEntries) %>"
	focus="<%= true %>"
/>

<br />

<table class="liferay-table">
<tr>
	<td>
		<bean:message key="search-operator" />
	</td>
	<td>
		<select name="<portlet:namespace />andOperator">
			<option <%= andOperator ? "selected" : "" %> value="1"><bean:message key="and" /></option>
			<option <%= !andOperator ? "selected" : "" %> value="0"><bean:message key="or" /></option>
		</select>
	</td>
</tr>
</table>

<br />

<input type="button" value="<bean:message key="save" />" onClick="submitForm(document.<portlet:namespace />fm);">

</form>