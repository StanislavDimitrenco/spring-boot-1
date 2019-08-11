<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <h1>Login</h1>
    ${message!}
    <@l.login "/login" false true/>
</@c.page>

