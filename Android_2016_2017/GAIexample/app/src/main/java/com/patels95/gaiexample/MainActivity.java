package com.patels95.gaiexample;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import butterknife.BindView;
import butterknife.ButterKnife;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {

//    TextView mHelloText;
//    Button mButton;
//    EditText mEditText;

    @BindView(R.id.hello) TextView mHelloText;
    @BindView(R.id.button) Button mButton;
    @BindView(R.id.editText) EditText mEditText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ButterKnife.bind(this);

//        mHelloText = (TextView) findViewById(R.id.hello);
//        mButton = (Button) findViewById(R.id.button);
//        mEditText = (EditText) findViewById(R.id.editText);

        if (mButton != null) {
            mButton.setOnClickListener(this);
        }
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.button:
                // change hello text to "hello [name]"
                String text = "Hello " + mEditText.getText();
                mHelloText.setText(text);
        }
    }
}
