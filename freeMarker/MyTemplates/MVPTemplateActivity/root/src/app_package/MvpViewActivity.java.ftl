package ${packageName};
 
import com.example.android.presentation.base.*;
public class ${className}Activity extends BaseActivity implements ${className}Contract.View {
 
    ${classname}Contract.Presenter presenter;
    
    @Override
    protected void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
 
        presenter = new ${className}Presenter();
        presenter.attachView(this);
    }
 
    @Override
    protected void onDestroy() {
        super.onDestroy();
        presenter.detachView();
    }
}