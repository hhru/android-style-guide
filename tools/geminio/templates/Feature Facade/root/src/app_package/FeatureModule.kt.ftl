package ${packageName}

import toothpick.config.Module
import toothpick.ktp.binding.bind

internal class ${featureModuleName} : Module() {
	
	init {
	    bind<${featureApi}>().toClass<${featureApiImpl}>()
	}

}
