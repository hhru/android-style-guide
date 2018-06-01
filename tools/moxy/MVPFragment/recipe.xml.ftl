<?xml version="1.0"?>
<recipe>

    <#if includeLayout>
        <instantiate from="root/res/layout/fragment_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${subPackage}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
    </#if>

    <open file="${escapeXmlAttribute(srcOutRRR)}/fragment/${className}.kt" />

    <instantiate from="root/src/app_package/Fragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOutRRR)}/fragment/${className}.kt" />

    
 <#if generateView>
    <instantiate from="root/src/app_package/View.kt.ftl"
                   to="${escapeXmlAttribute(srcOutRRR)}/view/${viewName}.kt" />

    <open file="${escapeXmlAttribute(srcOutRRR)}/view/${viewName}.kt" />
 </#if>

  <#if generatePresenter>
    <instantiate from="root/src/app_package/Presenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOutRRR)}/presenter/${presenterName}.kt" />

    <open file="${escapeXmlAttribute(srcOutRRR)}/presenter/${presenterName}.kt" />
 </#if>

</recipe>
