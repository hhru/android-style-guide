package ${packageName}.${featurePackage}

import com.badoo.mvicore.feature.ActorReducerFeature
import ${packageName}.${featurePackage}.model.${effectName}
import ${packageName}.${featurePackage}.model.${newsName}
import ${packageName}.${featurePackage}.model.${stateName}
import ${packageName}.${featurePackage}.model.${wishName}
import toothpick.InjectConstructor

@InjectConstructor
internal class ${featureName}(
    actor: ${actorName}
) : ActorReducerFeature<${wishName}, ${effectName}, ${stateName}, ${newsName}> (
    actor = actor,
    bootstrapper = ${bootstrapperName}(),
    initialState = ${stateName}(),
    newsPublisher = ${newsPublisherName}(),
    reducer = ${reducerName}()
)
