package ${packageName}.api

import toothpick.config.Module


internal class ${featureModuleName}: Module() {
	
	init {
		bind(${featureApi}::class.java).to(${featureApi}Impl::class.java)
	}
}