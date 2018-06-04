package ${packageName}.screen

import android.content.Context
import android.content.Intent
import android.os.Bundle
import ru.hh.android.R
import ru.hh.android.base.ui.BaseActivity
import com.arellomobile.mvp.presenter.InjectPresenter
import ${packageName}.view.${viewName}
import ${packageName}.presenter.${presenterName}


class ${className} : BaseActivity(), ${viewName} {
    
<#if includeFactory>
    companion object {
        private const val TAG = "${className}"

        fun getIntent(context: Context): Intent {
            val intent = Intent(context, ${className}::class.java)

            return intent
        }

    }

</#if>


    @InjectPresenter
    internal lateinit var presenter: ${presenterName}

<#if includeLayout>

     override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${activityName})
    }

</#if>

    override fun onBackPressedInternal(): Boolean {
        TODO("not implemented")
    }

}
