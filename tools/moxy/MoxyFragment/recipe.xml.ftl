<?xml version="1.0"?>
<recipe>

    <#if useSupport>
	<dependency mavenUrl="com.android.support:support-v4:19.+"/>
    </#if>

    <#if includeLayout>
        <instantiate from="res/layout/fragment_blank.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
    </#if>

    	<instantiate from="src/app_package/ui/fragment/BlankFragment.kt.ftl"
		to="${srcOutRRR}/ui/fragment/${subpackage}${className}.kt" />

    	<open file="${srcOutRRR}/ui/fragment/${subpackage}${className}.kt" />

    <#if includeView>
    	<instantiate from="src/app_package/presentation/view/BlankView.kt.ftl"
		to="${srcOutRRR}/presentation/view/${subpackage}${viewName}.kt" />

    	<open file="${srcOutRRR}/presentation/view/${subpackage}${viewName}.kt" />
    </#if>

    <#if includePresenter>
    	<instantiate from="src/app_package/presentation/presenter/BlankPresenter.kt.ftl"
		to="${srcOutRRR}/presentation/presenter/${subpackage}${presenterName}.kt" />

    	<open file="${srcOutRRR}/presentation/presenter/${subpackage}${presenterName}.kt" />
    </#if>
                                      
</recipe>
