<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <h1>Registration</h1>
    <div>
        ${message!}
    </div>
    <@l.login "/registration" true false/>
</@c.page>