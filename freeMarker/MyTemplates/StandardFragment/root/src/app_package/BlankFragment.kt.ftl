package ${packageName}

<#if includeCallbacks>import android.content.Context</#if>
<#if includeCallbacks>import android.net.Uri</#if>
import android.os.Bundle
import android${SupportPackage}.app.Fragment
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
<#if includeFactory>

    companion object {

    // TODO: Rename parameter arguments, choose names that match
        const val ARG_PARAM_STRING = "paramString"
        const val ARG_PARAM_INT = "paramInt"

        fun newInstance(paramString: String, paramInt: Int): ${className} {
            val fragment = ${className}()
            val args = Bundle()
            args.putString(ARG_PARAM_STRING, paramString)
            args.putInt(ARG_PARAM_INT, paramInt)
            fragment.arguments = args
            return fragment
        }
    }
</#if>

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
        (activity as AppCompatActivity).setSupportActionBar(toolbar)
        (activity as AppCompatActivity).supportActionBar?.setDisplayHomeAsUpEnabled(true)
        (activity as AppCompatActivity).supportActionBar?.title = getString(R.string.title_fragment)
</#if>

<#if includeFactory>
        val mParamString = arguments?.getString(ARG_PARAM_STRING) ?: ""
        val mParamInt = arguments?.getInt(ARG_PARAM_INT) ?: 0
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
}
