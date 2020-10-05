package ${packageName}

<#if applicationPackage??>
import ${applicationPackage}.R
</#if>
<#if includeModule??>import ${packageName}.di.${moduleName}</#if>
import ru.hh.shared_core_ui.fragment.BaseFragment
<#if includeFactory??>import ru.hh.shared_core_ui.fragment.withArgs</#if>
import toothpick.config.Module

internal class ${className} : BaseFragment(R.layout.${fragmentName}) {
    
    companion object {

        private const val LOG_TAG = "${className}"

<#if includeFactory>
    	fun newInstance() = ${className}().withArgs {  }
</#if>
    }



    override fun getModules(): Array<Module> = arrayOf(<#if includeModule>${moduleName}()</#if>)
   

}
