package ${packageName}.di.module

<#if needCreateApiInterface>
import ${packageName}.data.remote.api.${moduleNetworkApiClassName}
import ${packageName}.di.provider.${moduleNetworkApiProviderClassName}
</#if>
<#if needCreateRepositoryWithInteractor>
import ${packageName}.domain.interactor.${moduleInteractorClassName}
import ${packageName}.domain.repository.${moduleRepositoryClassName}
<#if needCreateInterfaceForRepository>
import ${packageName}.domain.repository.${moduleRepositoryImplClassName}
</#if>
</#if>
<#if needCreatePresentationLayer>
import ${packageName}.presentation.presenter.${modulePresenterClassName}
</#if>
import toothpick.config.Module
import toothpick.ktp.binding.bind


internal class ${moduleNetworkDiModuleClassName} : Module() {

    init {
        <#if needCreateApiInterface>
        bind<${moduleNetworkApiClassName}>().toProvider(${moduleNetworkApiProviderClassName}::class).providesSingleton()
        </#if>
        <#if needCreateRepositoryWithInteractor>
        <#if needCreateInterfaceForRepository>
        bind<${moduleRepositoryClassName}>().to(${moduleRepositoryImplClassName}::class)
        <#else>
        bind<${moduleRepositoryClassName}>()
        </#if>
        bind<${moduleInteractorClassName}>()
        </#if>
        <#if needCreatePresentationLayer>
        bind<${modulePresenterClassName}>().singleton()
        </#if>
    }

}