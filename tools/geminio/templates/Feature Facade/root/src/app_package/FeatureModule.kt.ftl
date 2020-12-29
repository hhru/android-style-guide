package ${packageName}

import toothpick.config.Module
import toothpick.ktp.binding.bind


internal class ${featureModuleName}(
    deps: ${featureDeps}
): Module() {
	
	init {
	    bind<${featureApi}>().toClass<${featureApiImpl}>()
	    bind<${featureDeps}>().toInstance(deps)
	}

}