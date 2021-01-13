package ${packageName}.di

import ${packageName}.${networkApiName}
import ${packageName}.${repositoryName}
import toothpick.config.Module
import toothpick.ktp.binding.bind


internal class ${moduleName} : Module() {

    init {
        bind<${networkApiName}>().toProvider(${apiProviderName}::class).singleton()
        bind<${repositoryName}>().singleton()
    }

}