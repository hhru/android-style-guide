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
    private val uiConverter: ${uiConverterName}
) : MviViewModel<${uiEventName}, ${uiStateName}, ${mviStateName}, ${mviNewsName}>() {

    override val featureStateObservable: Observable<${mviStateName}> = Observable.wrap(TODO())

    override val featureNewsObservable: Observable<${mviNewsName}> = Observable.wrap(TODO())

    override val uiStateConverter: (${mviStateName}) -> ${uiStateName} = { state ->
        uiConverter.convert(${mviStateName})
    }

    override fun processNews(news: ${mviNewsName}) {
        TODO()
    }

}
<#else>
@InjectConstructor
internal class ${viewModelName}(
    private val params: ${paramsName},
) : ManualStateViewModel<${uiEventName}, ${uiStateName}>(
    initialState = TODO()
) {

}
</#if>
