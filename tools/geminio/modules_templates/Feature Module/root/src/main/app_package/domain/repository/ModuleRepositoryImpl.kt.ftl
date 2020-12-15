package ${packageName}.domain.repository

import toothpick.InjectConstructor

<#if needCreateInterfaceForRepository>
@InjectConstructor
internal class ${moduleRepositoryImplClassName} : ${moduleRepositoryClassName}
<#else>
@InjectConstructor
internal class ${moduleRepositoryClassName}
</#if>