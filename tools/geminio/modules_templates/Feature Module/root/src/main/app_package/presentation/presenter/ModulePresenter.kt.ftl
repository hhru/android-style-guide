package ${packageName}.presentation.presenter

import moxy.InjectViewState
import ru.hh.android.base.ui.BasePresenter
import ${packageName}.presentation.view.${modulePresenterViewName}
import toothpick.InjectConstructor


@InjectViewState
@InjectConstructor
internal class ${modulePresenterClassName}(

) : BasePresenter<${modulePresenterViewName}>() {

    companion object {
        private const val LOG_TAG = "${modulePresenterClassName}"
    }

}