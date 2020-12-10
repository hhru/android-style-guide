package ${packageName}.ui.container

import androidx.fragment.app.FragmentActivity
import androidx.fragment.app.FragmentManager
import androidx.fragment.app.Fragment
import ru.hh.shared_core_ui.fragment.addFragmentIfNotExist
import ru.hh.shared_core_ui.navigation.FixSupportFragmentNavigator


internal class ${containerFragmentNavigatorName}(
    activity: FragmentActivity,
    fragmentManager: FragmentManager,
    containerId: Int
) : FixSupportFragmentNavigator(
    activity,
    fragmentManager,
    containerId
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