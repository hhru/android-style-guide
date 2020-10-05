package ${packageName}.feature

import com.badoo.mvicore.feature.ActorReducerFeature
import ${packageName}.feature.element.${featureState}
import ${packageName}.feature.element.${featureWish}
import ${packageName}.feature.element.${featureEffect}
import ${packageName}.feature.element.${featureNews}
import javax.inject.Inject


internal class ${featureName} @Inject constructor(
	actor: ${featureActor}
): ActorReducerFeature<${featureWish},
        ${featureEffect},
        ${featureState},
        ${featureNews}>
(
        actor = actor,
        bootstrapper =  ${featureBootstrapper}(),
        initialState = ${featureState}.LoadingState,
        newsPublisher = ${featureNewsPublisher}(),
        reducer = ${featureReducer}()
)