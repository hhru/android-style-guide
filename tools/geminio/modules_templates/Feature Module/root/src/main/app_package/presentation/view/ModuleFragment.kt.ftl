package ${packageName}.presentation.view

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import moxy.presenter.InjectPresenter
import moxy.presenter.ProvidePresenter
import ru.hh.android.base.ui.navigation.BaseBottomNavigationFragment
import ${applicationPackage}.R
import ${packageName}.presentation.presenter.${modulePresenterClassName}
import toothpick.Scope


internal class ${moduleFragmentClassName} : BaseBottomNavigationFragment(), ${moduleViewClassName} {

    @InjectPresenter
    lateinit var presenter: ${modulePresenterClassName}

    @ProvidePresenter
    internal fun providePresenter(): ${modulePresenterClassName} {
        return openScope().getInstance(${modulePresenterClassName}::class.java)
    }


    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.${moduleFragmentLayoutName}, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        TODO("Init some views here")
    }

    override fun onFinish() {
        super.onFinish()
        closeScope()
    }


    private fun openScope(): Scope {
        TODO("Open Toothpick scope")
    }

    private fun closeScope() {
        TODO("Close Toothpick scope")
    }

}