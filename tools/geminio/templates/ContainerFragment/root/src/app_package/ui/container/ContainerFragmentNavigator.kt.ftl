package ${packageName}.ui.container

import androidx.fragment.app.Fragment
import ru.hh.shared.core.ui.framework.fragment.addFragmentIfNotExist
import ru.hh.shared.core.ui.framework.navigation.FixSupportFragmentNavigator

internal class ${containerFragmentNavigatorName}(
    fragment: Fragment,
    containerId: Int
) : FixSupportFragmentNavigator(
    activity = fragment.requireActivity(),
    fragmentManager = fragment.childFragmentManager,
    containerId = containerId
) {

    init {
        addFragmentIfNotExist(
                containerViewId = containerId,
                fragmentManager = fragmentManager,
                fragment = getFirstFragment(),
                tag = getFirstFragmentTag(),
                executeNow = true
        )
    }


    private fun getFirstFragment(): Fragment {
        TODO("Return first fragment for navigation inside container, e.g. ChooseFragment.newInstance()")
    }

    private fun getFirstFragmentTag(): String {
        TODO("Return first fragment TAG, e.g. ChooseFragment.TAG")
    }

}
