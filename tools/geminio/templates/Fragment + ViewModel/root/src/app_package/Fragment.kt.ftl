package ${packageName}.${fragmentPackage}

import android.os.Bundle
import android.view.View
import ru.hh.android.mvvm.stateViewModel
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>
<#if needDesignSample == true>
import androidx.recyclerview.widget.LinearLayoutManager
import ru.hh.delegationadapter.DelegationAdapter
import ru.hh.cells.interfaces.Cell
import ru.hh.android.shared_core_model.AsyncRes
import ru.hh.android.design_system.utils.widget.toolbar.initBoldTitleLayout
import ru.hh.android.design_system.utils.widget.gone
</#if>
import kotlinx.android.synthetic.main.${fragmentLayoutResName}.*
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

    <#if needDesignSample == true>
    private val delegateAdapter by lazy {
        DelegationAdapter<Cell>()
    }
    </#if>

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        <#if needDesignSample == true>

        ${fragmentLayoutResName}_toolbar.setNavigationOnClickListener { activity?.onBackPressed() }
        ${fragmentLayoutResName}_collapsing_toolbar.initBoldTitleLayout()

        ${fragmentLayoutResName}_recycler_view.apply {
            adapter = delegateAdapter
            layoutManager = LinearLayoutManager(context)
        }

        ${fragmentLayoutResName}_swipe_refresh_layout.setOnRefreshListener(TODO())
        <#else>
        TODO()
        </#if>
    }

    private fun renderState(state: ${uiStateName}) {
        <#if needDesignSample == true>
        when (val list = state.listCells) {
            is AsyncRes.Data -> {
                ${fragmentLayoutResName}_swipe_refresh_layout.isEnabled = true
                ${fragmentLayoutResName}_swipe_refresh_layout.isRefreshing = false
                ${fragmentLayoutResName}_zero_state_view.gone(true)
                ${fragmentLayoutResName}_recycler_view.gone(false)

                delegateAdapter.submitList(list.value)
            }

            is AsyncRes.Error -> {
                ${fragmentLayoutResName}_swipe_refresh_layout.isEnabled = false
                ${fragmentLayoutResName}_swipe_refresh_layout.isRefreshing = false
                ${fragmentLayoutResName}_zero_state_view.gone(false)
                ${fragmentLayoutResName}_recycler_view.gone(true)

                ${fragmentLayoutResName}_zero_state_view.setStubTitle("TODO: Error text")
                ${fragmentLayoutResName}_zero_state_view.setMainAction("TODO: Retry text", TODO())
            }

            is AsyncRes.Loading -> {
                ${fragmentLayoutResName}_swipe_refresh_layout.isEnabled = true
                ${fragmentLayoutResName}_swipe_refresh_layout.isRefreshing = true
                ${fragmentLayoutResName}_zero_state_view.gone(true)
                ${fragmentLayoutResName}_recycler_view.gone(true)
            }
        }
        <#else>
        TODO("Render your state here")
        </#if>
    }

    private fun handleEvent(event: ${uiEventName}) {
        TODO("Handle your events here")
    }

}