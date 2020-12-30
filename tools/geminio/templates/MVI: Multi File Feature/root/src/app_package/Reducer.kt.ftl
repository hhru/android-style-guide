package ${packageName}.${featurePackage}

import com.badoo.mvicore.element.Reducer
import ${packageName}.${featurePackage}.model.${stateName}
import ${packageName}.${featurePackage}.model.${effectName}


internal class ${reducerName}: Reducer<${stateName}, ${effectName}> {

    override fun invoke(state: ${stateName}, effect: ${effectName}): ${stateName} {
        return when(effect) {
            TODO() -> state.copy()
        }
    }

}