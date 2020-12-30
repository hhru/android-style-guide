package ${packageName}.${fragmentPackage}.model

import ru.hh.android.shared_core_model.AsyncRes
import ru.hh.cells.interfaces.Cell

internal data class ${uiStateName}(
    <#if needDesignSample == true>
    val listCells: AsyncRes<List<Cell>>
    <#else>
    val todo: Nothing
    </#if>
)