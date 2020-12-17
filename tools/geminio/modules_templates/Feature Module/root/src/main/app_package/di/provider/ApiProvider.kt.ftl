package ${packageName}.di.provider

import ${packageName}.data.remote.api.${moduleNetworkApiClassName}
import ru.hh.network_auth_source.AuthZoneApiFactory
import ru.hh.network_source.ServerUrl
import javax.inject.Provider
import toothpick.InjectConstructor


@InjectConstructor
internal class ${moduleNetworkApiProviderClassName}(
    private val authZoneApiFactory: AuthZoneApiFactory,
    private val serverUrl: ServerUrl
) : Provider<${moduleNetworkApiClassName}> {

    override fun get(): ${moduleNetworkApiClassName} {
        return authZoneApiFactory.createAuthZone(${moduleNetworkApiClassName}::class.java, serverUrl)
    }

}