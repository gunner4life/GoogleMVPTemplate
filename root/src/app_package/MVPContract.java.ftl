package ${packageName};

public interface ${contractClass} {
    
    interface View {
    	void setPresenter(Presenter presenter);
    }

    interface Presenter {
    	void start();
    }
}