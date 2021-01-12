package ${packageName}.converter

import ${packageName}.model.${networkModelName}
import toothpick.InjectConstructor


@InjectConstructor
internal class ${converterName} {

    fun convert(networkModel: ${networkModelName}): ${entityPrefix} {
        return ${entityPrefix}(
            id = networkModel.id
        )
    }

}