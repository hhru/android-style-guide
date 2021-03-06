package ${packageName}.${fragmentPackage}

<#if useMviViewModel == true>
import io.reactivex.Observable
import ru.hh.shared.core.mvvm.viewmodel.MviViewModel
import ru.hh.shared.core.rx.SchedulersProvider
<#else>
import ru.hh.shared.core.mvvm.viewmodel.ManualStateViewModel
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
        uiConverter.convert(state)
    }

    override fun processNews(news: ${mviNewsName}) {
        TODO()
    }

    override fun onCleared() {
        super.onCleared()
        // TODO Here you need to dispose of features that belong only to the current screen
    }

}
<#else>
@InjectConstructor
internal class ${viewModelName}(
    private val params: ${paramsName},
) : ManualStateViewModel<${uiEventName}, ${uiStateName}>(
    initialState = TODO()
) {

    override fun onFirstAttach() {
        TODO()
    }
}
</#if>
