package ${packageName}.${fragmentPackage}.model

<#if needDesignSample == true>
import ru.hh.shared.core.mvvm.LCE
import ru.hh.shared.core.ui.cells_framework.cells.interfaces.Cell
</#if>

internal data class ${uiStateName}(
    <#if needDesignSample == true>
    val listCells: LCE<List<Cell>>
    <#else>
    val todo: Nothing
    </#if>
)