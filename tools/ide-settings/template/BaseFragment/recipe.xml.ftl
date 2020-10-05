<?xml version="1.0"?>
<recipe>

    <#if useSupport>
	<dependency mavenUrl="com.android.support:support-v4:19.+"/>
    </#if>


    <instantiate 
        from="res/layout/fragment_blank.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
    

	<instantiate 
        from="src/app_package/BlankFragment.kt.ftl"
		to="${srcOutRRR}/${className}.kt" />

    <open file="${srcOutRRR}/${className}.kt" />

    <#if includeModule>
        <instantiate 
            from="src/app_package/BlankModule.kt.ftl" 
            to="${srcOutRRR}/di/${moduleName}.kt" />

        <open file="${srcOutRRR}/di/${moduleName}.kt" />
    </#if>

</recipe>
