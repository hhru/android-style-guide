package ${packageName}.ui.container

import ru.hh.shared.core.ui.framework.navigation.NavScreen

internal class ${containerFragmentNavScreenName} : NavScreen {
    override fun getFragment() = ${containerFragmentName}.newInstance()
}
