package com.kingroot.kinguser.activitys;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import cloudsdk.ext.p008kr.RootConst;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.akh;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class RiskPopActivity extends Activity {
    @Override // android.app.Activity
    protected void onStop() {
        finish();
        super.onStop();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_common_dialog);
        ady.m12308tK().mo1746bi(100473);
        findViewById(R.id.outside_title_layout).setBackgroundResource(R.drawable.red_bg);
        ((ImageView) findViewById(R.id.title_icon)).setImageResource(R.drawable.dialogs_dangerous);
        Button button = (Button) findViewById(R.id.button_left);
        button.setText(C3953zi.m1311pr().getString(R.string.security_protect_pop_dialog_cancel));
        button.setTextColor(C3953zi.m1311pr().getColor(R.color.blue_2));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.activitys.RiskPopActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().mo1746bi(100475);
                RiskPopActivity.this.finish();
            }
        });
        Button button2 = (Button) findViewById(R.id.button_right);
        button2.setText(C3953zi.m1311pr().getString(R.string.security_protect_pop_dialog_process));
        button2.setTextColor(C3953zi.m1311pr().getColor(R.color.red_1));
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.activitys.RiskPopActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().mo1746bi(100474);
                SecurityProtectActivity.m12606f(null, true);
            }
        });
        ((TextView) findViewById(R.id.title)).setText(C3953zi.m1311pr().getString(R.string.security_protect_pop_dialog_title));
        int intExtra = getIntent().getIntExtra(RootConst.KEY_PROGRESS_COUNT, 0);
        if (intExtra >= 13) {
            intExtra = 13;
        }
        ((TextView) findViewById(R.id.item_content)).setText(String.format(C3953zi.m1311pr().getString(R.string.security_protect_pop_dialog_desc), Integer.valueOf(intExtra)));
        aks.m11143BP().m11006EW();
    }

    /* renamed from: g */
    public static void m12612g(Context context, int i) {
        if (!akh.m11295Au()) {
            try {
                Intent intent = new Intent(context, RiskPopActivity.class);
                intent.addFlags(268435456);
                intent.putExtra(RootConst.KEY_PROGRESS_COUNT, i);
                context.startActivity(intent);
            } catch (Exception e) {
            }
        }
    }
}
