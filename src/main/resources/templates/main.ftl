<#import "parts/common.ftl" as c>


<@c.page>

    <form method="get" action="/main">
        <div  class="form-row mb-4">
            <div  class="form-group col-md-6 ml-2">
                <input type="text" name="filter" value="${filter!}" placeholder="Search by tag" class="form-control mr-2" >
            </div>
            <div class="form-group col-md-4">
                <button type="submit"  class="btn btn-success">Search</button>
            </div>
        </div>
    </form>
    <p>
        <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
            Add articles
        </a>

    </p>
    <div class="collapse mb-4" id="collapseExample">
        <form method="post" enctype="multipart/form-data">
            <div class="form-row">
                <div class="col">
                    <input class="form-control mr-2"  type="text" name="text" placeholder="your message">
                </div>
                <div class="col">
                    <input class="form-control mr-2"  type="text" name="tag" placeholder="tag">
                </div>
                <div class="col">
                    <div class="custom-file">
                        <input type="file" name="file" class="custom-file-input" id="customFile">
                        <label class="custom-file-label" for="customFile">Choose file</label>
                    </div>

                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <div class="col">
                    <button type="submit"  class="btn btn-success">Сохранить</button>
                </div>

            </div>
        </form>
    </div>
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
                    ${m.authorName}
                </div>
            </div>
        <#else >
            No messages
        </#list>
    </div>


</@c.page>

