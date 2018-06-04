<?xml version="1.0"?>
<recipe>

    <#if useSupport>
	<dependency mavenUrl="com.android.support:support-v4:19.+"/>
    </#if>

    <#if includeLayout>
        <instantiate from="res/layout/activity_blank.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityName)}.xml" />
    </#if>

    	<instantiate from="src/app_package/screen/BlankActivity.kt.ftl"
		to="${srcOutRRR}/screen/${className}.kt" />

    	<open file="${srcOutRRR}/screen/${className}.kt" />

    <#if includeView>
    	<instantiate from="src/app_package/view/BlankView.kt.ftl"
		to="${srcOutRRR}/view/${viewName}.kt" />

    	<open file="${srcOutRRR}/view/${viewName}.kt" />
    </#if>

    <#if includePresenter>
    	<instantiate from="src/app_package/presenter/BlankPresenter.kt.ftl"
		to="${srcOutRRR}/presenter/${presenterName}.kt" />

    	<open file="${srcOutRRR}/presenter/${presenterName}.kt" />
    </#if>
                                      
</recipe>
