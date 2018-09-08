package ${packageName}

import android.os.Bundle
import android.support.v4.app.FragmentManager
import android.support.v7.app.AppCompatActivity
import android.util.Log
import us.kostenko.mockingbird.R
import ${applicationPackage}.R


/**
 * Activity container for fragments
 */
class ${ItemName}ContainerActivity : AppCompatActivity(), FragmentManager.OnBackStackChangedListener {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${activity_name_container})

        if (savedInstanceState == null) {
            supportFragmentManager.inTransaction {
                    replace(R.id.container, ${CollectionName}Fragment())
            }
        }

        supportFragmentManager.addOnBackStackChangedListener(this)
    }

    override fun onBackStackChanged() {
        Log.d("onBackStackChanged", "BackStack: ${supportFragmentManager.backStackEntryCount}")
        shouldDisplayHomeUp()
    }

    override fun onSupportNavigateUp(): Boolean {   //  This method is called when the up button is pressed. Just pop the back stack.
        if (supportFragmentManager.backStackEntryCount > 0) {
            supportFragmentManager.popBackStack()
            return false
        }
        return true
    }

    private fun shouldDisplayHomeUp() { //  Enable Up button only if there are entries in the back stack
        val canBack = supportFragmentManager.backStackEntryCount > 0
        supportActionBar?.setDisplayHomeAsUpEnabled(canBack)
    }
}
