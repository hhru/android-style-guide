package ${packageName}.${fragmentPackage}

import ru.hh.android.mvvm.stateViewModel
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>
import ${packageName}.${fragmentPackage}.model.${paramsName}
import ${packageName}.${fragmentPackage}.model.${uiEventName}
import ${packageName}.${fragmentPackage}.model.${uiStateName}
import ru.hh.shared_core_ui.fragment.BaseFragment
import ru.hh.shared_core_ui.fragment.withParams
import ru.hh.shared_core_ui.fragment_plugin.common.di.diPlugin
import ru.hh.shared_core_ui.fragment_plugin.common.di.getInstance


internal class ${fragmentName} : BaseFragment(R.layout.${fragmentLayoutResName}) {

    companion object {
        fun newInstance(params: ${paramsName}) = ${fragmentName}().withParams(params)
    }

    private val params by params()

    private val di by diPlugin(
        parentScopeNameProvider = { TODO("Scope name of feature facade / Delete this for scope of parent fragment") },
        modulesProvider = { arrayOf(${moduleName}(params)) }
    )

    private val viewModel: ${viewModelName} by stateViewModel(
        renderState = this::renderState,
        handleEvent = this::handleEvent,
        viewModelProvider = { di.getInstance() }
    )

    private fun renderState(state: ${uiStateName}) {
        TODO("Render your state here")
    }

    private fun handleEvent(event: ${uiEventName}) {
        TODO("Handle your events here")
    }

}