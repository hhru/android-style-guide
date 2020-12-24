package ${packageName}.feature

import com.badoo.mvicore.element.Actor
import io.reactivex.Observable
import ${packageName}.feature.element.${featureState}
import ${packageName}.feature.element.${featureWish}
import ${packageName}.feature.element.${featureEffect}
import ru.hh.core_rx.SchedulersProvider
import javax.inject.Inject

internal class ${featureActor} @Inject constructor(
	private val schedulersProvider: SchedulersProvider
): Actor<${featureState}, ${featureWish}, ${featureEffect}>  {
	
	override fun invoke(
        state: ${featureState},
        action: ${featureWish}
    ): Observable<out ${featureEffect}> {

    	return when(action) {
    		is ${featureWish}.StartLoading -> Observable.just(${featureEffect}.Loading)
    	}

    }

}