package ${packageName}.${fragmentPackage}

import android.os.Bundle
import android.view.View
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>
<#if needDesignSample == true>
import androidx.recyclerview.widget.LinearLayoutManager
import com.redmadrobot.lib.sd.LoadingStateDelegate
import ru.hh.delegationadapter.DelegationAdapter
import ru.hh.cells.interfaces.Cell
import ru.hh.android.mvvm.LCE
import ru.hh.android.design_system.utils.widget.toolbar.initBoldTitleLayout
import ru.hh.android.design_system.utils.widget.gone
import ru.hh.shared_core_ui.fragment_plugin.common.viewRetained
import ru.hh.shared_core_ui.keyboard.KeyboardRecyclerViewListener
</#if>
import kotlinx.android.synthetic.main.${fragmentLayoutResName}.*
import ${packageName}.${fragmentPackage}.model.${paramsName}
import ${packageName}.${fragmentPackage}.model.${uiEventName}
import ${packageName}.${fragmentPackage}.model.${uiStateName}
import ru.hh.android.mvvm.plugin.viewModelPlugin
import ru.hh.shared_core_ui.fragment.BaseFragment
import ru.hh.shared_core_ui.fragment.withParams
import ru.hh.shared_core_ui.fragment.params
import ru.hh.shared_core_ui.fragment_plugin.common.di.diPlugin
import ru.hh.shared_core_ui.fragment_plugin.common.di.getInstance


internal class ${fragmentName} : BaseFragment(R.layout.${fragmentLayoutResName}) {

    companion object {
        fun newInstance(params: ${paramsName}) = ${fragmentName}().withParams(params)
    }

    private val params by params<${paramsName}>()

    private val di by diPlugin(
        parentScopeNameProvider = { TODO("Scope name of feature facade / Delete this for scope of parent fragment") },
        modulesProvider = { arrayOf(${moduleName}(params)) }
    )

    @Suppress("detekt.UnusedPrivateMember")
    private val viewModel: ${viewModelName} by viewModelPlugin(
        renderState = this::renderState,
        handleEvent = this::handleEvent,
        viewModelProvider = { di.getInstance() }
    )

    <#if needDesignSample == true>
    private val delegateAdapter by lazy { DelegationAdapter<Cell>() }

    private val stateDelegate: LoadingStateDelegate by viewRetained(
            {
                LoadingStateDelegate(
                    contentView = ${fragmentLayoutResName}_recycler_view,
                    loadingView = null, // можно подставить что-то свое
                    stubView = ${fragmentLayoutResName}_zero_state_view
                )
            }
        )
    </#if>

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        <#if needDesignSample == true>

        ${fragmentLayoutResName}_toolbar.setNavigationOnClickListener { activity?.onBackPressed() }
        ${fragmentLayoutResName}_collapsing_toolbar.initBoldTitleLayout()

        ${fragmentLayoutResName}_recycler_view.apply {
            adapter = delegateAdapter
            layoutManager = LinearLayoutManager(context)
            addOnScrollListener(KeyboardRecyclerViewListener())
        }

        ${fragmentLayoutResName}_swipe_refresh_layout.setOnRefreshListener(TODO())
        <#else>
        TODO()
        </#if>
    }

    <#if needDesignSample == false>
    @Suppress("detekt.UnusedPrivateMember")
    </#if>
    private fun renderState(state: ${uiStateName}) {
        <#if needDesignSample == true>
        ${fragmentLayoutResName}_swipe_refresh_layout.isRefreshing = false
        ${fragmentLayoutResName}_swipe_refresh_layout.isEnabled = false
        when (val list = state.listCells) {
            is LCE.Data -> {
                ${fragmentLayoutResName}_swipe_refresh_layout.isEnabled = true
                stateDelegate?.showContent()
                delegateAdapter.submitList(list.value)
            }

            is LCE.Error -> {
                ${fragmentLayoutResName}_zero_state_view.gone(false)
                ${fragmentLayoutResName}_recycler_view.gone(true)
                stateDelegate?.showStub()

                ${fragmentLayoutResName}_zero_state_view.setStubTitle("TODO: Error text")
                ${fragmentLayoutResName}_zero_state_view.setMainAction("TODO: Retry text", TODO())
            }

            is LCE.Loading -> {
                stateDelegate?.showLoading()
            }
        }
        <#else>
        TODO("Render your state here")
        </#if>
    }

    @Suppress("detekt.UnusedPrivateMember")
    private fun handleEvent(event: ${uiEventName}) {
        TODO("Handle your events here")
    }

}