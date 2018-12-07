package ${packageName}

<#if includeCallbacks>import android.content.Context</#if>
<#if includeCallbacks>import android.net.Uri</#if>
import android.os.Bundle
import android${SupportPackage}.app.Fragment
import android.support.v7.app.AppCompatActivity
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
<#if !includeLayout>import android.widget.TextView</#if>
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>
<#if includeToolbar>
import kotlinx.android.synthetic.main.${fragmentName}.*
</#if>

/**
 * A simple {@link Fragment} subclass.
<#if includeCallbacks>
 * Activities that contain this fragment must implement the
 * {@link ${className}.OnFragmentInteractionListener} interface
 * to handle interaction events.
</#if>
<#if includeFactory>
 * Use the {@link ${className}#newInstance} factory method to
 * create an instance of this fragment.
</#if>
 *
 */
class ${className} : Fragment() {

<#if includeCallbacks>
    private var mListener: OnFragmentInteractionListener? = null
</#if>

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
<#if includeLayout>
        val rootView = inflater.inflate(R.layout.${fragmentName}, container, false)
        return rootView
<#else>
        TextView textView = new TextView(getActivity());
        textView.setText(R.string.hello_blank_fragment);
        return textView;
</#if>
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
<#if includeToolbar>
        appCompatActivity {
            setSupportActionBar(toolbar)
            supportActionBar?.setDisplayHomeAsUpEnabled(true)
            supportActionBar?.title = getString(R.string.title_fragment)
        }
</#if>

<#if includeFactory>
        /** param - is property of FragmentCreator. It returns received parameter 
        * Warning: Use it only if create fabric method was used */
        // val parameter = param
</#if>
    }

<#if includeCallbacks>
    // TODO: Rename method, update argument and hook method into UI event
    fun onButtonPressed(uri: Uri) {
        if (mListener != null) {
            mListener!!.onFragmentInteraction(uri)
        }
    }

     override fun onAttach(context: Context?) {
        super.onAttach(context)
        if (context is OnFragmentInteractionListener) {
            mListener = context
        } else {
            throw RuntimeException(context!!.toString() + " must implement OnFragmentInteractionListener")
        }
    }

    override fun onDetach() {
        super.onDetach()
        mListener = null
    }

    /**
     * This interface must be implemented by activities that contain this
     * fragment to allow an interaction in this fragment to be communicated
     * to the activity and potentially other fragments contained in that
     * activity.
     * <p>
     * See the Android Training lesson <a href=
     * "http://developer.android.com/training/basics/fragments/communicating.html"
     * >Communicating with Other Fragments</a> for more information.
     */
    interface OnFragmentInteractionListener {
        // TODO: Update argument type and name
        fun onFragmentInteraction(uri: Uri)
    }
</#if>

<#if includeOptionsMenu>

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setHasOptionsMenu(true)
    }

    private val menuClear = 145

    override fun onCreateOptionsMenu(menu: Menu?, inflater: MenuInflater?) {
        super.onCreateOptionsMenu(menu, inflater)
        val item = menu?.add(Menu.NONE, menuClear, Menu.NONE, "Clear")
        item?.setIcon(R.drawable.ic_clear_white)
        item?.setShowAsAction(MenuItem.SHOW_AS_ACTION_ALWAYS)

        inflater?.inflate(R.menu.menu_fragment_sms, menu)
    }

    override fun onOptionsItemSelected(item: MenuItem?): Boolean {
        when (item?.itemId) {
            menuClear -> { /* action */ }
            R.id.menu_ok -> { /* action */ }
        }
        return super.onOptionsItemSelected(item)
    }
</#if>

<#if includeFactory>
    /** Fragment Creator in FileTemplates of the New menu. Cacher also has FragmentCreator gist. */
    companion object: FragmentCreator<Int>(::${className}) 
</#if>
}

<#if includeToolbar>
    // Allows to omit smth like (activity as? AppCompatActivity)?.setSupportActionbar(toolbar)
    // instead appCompatActivity { setSupportActionBar(toolbar) }
    inline fun Fragment.appCompatActivity(body: AppCompatActivity.() -> Unit) {
        (activity as? AppCompatActivity)?.body()
    }               
</#if>
