package ${packageName}.presentation.presenter

import moxy.InjectViewState
import ru.hh.android.base.ui.BasePresenter
import ${packageName}.presentation.view.${moduleViewClassName}
import toothpick.InjectConstructor


@InjectViewState
@InjectConstructor
internal class ${modulePresenterClassName} : BasePresenter<${moduleViewClassName}>() {

    companion object {
        private const val LOG_TAG = "${modulePresenterClassName}"
    }

}