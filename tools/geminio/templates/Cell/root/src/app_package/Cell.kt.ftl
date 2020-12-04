package ${packageName}

import androidx.recyclerview.widget.RecyclerView
import kotlinx.android.synthetic.main.${cellLayoutName}.view.*
import ru.hh.cells.interfaces.Cell
import ${applicationPackage}.R


internal data class ${cellClassName}(
    // TODO
) : Cell {

    override fun getLayoutId(): Int = R.layout.${cellLayoutName}

    override fun bind(viewHolder: RecyclerView.ViewHolder, payloads: List<Any>) {
        val model = this
        with(viewHolder.itemView) {
            // TODO bind fields from model to layout
        }
    }
}