<#macro login path isRegistrForm isLoginForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">User Name:</label>
            <div class="col-sm-6">
                <input type="text" name="username" class="form-control"/>
            </div>

        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Password:</label>
            <div class="col-sm-6">
                <input type="password" name="password" class="form-control"/>
            </div>
        </div>
        <div class="col-sm-6">
            <input class="btn btn-primary" type="submit" value="<#if isRegistrForm >Registratin<#else >Sign In</#if>" />
        </div>
        <#if !isRegistrForm>
        <div class="col-sm-6 mt-4">
            <a href="/registration" class="btn btn-link">Registration</a>
        </div>
        </#if>
        <#if !isLoginForm>
            <div class="col-sm-6 mt-4">
                <a href="/login" class="btn btn-link">Login</a>
            </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="submit" value="Sign Out"  class="btn btn-warning"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
    </form>
</#macro>