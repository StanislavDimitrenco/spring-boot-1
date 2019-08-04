<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <h1>Login</h1>
    <@l.login "/login" />
    <a href="/registration">Registration</a>
</@c.page>

