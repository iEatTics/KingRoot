package com.kingroot.kinguser.activitys;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.p004v4.internal.view.SupportMenu;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.common.framework.main.MainExitReceiver;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.aeg;
import com.kingroot.kinguser.aiv;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class CommonDialogActivity extends Activity {
    private Button aci;
    private Button acj;
    private ImageView afU;
    private TextView aif;
    private View aig;
    private InterfaceC0672b aih;
    private TextView mTitleView;

    /* renamed from: com.kingroot.kinguser.activitys.CommonDialogActivity$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0672b {
        /* renamed from: cV */
        void mo12629cV(int i);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        int indexOf;
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_common_dialog);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("Title");
        String stringExtra2 = intent.getStringExtra("Content");
        String stringExtra3 = intent.getStringExtra("LeftBtn");
        String stringExtra4 = intent.getStringExtra("RightBtn");
        int intExtra = intent.getIntExtra("Type", 0);
        int intExtra2 = intent.getIntExtra("WhereFrom", 4);
        this.mTitleView = (TextView) findViewById(R.id.title);
        this.aif = (TextView) findViewById(R.id.item_content);
        this.aci = (Button) findViewById(R.id.button_left);
        this.acj = (Button) findViewById(R.id.button_right);
        this.aig = findViewById(R.id.button_line);
        this.afU = (ImageView) findViewById(R.id.title_icon);
        this.afU.setImageResource(R.drawable.logo_pop_new);
        findViewById(R.id.app_icon).setVisibility(8);
        if (stringExtra != null) {
            this.mTitleView.setText(stringExtra);
        }
        if (stringExtra2 != null) {
            this.aif.setText(stringExtra2);
            if (stringExtra2.length() > 18) {
                this.aif.setGravity(3);
                this.aif.setGravity(7);
            } else {
                this.aif.setGravity(17);
            }
        }
        this.aci.setOnClickListener(new View$OnClickListenerC0671a());
        if (stringExtra3 != null) {
            this.aci.setText(stringExtra3);
        }
        this.acj.setOnClickListener(new View$OnClickListenerC0671a());
        if (stringExtra4 != null) {
            this.acj.setText(stringExtra4);
        }
        if (1 == intExtra) {
            this.aih = m12631cU(intExtra2);
            this.acj.setText(R.string.version_update_btn_update);
            this.afU.setVisibility(0);
            this.aci.setText(R.string.dialog_btn_next_time);
            ady.m12308tK().mo1746bi(100415);
        } else if (2 == intExtra) {
            this.aih = m12630o(intent.getStringExtra("UpdatePath"), intExtra2);
            String string = C3953zi.m1311pr().getString(R.string.version_update_install_title);
            int length = string.length();
            if (stringExtra2 != null && (indexOf = stringExtra2.indexOf(string)) != -1) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(stringExtra2);
                spannableStringBuilder.setSpan(new ForegroundColorSpan((int) SupportMenu.CATEGORY_MASK), indexOf, length + indexOf, 33);
                this.aif.setText(spannableStringBuilder);
            }
            this.acj.setText(R.string.version_update_btn_install);
            this.afU.setVisibility(0);
            this.aci.setText(R.string.dialog_btn_next_time);
            ady.m12308tK().mo1746bi(100416);
        } else {
            this.afU.setVisibility(8);
        }
    }

    /* renamed from: cU */
    private InterfaceC0672b m12631cU(final int i) {
        return new InterfaceC0672b() { // from class: com.kingroot.kinguser.activitys.CommonDialogActivity.1
            @Override // com.kingroot.kinguser.activitys.CommonDialogActivity.InterfaceC0672b
            /* renamed from: cV */
            public void mo12629cV(int i2) {
                if (i2 == 1) {
                    ady.m12308tK().mo1746bi(100171);
                    ady.m12308tK().m12327b(i, 1, 2, 0, 0);
                    aeg.m12265um().mo12214cK(i);
                    return;
                }
                ady.m12308tK().mo1746bi(100172);
                ady.m12308tK().m12327b(i, 1, 1, 0, 0);
                aks.m11143BP().m10858bV(true);
            }
        };
    }

    /* renamed from: o */
    private InterfaceC0672b m12630o(final String str, final int i) {
        return new InterfaceC0672b() { // from class: com.kingroot.kinguser.activitys.CommonDialogActivity.2
            @Override // com.kingroot.kinguser.activitys.CommonDialogActivity.InterfaceC0672b
            /* renamed from: cV */
            public void mo12629cV(int i2) {
                if (i2 == 1) {
                    ady.m12308tK().mo1746bi(100173);
                    ady.m12308tK().m12327b(i, 2, 2, 0, 0);
                    if (!TextUtils.isEmpty(str)) {
                        aiv.m11525yw().m11530s(str, i);
                        return;
                    }
                    return;
                }
                ady.m12308tK().mo1746bi(100174);
                ady.m12308tK().m12327b(i, 2, 1, 0, 0);
                aks.m11143BP().m10858bV(true);
            }
        };
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.aih != null) {
            this.aih.mo12629cV(2);
        }
        finish();
    }

    /* renamed from: com.kingroot.kinguser.activitys.CommonDialogActivity$a */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC0671a implements View.OnClickListener {
        public View$OnClickListenerC0671a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CommonDialogActivity.this.aih != null) {
                CommonDialogActivity.this.aih.mo12629cV(view == CommonDialogActivity.this.aci ? 0 : 1);
            }
            CommonDialogActivity.this.finish();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        finish();
        super.onStop();
        MainExitReceiver.m13404jF();
    }
}
