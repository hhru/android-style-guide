package ${packageName}

import io.reactivex.Single
import ${packageName}.converter.${converterName}
import ${packageName}.model.${networkModelName}
import toothpick.InjectConstructor


@InjectConstructor
internal class ${repositoryName}(
    private val api: ${networkApiName},
    private val converter: ${converterName}
) {

    fun get${entityPrefix}(): Single<${entityPrefix}> {
        return api.get${entityPrefix}("todo")
            .map { converter.convert(it) }
    }

}