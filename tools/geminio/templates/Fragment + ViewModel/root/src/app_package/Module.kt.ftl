package ${packageName}.${fragmentPackage}

import ${packageName}.${fragmentPackage}.model.${paramsName}
import toothpick.config.Module
import toothpick.ktp.binding.bind


internal class ${moduleName}(params: ${paramsName}) : Module() {

    init {
        bind<${paramsName}>().toInstance(params)
    }

}