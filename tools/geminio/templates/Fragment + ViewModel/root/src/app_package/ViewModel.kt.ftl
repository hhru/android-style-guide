package ${packageName}.${fragmentPackage}

<#if useMviViewModel == true>
import io.reactivex.Observable
import ru.hh.android.mvvm.viewmodel.MviViewModel
import ru.hh.core_rx.SchedulersProvider
<#else>
import ru.hh.android.mvvm.viewmodel.ManualStateViewModel
</#if>
import ${packageName}.${fragmentPackage}.model.${uiStateName}
import ${packageName}.${fragmentPackage}.model.${uiEventName}
import ${packageName}.${fragmentPackage}.model.${paramsName}
import toothpick.InjectConstructor


<#if useMviViewModel == true>
@InjectConstructor
internal class ${viewModelName}(
    override val schedulers: SchedulersProvider,
    private val params: ${paramsName},
) : MviViewModel<${uiEventName}, ${uiStateName}, ${mviStateName}, ${mviNewsName}>() {

    override val featureStateObservable: Observable<${mviStateName}> = TODO()

    override val featureNewsObservable: Observable<${mviNewsName}> = TODO()

    override val uiStateConverter: (${mviStateName}) -> ${uiStateName} = TODO()

    override fun processNews(news: ${mviNewsName}) {
        TODO()
    }

}
<#else>
@InjectConstructor
internal class ${viewModelName}(
    private val params: ${paramsName},
) : ManualStateViewModel<${uiEventName}, ${uiStateName}>() {

}
</#if>
