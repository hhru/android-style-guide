package ${packageName}.api

import ru.hh.android.shared_core_di.FeatureFacade
import ru.hh.android.shared_core_di.ScopeNames


class ${featureFacade} : FeatureFacade<${featureDeps}, ${featureApi}>(
        apiClass = ${featureApi}::class.java,
        depsClass = ${featureDeps}::class.java,
        appScopeName = ScopeNames.APP_SCOPE,
        featureScopeName = "${featureApi}Scope",
        featureScopeModules = { arrayOf(${featureModuleName}()) }
)