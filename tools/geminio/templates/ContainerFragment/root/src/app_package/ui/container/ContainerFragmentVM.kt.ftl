package ${packageName}.ui.container

import ru.hh.android.mvvm.viewmodel.BaseViewModel
import ru.hh.core_rx.SchedulersProvider
import ${packageName}.api.${featureDepsName}
import toothpick.InjectConstructor
import timber.log.Timber


@InjectConstructor
internal class ${containerFragmentVMName}(
    private val deps: ${featureDepsName},
    private val schedulersProvider: SchedulersProvider,
) : BaseViewModel<Unit>() {

    companion object {
        private const val LOG_TAG = "${containerFragmentVMName}"
    }


    override fun onFirstAttach() {
        super.onFirstAttach()
        Timber.tag(LOG_TAG).d("On first attach")
    }
}