package ${packageName}.ui.container.di

import ru.hh.shared.core.ui.framework.navigation.AppRouter
import ru.terrakok.cicerone.Cicerone
import ru.terrakok.cicerone.NavigatorHolder
import toothpick.config.Module
import toothpick.ktp.binding.bind
import ${packageName}.ui.container.${containerFragmentVMName}

internal class ${containerFragmentModuleName} : Module() {

    private val cicerone = Cicerone.create(AppRouter())

    init {
        bind<NavigatorHolder>().toInstance(cicerone.navigatorHolder)
        bind<AppRouter>().toInstance(cicerone.router)

        bind<${containerFragmentVMName}>().singleton()
    }
}
