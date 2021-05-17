package ${packageName}

<#if applicationPackage??>
import ${applicationPackage}.R
</#if>
<#if includeModule??>import ${packageName}.di.${moduleName}</#if>
import ru.hh.shared.core.ui.framework.fragment.BaseFragment
<#if includeFactory??>import ru.hh.shared.core.ui.framework.fragment.withArgs</#if>
import ru.hh.shared.core.ui.framework.fragment_plugin.common.di.diPlugin

internal class ${className} : BaseFragment(R.layout.${fragmentName}) {
    
    companion object {

        private const val LOG_TAG = "${className}"

<#if includeFactory>
    	fun newInstance() = ${className}().withArgs {  }
</#if>
    }

    @Suppress("unused")
    private val di by diPlugin(
        parentScopeNameProvider = { TODO("Scope name of feature facade / Delete this for scope of parent fragment") },
        <#if includeModule>modulesProvider = { arrayOf(${moduleName}()) }</#if>
    )

}
