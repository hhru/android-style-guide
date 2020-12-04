package ${packageName}.ui.container.di

import ru.hh.shared_core_ui.navigation.AppRouter
import ru.terrakok.cicerone.Cicerone
import ru.terrakok.cicerone.NavigatorHolder
import toothpick.config.Module


internal class ${containerFragmentModuleName}: Module() {

    private val cicerone = Cicerone.create(AppRouter())

    init {
        bind(NavigatorHolder::class.java).toInstance(cicerone.navigatorHolder)
        bind(AppRouter::class.java).toInstance(cicerone.router)
    }
}