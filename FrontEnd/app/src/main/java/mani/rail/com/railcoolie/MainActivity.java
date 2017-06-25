package mani.rail.com.railcoolie;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        Button b = (Button) findViewById(R.id.signup_button_start);
        b.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {


                Intent i = new Intent(getBaseContext(),SignupActivity.class);
                startActivity(i);

            }
        });

        Button b1 = (Button) findViewById(R.id.login_button_start);
        b1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {


                Intent i = new Intent(getBaseContext(),LoginActivity.class);
                startActivity(i);

            }
        });
    }
}
