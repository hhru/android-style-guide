package ${packageName}.${fragmentPackage}.model

<#if needDesignSample == true>
import ru.hh.android.mvvm.LCE
import ru.hh.cells.interfaces.Cell
</#if>

internal data class ${uiStateName}(
    <#if needDesignSample == true>
    val listCells: LCE<List<Cell>>
    <#else>
    val todo: Nothing
    </#if>
)