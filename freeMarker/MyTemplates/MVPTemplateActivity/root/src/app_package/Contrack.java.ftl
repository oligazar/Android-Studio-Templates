package ${packageName};
 
import com.example.android.presentation.base.MvpPresenter;
import com.example.presentation.base.MvpView;
 
public interface ${className}Contract{
    
    interface View extends MvpView {
 
    }
 
    interface Presenter extends MvpPresenter<View> {
 
    }
}