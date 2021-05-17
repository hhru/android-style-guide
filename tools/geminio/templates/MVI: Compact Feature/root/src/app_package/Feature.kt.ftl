package ${packageName}

import com.badoo.mvicore.element.Actor
import com.badoo.mvicore.element.Bootstrapper
import com.badoo.mvicore.element.NewsPublisher
import com.badoo.mvicore.element.Reducer
import com.badoo.mvicore.feature.ActorReducerFeature
import io.reactivex.Observable
import ${packageName}.${featureName}.Effect
import ${packageName}.${featureName}.News
import ${packageName}.${featureName}.State
import ${packageName}.${featureName}.Wish
import ru.hh.shared.core.rx.SchedulersProvider
import toothpick.InjectConstructor

@InjectConstructor
internal class ${featureName}(
    actor: ActorImpl
) : ActorReducerFeature<Wish, Effect, State, News>(
    initialState = State(),
    bootstrapper = BootstrapperImpl(),
    actor = actor,
    reducer = ReducerImpl(),
    newsPublisher = NewsPublisherImpl()
) {

    data class State(
        val yourData: Any? = null
    )

    sealed class Wish {

    }

    sealed class Effect {

    }

    sealed class News {

    }

    class BootstrapperImpl : Bootstrapper<Wish> {
        override fun invoke(): Observable<Wish> {
            TODO()
        }
    }

    @InjectConstructor
    class ActorImpl(
        private val schedulersProvider: SchedulersProvider
    ) : Actor<State, Wish, Effect> {
        override fun invoke(state: State, wish: Wish): Observable<Effect> {
            return when(wish) {
                TODO() -> Observable.just(TODO())
            }
        }
    }

    class ReducerImpl : Reducer<State, Effect> {
        override fun invoke(state: State, effect: Effect): State {
            return when(effect) {
                TODO() -> state.copy()
            }
        }
    }

    class NewsPublisherImpl : NewsPublisher<Wish, Effect, State, News> {
        override fun invoke(wish: Wish, effect: Effect, state: State): News? {
            return when(effect) {
                TODO() -> TODO()
                else -> null
            }
        }
    }

}
