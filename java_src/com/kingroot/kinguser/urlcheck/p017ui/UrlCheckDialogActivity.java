package com.kingroot.kinguser.urlcheck.p017ui;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3954zj;
import com.kingroot.kinguser.activitys.KUBaseActivity;
import com.kingroot.kinguser.activitys.SecurityProtectActivity;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bfs;
import com.kingroot.kinguser.bfw;
import com.kingroot.kinguser.urlcheck.p016db.UrlCheckLog;
import com.kingroot.kinguses.R;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.urlcheck.ui.UrlCheckDialogActivity */
/* loaded from: classes.dex */
public class UrlCheckDialogActivity extends KUBaseActivity {
    private Button aci;
    private Button acj;
    private List<UrlCheckLog> bnA;
    private TextView bnB;
    private TextView bnC;
    private ViewGroup bnD;
    private TextView bnE;

    /* renamed from: u */
    public static void m1991u(ArrayList<UrlCheckLog> arrayList) {
        Intent intent = new Intent(KApplication.m13453ge(), UrlCheckDialogActivity.class);
        intent.addFlags(268435456);
        intent.putParcelableArrayListExtra("key_urlcheck_req", arrayList);
        KApplication.m13453ge().startActivity(intent);
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.dialog_urlcheck_choice);
        findViewById(R.id.outside_title_layout).setBackgroundResource(R.drawable.red_bg);
        ((ImageView) findViewById(R.id.title_icon)).setImageResource(R.drawable.dialogs_dangerous);
        Button button = (Button) findViewById(R.id.button_left);
        button.setText(C3953zi.m1311pr().getString(R.string.security_protect_pop_dialog_cancel));
        button.setTextColor(C3953zi.m1311pr().getColor(R.color.blue_2));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.urlcheck.ui.UrlCheckDialogActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UrlCheckDialogActivity.this.finish();
            }
        });
        this.acj = (Button) findViewById(R.id.button_right);
        this.acj.setText(C3953zi.m1311pr().getString(R.string.security_protect_pop_dialog_process));
        this.acj.setTextColor(C3953zi.m1311pr().getColor(R.color.blue_1));
        this.acj.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.urlcheck.ui.UrlCheckDialogActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SecurityProtectActivity.m12606f(null, true);
            }
        });
        this.aci = (Button) findViewById(R.id.button_left);
        ((TextView) findViewById(R.id.title)).setText(C3953zi.m1311pr().getString(R.string.urlcheck_dialog_title));
        this.bnB = (TextView) findViewById(R.id.main_content);
        this.bnC = (TextView) findViewById(R.id.sub_content);
        this.bnE = (TextView) findViewById(R.id.item_trust);
        this.bnD = (ViewGroup) findViewById(R.id.multi_line_content);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.activitys.KUBaseActivity, com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onResume() {
        String str;
        int i = 0;
        super.onResume();
        bfw.aaS().m7203dV(true);
        this.bnA = getIntent().getParcelableArrayListExtra("key_urlcheck_req");
        if (C3942yy.m1351d(this.bnA)) {
            finish();
        } else if (this.bnA.size() > 1) {
            ady.m12308tK().mo1746bi(100696);
            this.bnC.setVisibility(8);
            this.bnD.setVisibility(0);
            this.bnD.removeAllViews();
            this.bnE.setVisibility(8);
            this.bnB.setText(String.format(C3953zi.m1311pr().getString(R.string.urlcheck_main_page_dialog_main_content), Integer.valueOf(this.bnA.size())));
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -2);
            int color = getResources().getColor(R.color.main_title_text);
            String str2 = null;
            for (UrlCheckLog urlCheckLog : this.bnA) {
                if (!TextUtils.isEmpty(urlCheckLog.url)) {
                    try {
                        URL url = new URL(urlCheckLog.url);
                        str = url.getHost() + url.getFile();
                    } catch (Exception e) {
                        str = str2;
                    }
                    if (TextUtils.isEmpty(str)) {
                        str2 = str;
                    } else {
                        int i2 = i + 1;
                        if (i >= 3) {
                            break;
                        }
                        TextView textView = new TextView(this);
                        textView.setLayoutParams(layoutParams);
                        textView.setLines(1);
                        textView.setEllipsize(TextUtils.TruncateAt.END);
                        textView.setTextColor(color);
                        textView.setText(str);
                        this.bnD.addView(textView);
                        i = i2;
                        str2 = str;
                    }
                }
            }
            this.aci.setText(R.string.dialog_btn_cancel);
            this.aci.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.urlcheck.ui.UrlCheckDialogActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ady.m12308tK().mo1746bi(100697);
                    UrlCheckDialogActivity.this.finish();
                }
            });
            this.acj.setText(R.string.security_protect_pop_dialog_process);
            this.acj.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.urlcheck.ui.UrlCheckDialogActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ady.m12308tK().mo1746bi(100698);
                    UrlCheckRiskActivity.m1988aL(view.getContext());
                }
            });
        } else {
            ady.m12308tK().mo1746bi(100692);
            final UrlCheckLog urlCheckLog2 = this.bnA.get(0);
            if (urlCheckLog2 == null) {
                finish();
                return;
            }
            this.bnC.setVisibility(0);
            this.bnD.setVisibility(8);
            this.bnE.setVisibility(0);
            this.bnE.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.urlcheck.ui.UrlCheckDialogActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ady.m12308tK().mo1746bi(100693);
                    beg.m7461Zj().m7450c(new bed(new bek() { // from class: com.kingroot.kinguser.urlcheck.ui.UrlCheckDialogActivity.5.1
                        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                        public void run() {
                            bfs.aaI().m7230lh(urlCheckLog2.f3653GY);
                            bfs.aaI().m7233d(urlCheckLog2);
                            urlCheckLog2.m1995dQ(true);
                        }
                    }));
                    C3954zj.m1310b(C3953zi.m1311pr().getString(R.string.urlcheck_toast_allow));
                    UrlCheckDialogActivity.this.finish();
                }
            });
            this.bnB.setText(urlCheckLog2.url);
            this.bnC.setText(urlCheckLog2.aaO());
            this.aci.setText(R.string.urlcheck_dialog_left_button_allow);
            this.aci.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.urlcheck.ui.UrlCheckDialogActivity.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ady.m12308tK().mo1746bi(100694);
                    if (bfw.aaS().m7201lk(urlCheckLog2.url) > 0) {
                        beg.m7461Zj().m7450c(new bed(new bek() { // from class: com.kingroot.kinguser.urlcheck.ui.UrlCheckDialogActivity.6.1
                            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                            public void run() {
                                bfs.aaI().m7230lh(urlCheckLog2.f3653GY);
                                bfs.aaI().m7233d(urlCheckLog2);
                                urlCheckLog2.m1995dQ(true);
                            }
                        }));
                        C3954zj.m1310b(C3953zi.m1311pr().getString(R.string.urlcheck_toast_allow));
                    } else {
                        bfw.aaS().m7200ll(urlCheckLog2.url);
                    }
                    UrlCheckDialogActivity.this.finish();
                }
            });
            this.acj.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.urlcheck.ui.UrlCheckDialogActivity.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ady.m12308tK().mo1746bi(100695);
                    beg.m7461Zj().m7450c(new bed(new bek() { // from class: com.kingroot.kinguser.urlcheck.ui.UrlCheckDialogActivity.7.1
                        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                        public void run() {
                            urlCheckLog2.bnx = true;
                            bfs.aaI().m7231e(urlCheckLog2);
                            urlCheckLog2.m1995dQ(false);
                        }
                    }));
                    C3954zj.m1310b(C3953zi.m1311pr().getString(R.string.urlcheck_toast_disallow));
                    UrlCheckDialogActivity.this.finish();
                }
            });
            this.acj.setText(R.string.urlcheck_dialog_right_button_deny);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        bfw.aaS().m7203dV(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.activitys.KUBaseActivity, com.kingroot.common.uilib.template.BaseActivity, com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        finish();
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return null;
    }
}
