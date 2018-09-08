package ${packageName}

import android.os.Bundle
import android${SupportPackage}.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.support.design.widget.Snackbar
import android.support.v7.app.AppCompatActivity
import android.support.v7.widget.RecyclerView
import ${applicationPackage}.R

import kotlinx.android.synthetic.main.${fragment_name_list}.*


/**
 * A fragment representing a single ${ItemName} detail screen.
 */
class ${CollectionName}Fragment : Fragment() {

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        val rootView = inflater.inflate(R.layout.${fragment_name_list}, container, false)
        return rootView
    }

    override fun onViewCreated(view: View?, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        (activity as AppCompatActivity).setSupportActionBar(toolbar)
        (activity as AppCompatActivity).supportActionBar?.title = getString(R.string.title_fragment)

        fab.setOnClickListener { view ->
            Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
                    .setAction("Action", null).show()
        }

        setupRecyclerView(recyclerView)
    }


    private fun setupRecyclerView(recyclerView: RecyclerView) {
        recyclerView.adapter = ${ItemName}Adapter(Dummy${itemNamePlural}.ITEMS) { item ->
            activity.supportFragmentManager.inTransaction {
                replace(R.id.container, ${DetailName}Fragment.newInstance(item.id))
                addToBackStack(null)
            }
        }
    }
}
