package ${packageName};

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import ${applicationPackage}.R;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;

public class ${activityClass} extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayoutName});

        ${fragmentClass} fragment = (${fragmentClass}) getSupportFragmentManager().findFragmentById(R.id.content);
        if (fragment == null) {
        	fragment = ${fragmentClass}.newInstance();
        	FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
        	transaction.add(R.id.content, fragment);
        	transaction.commit();
        }

        new ${presenterClass}(fragment);
    }

}
