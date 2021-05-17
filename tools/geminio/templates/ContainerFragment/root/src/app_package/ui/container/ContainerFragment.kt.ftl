package ${packageName}.ui.container

<#if applicationPackage??>
import ${applicationPackage}.R
</#if>
import ${packageName}.api.${featureFacadeName}
import ${packageName}.ui.container.di.${containerFragmentModuleName}
import ru.hh.shared.core.mvvm.plugin.viewModelPlugin
import ru.hh.shared.core.ui.framework.fragment.BaseFragment
import ru.hh.shared.core.ui.framework.fragment_plugin.common.NavigationFragmentPlugin
import ru.hh.shared.core.ui.framework.fragment_plugin.common.di.DiScopeOwner
import ru.hh.shared.core.ui.framework.fragment_plugin.common.di.diPlugin
import ru.hh.shared.core.ui.framework.fragment_plugin.plugin
import ru.hh.shared.core.ui.framework.navigation.AppRouter
import ru.terrakok.cicerone.NavigatorHolder
import toothpick.Scope

internal class ${containerFragmentName} : BaseFragment(R.layout.${containerFragmentLayoutName}), DiScopeOwner {

    companion object {
        fun newInstance() = ${containerFragmentName}()
    }


    private val di by diPlugin(
            parentScopeNameProvider = { ${featureFacadeName}().internalScope.name },
            modulesProvider = { arrayOf(${containerFragmentModuleName}()) }
    )

    private val navPlugin by plugin {
        NavigationFragmentPlugin(
                navigatorProvider = {
                    ${containerFragmentNavigatorName}(
                            fragment = this,
                            containerId = R.id.${containerFragmentContainerId}
                    )
                },
                navigationHolderProvider = { di.scope.getInstance(NavigatorHolder::class.java) },
                routerProvider = { di.scope.getInstance(AppRouter::class.java) }
        )
    }

    override val scope: Scope by di::scope

    @Suppress("detekt.UnusedPrivateMember", "unused")
    private val viewModel by viewModelPlugin(
            handleEvent = {},
            viewModelProvider = { di.scope.getInstance(${containerFragmentVMName}::class.java) }
    )

    override fun onBackPressedInternal(): Boolean {
        return navPlugin.onBackPressed()
    }

}
