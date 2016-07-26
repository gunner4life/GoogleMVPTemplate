package ${packageName};

import android.support.annotation.NonNull;

public class ${presenterClass} implements ${contractClass}.Presenter {

	@NonNull
	private final ${contractClass}.View contractView;

    public ${presenterClass}(@NonNull ${contractClass}.View contractView) {
    	this.contractView = contractView;
    	contractView.setPresenter(this);
    }

    @Override
    public void start() {
    }
}
