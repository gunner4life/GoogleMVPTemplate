package ${packageName};

import ${applicationPackage}.R;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.support.v4.app.Fragment;
import android.support.annotation.NonNull;

public class ${fragmentClass} extends Fragment implements ${contractClass}.View {

	private ${contractClass}.Presenter presenter;

	public static ${fragmentClass} newInstance() {
        return new ${fragmentClass}();
    }

	@Override
    public void onResume() {
        super.onResume();
        presenter.start();
    }

    @Override
    public void setPresenter(@NonNull ${contractClass}.Presenter presenter) {
        this.presenter = presenter;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View root = inflater.inflate(R.layout.${fragmentLayoutName}, container, false);
        return root;
    }

}
