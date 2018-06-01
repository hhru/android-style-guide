package ${packageName}.ui.fragment${dotSubpackage}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ${packageName}.R
<#if useSubPackage??>import ${packageName}.ui.fragment.BaseFragment</#if>
import com.arellomobile.mvp.presenter.InjectPresenter
import ${packageName}.presentation.view${dotSubpackage}.${viewName}
import ${packageName}.presentation.presenter${dotSubpackage}.${presenterName}

class ${className} : BaseFragment(), ${viewName} {
    
<#if includeFactory>
    companion object {

    val TAG = "${className}"

	fun newInstance() : ${className} {
	    val fragment = ${className}()
	    
	    val args = Bundle()
	    fragment.arguments = args

	    return fragment
	}

    }

</#if>
    @InjectPresenter
    internal lateinit var local${presenterName}: ${presenterName}

<#if includeLayout>
    override fun onCreateView (inflater: LayoutInflater?, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater?.inflate(R.layout.${fragmentName}, container, false)
    }

</#if>
    override fun onViewCreated (view : View?, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

    }

}
