package ${packageName}.di

import ${packageName}.${networkApiName}
import ru.hh.shared.core.network.auth_source.AuthZoneApiFactory
import ru.hh.shared.core.network.network_source.ServerUrl
import toothpick.InjectConstructor
import javax.inject.Provider


@InjectConstructor
internal class ${apiProviderName}(
    private val authZoneApiFactory: AuthZoneApiFactory,
    private val serverUrl: ServerUrl
) : Provider<${networkApiName}> {

    override fun get(): ${networkApiName} {
        return authZoneApiFactory.createAuthZone(${networkApiName}::class.java, serverUrl)
    }

}