package ${packageName}

import android.content.Context
import android.util.AttributeSet
import ru.hh.shared.core.ui.design_system.utils.widget.autoRecycleAttrs
import ru.hh.shared.core.ui.design_system.utils.widget.inflateView
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>


internal class ${viewName} @JvmOverloads constructor(
    context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0
) : ${baseViewName}(context, attrs, defStyleAttr) {

    init {
        inflateView(R.layout.${viewLayoutName})
        <#if generateAttrs == true>

        autoRecycleAttrs(context, attrs, R.styleable.${viewName}, defStyleAttr) { typedArray ->
            val yourCustomAttr = typedArray.getString(R.styleable.${viewName}_yourCustomAttr)
            TODO()
        }
        </#if>
    }

}