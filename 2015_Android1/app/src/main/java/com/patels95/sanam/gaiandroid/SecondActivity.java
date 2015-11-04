package com.patels95.sanam.gaiandroid;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.widget.TextView;
import android.widget.Toast;

public class SecondActivity extends ActionBarActivity {

    TextView mUserName;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        mUserName = (TextView) findViewById(R.id.user_name);

        Intent mainIntent = getIntent();
        String name = mainIntent.getStringExtra(MainActivity.USER_NAME);
        mUserName.setText(name);
    }

}
