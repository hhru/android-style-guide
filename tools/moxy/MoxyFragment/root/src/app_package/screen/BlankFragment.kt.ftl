package ${packageName}.screen

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ru.hh.android.R
import ru.hh.android.base.ui.BaseFragment
import com.arellomobile.mvp.presenter.InjectPresenter
import ${packageName}.view.${viewName}
import ${packageName}.presenter.${presenterName}

class ${className} : BaseFragment(), ${viewName} {
    
<#if includeFactory>
    companion object {

        private const val TAG = "${className}"

    	fun newInstance() : ${className} {
    	    val fragment = ${className}()
    	    
    	    val args = Bundle()
    	    fragment.arguments = args

    	    return fragment
    	}

    }

</#if>
    @InjectPresenter
    internal lateinit var presenter: ${presenterName}

<#if includeLayout>
    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_blank, container, false)
    }

</#if>

    override fun onBackPressedInternal(): Boolean {
        TODO("not implemented")
    }

}
