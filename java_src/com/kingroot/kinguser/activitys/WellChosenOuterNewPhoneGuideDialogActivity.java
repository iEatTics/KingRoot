package com.kingroot.kinguser.activitys;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.common.framework.main.MainExitReceiver;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class WellChosenOuterNewPhoneGuideDialogActivity extends Activity {
    private int ajg;
    private int ajh;

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        MainExitReceiver.m13404jF();
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(32, 32);
        getWindow().setFlags(262144, 262144);
        setContentView(R.layout.dialog_praise_layout);
        Intent intent = getIntent();
        if (intent != null) {
            this.ajg = intent.getIntExtra("extra_app_number", 0);
            this.ajh = intent.getIntExtra("extra_show_type", 0);
        }
        ((ImageView) findViewById(R.id.title_icon)).setImageResource(R.drawable.well_cheose_outer_guide_dialig_title);
        Button button = (Button) findViewById(R.id.button_left);
        button.setText(C3953zi.m1311pr().getString(R.string.apps_market_well_chosen_outer_new_phone_guide_left_btn));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.activitys.WellChosenOuterNewPhoneGuideDialogActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AppsMarketWellChosenAppsActivity.m12635f(WellChosenOuterNewPhoneGuideDialogActivity.this, WellChosenOuterNewPhoneGuideDialogActivity.this.ajh);
                ady.m12308tK().mo1746bi(100649);
                WellChosenOuterNewPhoneGuideDialogActivity.this.finish();
            }
        });
        Button button2 = (Button) findViewById(R.id.button_right);
        button2.setText(C3953zi.m1311pr().getString(R.string.apps_market_well_chosen_outer_new_phone_guide_right_btn));
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.activitys.WellChosenOuterNewPhoneGuideDialogActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AppsMarketWellChosenAppsActivity.m12635f(WellChosenOuterNewPhoneGuideDialogActivity.this, WellChosenOuterNewPhoneGuideDialogActivity.this.ajh);
                ady.m12308tK().mo1746bi(100650);
                WellChosenOuterNewPhoneGuideDialogActivity.this.finish();
            }
        });
        ((TextView) findViewById(R.id.title)).setText(C3953zi.m1311pr().getString(R.string.apps_market_well_chosen_outer_new_phone_guide_title));
        ((TextView) findViewById(R.id.secondary_title)).setText(String.format(C3953zi.m1311pr().getString(R.string.apps_market_well_chosen_outer_new_phone_guide_content), Integer.valueOf(this.ajg)));
        findViewById(R.id.close_icon).setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.activitys.WellChosenOuterNewPhoneGuideDialogActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().mo1746bi(100651);
                WellChosenOuterNewPhoneGuideDialogActivity.this.finish();
            }
        });
        ViewGroup.LayoutParams layoutParams = findViewById(R.id.root).getLayoutParams();
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).leftMargin = 0;
            ((FrameLayout.LayoutParams) layoutParams).rightMargin = 0;
        }
    }

    /* renamed from: a */
    public static void m12575a(Context context, int i, int i2) {
        try {
            Intent intent = new Intent(context, WellChosenOuterNewPhoneGuideDialogActivity.class);
            intent.addFlags(268435456);
            intent.putExtra("extra_app_number", i);
            intent.putExtra("extra_show_type", i2);
            context.startActivity(intent);
        } catch (Exception e) {
        }
    }
}
