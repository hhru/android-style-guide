package ${packageName}.${fragmentPackage}

import ${packageName}.${fragmentPackage}.model.${paramsName}
import toothpick.config.Module
import toothpick.ktp.binding.bind


internal class ${fragmentPrefix}Module(params: ${paramsName}) : Module() {

    init {
        bind<${fragmentPrefix}Params>().toInstance(params)
    }

}