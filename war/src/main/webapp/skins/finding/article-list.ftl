<#if !isIndex>
<nav class="pagination fn-clear" role="navigation">
    <#if paginationCurrentPageNum != 1>
    <a class="fn-left" href="${servePath}${path}/${paginationPreviousPageNum}">← ${previousPageLabel}</a>
    </#if>
    <span>${pageLabel} ${paginationCurrentPageNum} of ${paginationPageCount}</span>
    <#if paginationPageCount != paginationCurrentPageNum>
    <a class="fn-right" href="${servePath}${path}/${paginationNextPageNum}">${nextPagePabel} →</a>
    </#if>
</nav>
</#if>

<#list articles as article>
<article class="post">
    <header>
        <h2 class="post-title">
            <a rel="bookmark" href="${servePath}${article.articlePermalink}">
                ${article.articleTitle}
            </a>
            <#if article.hasUpdated>
            <sup class="post-tip">
                ${updatedLabel}
            </sup>
            </#if>
            <#if article.articlePutTop>
            <sup class="post-tip">
                ${topArticleLabel}
            </sup>
            </#if>
        </h2>
    </header>
    <section class="post-excerpt">
        <p>${article.articleAbstract}<a class="read-more" href="/the-purpose-of-education/">»</a></p>
    </section>
    <footer class="post-meta">
        <img class="avatar" title="${article.authorName}" alt="${article.authorName}" src="${article.authorThumbnailURL}"/>
        <a rel="nofollow" href="${servePath}/authors/${article.authorId}">${article.authorName}</a>
        on
        <#list article.articleTags?split(",") as articleTag>
        <span>
            <a rel="tag" href="${servePath}/tags/${articleTag?url('UTF-8')}">
                ${articleTag}</a><#if articleTag_has_next>,</#if>
        </span>
        </#list>
        <time>${article.articleCreateDate?string("yyyy-MM-dd")}</time>
    </footer>
</article>
</#list>

<#if 0 != paginationPageCount>
<nav class="pagination fn-clear" role="navigation">
    <#if paginationCurrentPageNum != 1>
    <a class="fn-left" href="${servePath}${path}/${paginationPreviousPageNum}">← ${previousPageLabel}</a>
    </#if>
    <span>${pageLabel} ${paginationCurrentPageNum} of ${paginationPageCount}</span>
    <#if paginationPageCount != paginationCurrentPageNum>
    <a class="fn-right" href="${servePath}${path}/${paginationNextPageNum}">${nextPagePabel} →</a>
    </#if>
</nav>
</#if>