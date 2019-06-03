package ${package_name}.presentation.view

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import moxy.presenter.InjectPresenter
import moxy.presenter.ProvidePresenter
import ru.hh.android.base.ui.navigation.BaseBottomNavigationFragment
import ru.hh.${package_name}.R
import ${package_name}.presentation.presenter.${formatted_library_name}Presenter
import toothpick.Scope


class ${formatted_library_name}Fragment : BaseBottomNavigationFragment(), ${formatted_library_name}View {

    @InjectPresenter
    lateinit var presenter: ${formatted_library_name}Presenter

    @ProvidePresenter
    internal fun providePresenter(): ${formatted_library_name}Presenter {
        return openScope().getInstance(${formatted_library_name}Presenter::class.java)
    }


    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_${layout_name}, container, false)
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