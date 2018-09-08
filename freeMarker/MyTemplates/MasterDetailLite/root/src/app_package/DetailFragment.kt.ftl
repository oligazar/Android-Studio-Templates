package ${packageName}

import android.os.Bundle
import android${SupportPackage}.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ${applicationPackage}.R
import kotlinx.android.synthetic.main.${fragment_name_detail}.*

/**
 * A fragment representing a single ${ItemName} detail screen.
 */
class ${DetailName}Fragment : Fragment() {

    /**
     * The dummy content this fragment is presenting.
     */
    private var m${ItemName}: Dummy${ItemName}? = null

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? {
        val rootView = inflater.inflate(R.layout.${fragment_name_detail}, container, false)

        if (arguments.containsKey(ARG_ITEM_ID)) {
            // Load the dummy content specified by the fragment
            // arguments.
            m${ItemName} = Dummy${itemNamePlural}.ITEM_MAP[arguments.getString(ARG_ITEM_ID)]
        }

        return rootView
    }

    override fun onViewCreated(view: View?, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        (activity as AppCompatActivity).setSupportActionBar(toolbar)
        (activity as AppCompatActivity).supportActionBar?.title = getString(R.string.title_fragment)

        // Show the dummy content as text in a TextView.
        trackDetail.text = m${ItemName}?.details
    }

    companion object {
        /**
         * The fragment argument representing the item ID that this fragment
         * represents.
         */
        val ARG_ITEM_ID = "item_id"

        fun newInstance(itemId: String): ${DetailName}Fragment {
            val fragment = ${DetailName}Fragment()
            val bundle = Bundle()
            bundle.putString(ARG_ITEM_ID, itemId)

            fragment.arguments = bundle
            return fragment
        }
    }
}
