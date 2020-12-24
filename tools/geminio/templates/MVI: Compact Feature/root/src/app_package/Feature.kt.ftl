package ${packageName}

import com.badoo.mvicore.element.Actor
import com.badoo.mvicore.element.Bootstrapper
import com.badoo.mvicore.element.NewsPublisher
import com.badoo.mvicore.element.Reducer
import com.badoo.mvicore.feature.ActorReducerFeature
import io.reactivex.Observable
import ${packageName}.${featureName}.State
import ${packageName}.${featureName}.Wish
import ${packageName}.${featureName}.Effect
import ${packageName}.${featureName}.News

internal class ${featureName} : ActorReducerFeature<Wish, Effect, State, News>(
    initialState = State(),
    bootstrapper = BootstrapperImpl(),
    actor = ActorImpl(),
    reducer = ReducerImpl(),
    newsPublisher = NewsPublisherImpl()
) {

    data class State(
        val yourData: Any? = null
    )

    sealed class Wish

    sealed class Effect

    sealed class News

    class BootstrapperImpl : Bootstrapper<Wish> {
        override fun invoke(): Observable<Wish> {
            TODO()
        }
    }

    class ActorImpl : Actor<State, Wish, Effect> {
        override fun invoke(state: State, wish: Wish): Observable<Effect> = when (wish) {
            TODO() -> Observable.just(TODO())
        }
    }

    class ReducerImpl : Reducer<State, Effect> {
        override fun invoke(state: State, effect: Effect): State = when (effect) {
            TODO() -> state.copy()
        }
    }

    class NewsPublisherImpl : NewsPublisher<Wish, Effect, State, News> {
        override fun invoke(wish: Wish, effect: Effect, state: State): News? = when {
            TODO() -> TODO()
            else -> null
        }
    }

}
