package ${packageName}.feature

import com.badoo.mvicore.element.Reducer
import ${packageName}.feature.element.${featureState}
import ${packageName}.feature.element.${featureEffect}


internal class ${featureReducer}: Reducer<${featureState}, ${featureEffect}> {

    override fun invoke(state: ${featureState}, effect: ${featureEffect}): ${featureState} {
    	 return when (effect) {
    	 	${featureEffect}.Loading -> state
    	 }
    }
}