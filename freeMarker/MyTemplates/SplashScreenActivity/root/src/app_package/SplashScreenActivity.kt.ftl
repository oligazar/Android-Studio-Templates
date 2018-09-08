package ${packageName}

import android.content.Intent
import android.os.Bundle
import android${SupportPackage}.app.AppCompatActivity

/**
 * A simple {@link Activity} subclass.
 */
class ${className} : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        intent = Intent(this, ${classToLaunchName}::class.java)
        startActivityAndFinishCurrent(intent)
    }

    private fun startActivityAndFinishCurrent(intent: Intent) {
        startActivity(intent)
        finish()
    }
}
