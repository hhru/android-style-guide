package ${packageName}.presentation.presenter${dotSubpackage}

import com.arellomobile.mvp.InjectViewState
import ${packageName}.R
<#if useSubPackage??>import ${packageName}.presentation.presenter.BasePresenter</#if>
import ${packageName}.presentation.view${dotSubpackage}.${viewName}

@InjectViewState
class ${presenterName} : BasePresenter<${viewName}>() {

}
