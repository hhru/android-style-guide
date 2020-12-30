package ${packageName}.${featurePackage}

import com.badoo.mvicore.element.NewsPublisher
import ${packageName}.${featurePackage}.model.${stateName}
import ${packageName}.${featurePackage}.model.${wishName}
import ${packageName}.${featurePackage}.model.${effectName}
import ${packageName}.${featurePackage}.model.${newsName}


internal class ${newsPublisherName} : NewsPublisher<${wishName}, ${effectName}, ${stateName}, ${newsName}> {

    override fun invoke(wish: ${wishName}, effect: ${effectName}, state: ${stateName}): ${newsName}? {
        return when(effect) {
            TODO() -> TODO()
            else -> null
        }
    }
    
}