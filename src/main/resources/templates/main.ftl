<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div class="">
    <@l.logout />
</div>
    <div class="">
        <a href="/user">
            User list
        </a>
    </div>
<form method="post">
    <input type="text" name="text" placeholder="your message">
    <input type="text" name="tag" placeholder="tag">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit">Сохранить</button>
</form>

<div class="">List of Message</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter!}">
    <button type="submit">Search</button>

</form>
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

