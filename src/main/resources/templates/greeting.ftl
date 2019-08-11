<#import "parts/common.ftl" as c>

<@c.page>
    <h1>Main page</h1>
    <div class="card-columns">
        <#list messages as m>
            <div class="card my-2">
                <#if m.filename??>
                    <img src="/img/${m.filename}" alt="" class="card-img-top">
                </#if>
                <div class="card-body">
                    <p class="card-text">
                        ${m.text}
                    </p>
                    <span class="badge badge-info">${m.tag}</span>
                </div>
                <div class="card-footer text-muted">
<#--                    ${m.authorName}-->
                </div>
            </div>
        <#else >
            No messages
        </#list>
    </div>
</@c.page>


