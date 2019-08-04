<#import "parts/common.ftl" as c>

<@c.page>
    <h1>List of users</h1>
    <table>
        <thead>
        <tr>
            <td>name</td>
            <td>
                role
            </td>
            <td></td>
        </tr>
        </thead>

        <#list users as u>
            <tr>
                <td>
                    ${u.username}
                </td>
                <td>
                    <#list u.roles as r>${r}<#sep>, </#list>
                </td>
                <td>
                    <a href="/user/${u.id}">edit</a>
                </td>
            </tr>
        </#list>
    </table>
</@c.page>