package ${packageName}.${featurePackage}

import com.badoo.mvicore.element.Actor
import io.reactivex.Observable
import ${packageName}.${featurePackage}.model.${effectName}
import ${packageName}.${featurePackage}.model.${stateName}
import ${packageName}.${featurePackage}.model.${wishName}
import ru.hh.shared.core.rx.SchedulersProvider
import toothpick.InjectConstructor

@InjectConstructor
internal class ${actorName}(
	private val schedulersProvider: SchedulersProvider
) : Actor<${stateName}, ${wishName}, ${effectName}>  {
	
	override fun invoke(state: ${stateName}, wish: ${wishName}): Observable<${effectName}> {
	    return when(wish) {
            TODO() -> Observable.just(TODO())
        }
    }

}
