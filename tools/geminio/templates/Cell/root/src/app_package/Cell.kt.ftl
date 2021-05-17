package ${packageName}

import androidx.recyclerview.widget.RecyclerView
import kotlinx.android.synthetic.main.${cellLayoutName}.view.*
import ru.hh.shared.core.ui.cells_framework.cells.diffing.CellDiffingStrategy
import ru.hh.shared.core.ui.cells_framework.cells.diffing.strategies.IdContentDiffingStrategy
import ru.hh.shared.core.ui.cells_framework.cells.interfaces.Cell
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

internal class ${cellClassName}(
    private val diffId: String
) : Cell {

    override val diffingStrategy: CellDiffingStrategy by IdContentDiffingStrategy(
        diffId = diffId,
        diffContent = TODO()
    )

    override fun getLayoutId(): Int = R.layout.${cellLayoutName}

    override fun bind(viewHolder: RecyclerView.ViewHolder, payloads: List<Any>) {
        with(viewHolder.itemView) {
            // TODO bind fields from model to layout
        }
    }
}
