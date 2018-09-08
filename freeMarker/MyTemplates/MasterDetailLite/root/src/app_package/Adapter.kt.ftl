package ${packageName}

import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView

import ${applicationPackage}.R
import ${applicationPackage}.dummy.DummyItem

class ${ItemName}Adapter(private val mValues: List<Dummy${ItemName}>,
                   private val onClick: (Dummy${ItemName}) -> Unit) : RecyclerView.Adapter<${ItemName}ViewHolder>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ${ItemName}ViewHolder {
        val view = LayoutInflater.from(parent.context)
                .inflate(R.layout.${item_name}, parent, false)
        return ${ItemName}ViewHolder(view)
    }

    override fun onBindViewHolder(holder: ${ItemName}ViewHolder, position: Int) {
        holder.m${ItemName} = mValues[position]
        holder.mIdView.text = mValues[position].id
        holder.mContentView.text = mValues[position].content

        holder.mView.setOnClickListener { onClick(holder.mItem) }
    }

    override fun getItemCount(): Int = mValues.size
}

class ${ItemName}ViewHolder(val mView: View) : RecyclerView.ViewHolder(mView) {
    val mIdView: TextView = mView.findViewById<View>(R.id.id) as TextView
    val mContentView: TextView = mView.findViewById<View>(R.id.content) as TextView
    lateinit var m${ItemName}: Dummy${ItemName}

    override fun toString(): String = super.toString() + mContentView.text
}