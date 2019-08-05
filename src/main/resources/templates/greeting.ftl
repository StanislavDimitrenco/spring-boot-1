<#import "parts/common.ftl" as c>

<@c.page>
    <h1>Main page</h1>
    <a href="/main">Add articles</a>
<table>
    <#list messages as m>
        <tr>
            <td>${m.id}</td>
            <td>${m.text}</td>
            <td><i>${m.tag}</i></td>
            <td><strong>${m.authorName}</strong></td>
        </tr>
    <#else >
        No messages
    </#list>
</table>
</@c.page>


