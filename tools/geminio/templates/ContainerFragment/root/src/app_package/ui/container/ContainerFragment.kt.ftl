package ${packageName}.ui.container

import ru.hh.android.mvvm.viewModelLazy
import ${applicationPackage}.R
import ${packageName}.api.${featureFacadeName}
import ${packageName}.ui.container.di.${containerFragmentModuleName}
import ru.hh.shared_core_ui.fragment.BaseFragment
import ru.hh.shared_core_ui.fragment_plugin.common.NavigationFragmentPlugin
import ru.hh.shared_core_ui.fragment_plugin.common.di.DiScopeOwner
import ru.hh.shared_core_ui.fragment_plugin.common.di.diPlugin
import ru.hh.shared_core_ui.fragment_plugin.plugin
import ru.hh.shared_core_ui.navigation.AppRouter
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
    private val viewModel by viewModelLazy(
            handleEvent = {},
            viewModelProvider = { di.scope.getInstance(${containerFragmentVMName}::class.java) }
    )

    override fun onBackPressedInternal(): Boolean {
        return navPlugin.onBackPressed()
    }

}
