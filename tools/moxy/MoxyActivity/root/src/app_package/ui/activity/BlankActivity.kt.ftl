package ${packageName}.ui.activity${dotSubpackage}

import android.content.Context
import android.content.Intent
import android.os.Bundle
import ${packageName}.R
<#if useSubPackage??>import ${packageName}.ui.activity.BaseActivity</#if>
import com.arellomobile.mvp.presenter.InjectPresenter
import ${packageName}.presentation.view${dotSubpackage}.${viewName}
import ${packageName}.presentation.presenter${dotSubpackage}.${presenterName}


class ${className} : BaseActivity(), ${viewName} {
    
<#if includeFactory>
    companion object {
        val TAG = "${className}"

        fun getIntent(context: Context): Intent {
            val intent = Intent(context, ${className}::class.java)

            return intent
        }

    }

</#if>


    @InjectPresenter
    internal lateinit var local${presenterName}: ${presenterName}

<#if includeLayout>

     override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${activityName})
    }

</#if>

}
