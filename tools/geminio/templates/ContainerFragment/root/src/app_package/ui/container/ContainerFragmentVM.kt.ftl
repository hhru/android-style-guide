package ${packageName}.ui.container

import ${packageName}.api.${featureDepsName}
import ru.hh.shared.core.mvvm.viewmodel.BaseViewModel
import ru.hh.shared.core.rx.SchedulersProvider
import timber.log.Timber
import toothpick.InjectConstructor

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
