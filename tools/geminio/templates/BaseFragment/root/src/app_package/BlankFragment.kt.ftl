package ${packageName}

<#if applicationPackage??>
import ${applicationPackage}.R
</#if>
<#if includeModule??>import ${packageName}.di.${moduleName}</#if>
import ru.hh.shared_core_ui.fragment.BaseFragment
<#if includeFactory??>import ru.hh.shared_core_ui.fragment.withArgs</#if>
import ru.hh.shared_core_ui.fragment_plugin.common.di.diPlugin
import toothpick.config.Module

internal class ${className} : BaseFragment(R.layout.${fragmentName}) {
    
    companion object {

        private const val LOG_TAG = "${className}"

<#if includeFactory>
    	fun newInstance() = ${className}().withArgs {  }
</#if>
    }


    @Suppress("unused")
    private val di by diPlugin(
        parentScopeNameProvider = { SplashFacade().internalScope.name },
        <#if includeModule>modulesProvider = { arrayOf(${moduleName}()) }</#if>
    )

}
