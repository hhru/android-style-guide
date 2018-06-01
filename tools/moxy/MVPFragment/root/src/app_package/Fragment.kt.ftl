package com.redmadrobot.app.presentation.${subPackage}.fragment;


import com.redmadrobot.app.R

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.arellomobile.mvp.presenter.InjectPresenter
import com.arellomobile.mvp.presenter.ProvidePresenter
import com.redmadrobot.app.presentation.${subPackage}.view.${viewName};
import com.redmadrobot.app.presentation.${subPackage}.presenter.${presenterName};
import com.redmadrobot.app.presentation.base.fragment.BaseFragment


class ${className} : BaseFragment()<#if generateView>, ${viewName}</#if>{
    
    companion object {

    val TAG = "${className}"

    fun newInstance() : ${className} {
        val fragment = ${className}()
        
        val args = Bundle()
        fragment.arguments = args

        return fragment
        }

    }
    @InjectPresenter
    internal lateinit var presenter: ${presenterName}


    @ProvidePresenter
    fun providePresenter() : ${presenterName}{
        return ${presenterName}()
    }

<#if includeLayout>
    override fun onCreateView (inflater: LayoutInflater?, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater?.inflate(R.layout.${fragmentName}, container, false)
    }

</#if>
    override fun onViewCreated (view : View?, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

    }

}




