<#import "parts/common.ftl" as c>

<@c.page>
    <h1>User Editor</h1>
    <form action="/user" method="post">
        <input type="text" name="username" value="${user.username}">
        <#list roles as r>
            <div class="">
                <label for=""><input type="checkbox" name="${r}" ${user.roles?seq_contains(r)?string("checked", "")}>${r}</label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}"  name="_csrf">


        <button type="submit">save</button>
    </form>
</@c.page>