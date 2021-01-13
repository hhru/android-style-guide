package ${packageName}.di

import ${packageName}.${networkApiName}
import ru.hh.network_auth_source.AuthZoneApiFactory
import ru.hh.network_source.ServerUrl
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