package ${packageName}

import ru.hh.shared.core.di.FeatureFacade


class ${featureFacade} : FeatureFacade<${featureDeps}, ${featureApi}>(
    apiClass = ${featureApi}::class.java,
    depsClass = ${featureDeps}::class.java,
    featureScopeName = "${featureApi}Scope",
    featureScopeModules = {
        arrayOf(${featureModuleName}())
    }
)