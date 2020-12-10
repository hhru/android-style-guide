package ${packageName}.ui.container

import ru.hh.shared_core_ui.navigation.NavScreen


internal class ${containerFragmentNavScreenName} : NavScreen {
    override fun getFragment() = ${containerFragmentName}.newInstance()
}