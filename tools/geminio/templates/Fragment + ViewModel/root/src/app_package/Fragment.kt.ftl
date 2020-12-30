package ${packageName}.${fragmentPackage}

import android.os.Bundle
import android.view.View
import ru.hh.android.mvvm.stateViewModel
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>
<#if needRecyclerView == true>
import androidx.recyclerview.widget.LinearLayoutManager
import ru.hh.delegationadapter.DelegationAdapter
import ru.hh.delegationadapter.DisplayableItem
</#if>
import kotlinx.android.synthetic.main.${fragmentLayoutResName}.*
import ${packageName}.${fragmentPackage}.model.${paramsName}
import ${packageName}.${fragmentPackage}.model.${uiEventName}
import ${packageName}.${fragmentPackage}.model.${uiStateName}
<#if needToolbar == true>
import ru.hh.android.base.ui.utils.widget.initToolbar
</#if>
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

    <#if needRecyclerView == true>
    private val delegateAdapter by lazy {
        DelegationAdapter<DisplayableItem>()
    }
    </#if>

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        <#if needToolbar == true>
        view.initToolbar(
            title = "TODO()",
            navigateIcon = R.drawable.ic_navbar_back,
            navIconAction = { activity?.onBackPressed() }
        )
        </#if>

        <#if needRecyclerView == true>
        ${fragmentLayoutResName}_recycler_view.apply {
            adapter = delegateAdapter
            layoutManager = LinearLayoutManager(context)
        }
        </#if>
    }

    private fun renderState(state: ${uiStateName}) {
        <#if needRecyclerView == true>
        delegateAdapter.submitList(emptyList())
        </#if>
        <#if needZeroStateView == true>
        ${fragmentLayoutResName}_zero_view.clearState()
        </#if>
        TODO("Render your state here")
    }

    private fun handleEvent(event: ${uiEventName}) {
        TODO("Handle your events here")
    }

}