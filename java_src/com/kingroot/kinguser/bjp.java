package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageStats;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Html;
import android.text.SpannableString;
import android.text.format.Formatter;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.common.app.KApplication;
import com.kingroot.kingmaster.toolbox.cleaner.uninstall.manager.AppBackupTool;
import com.kingroot.kinguser.aex;
import com.kingroot.kinguses.R;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes.dex */
public class bjp extends bid {
    private static long dataSize;

    /* renamed from: Vm */
    private acr f1698Vm;

    /* renamed from: Vn */
    private byte[] f1699Vn;
    private TextView aAN;
    private Drawable afO;
    private ImageView afU;
    private TextView age;
    private TextView bxA;
    private TextView bxB;
    private TextView bxC;
    public TextView bxD;
    private InterfaceC2430a bxE;
    private aex.C0796a bxF;
    private Button bxG;
    private Button bxH;
    private bed bxI;
    private boolean bxy;
    private TextView bxz;
    private Handler mHandler;

    /* renamed from: com.kingroot.kinguser.bjp$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2430a {
        /* renamed from: a */
        void mo6680a(boolean z, aex.C0796a c0796a);
    }

    public bjp(Context context, aex.C0796a c0796a) {
        super(context);
        this.f1699Vn = new byte[0];
        this.bxy = false;
        this.bxE = null;
        this.bxI = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bjp.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                final String aek = bjp.this.aek();
                final long length = new File(bjp.this.bxF.afP.appSourceDir).length();
                bjp.this.mHandler.post(new Runnable() { // from class: com.kingroot.kinguser.bjp.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        String string = C3953zi.m1311pr().getString(R.string.uninstall_app_data_size);
                        SpannableString spannableString = new SpannableString(string);
                        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(C3953zi.m1311pr().getColor(R.color.black_1));
                        spannableString.setSpan(foregroundColorSpan, 0, string.length(), 33);
                        bjp.this.bxD.setText(spannableString);
                        bjp.this.bxD.append(aek);
                        String string2 = C3953zi.m1311pr().getString(R.string.uninstall_app_size_tag);
                        SpannableString spannableString2 = new SpannableString(string2);
                        spannableString2.setSpan(foregroundColorSpan, 0, string2.length(), 33);
                        bjp.this.bxB.setText(spannableString2);
                        bjp.this.bxB.append(Formatter.formatFileSize(bjp.this.getContext(), length));
                    }
                });
            }
        });
        this.bxF = c0796a;
        this.afO = C3953zi.m1311pr().getDrawable(R.drawable.icon_risk_warning);
        if (this.afO != null) {
            int dimension = (int) C3953zi.m1311pr().getDimension(R.dimen.risk_icon_bound_width_1);
            this.afO.setBounds(0, 0, dimension, dimension);
        }
    }

    @Override // com.kingroot.kinguser.bid, com.kingroot.kinguser.bie
    protected View acS() {
        this.btf = this.mLayoutInflater.inflate(R.layout.common_dialog_title_template, (ViewGroup) m6926bI(0), false);
        return this.btf;
    }

    @Override // com.kingroot.kinguser.bid, com.kingroot.kinguser.bie
    protected View acQ() {
        this.mContentView = this.mLayoutInflater.inflate(R.layout.common_uninstall_dialog_content, (ViewGroup) m6926bI(1), false);
        return this.mContentView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bie, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mHandler = new Handler(Looper.getMainLooper());
        this.afU = (ImageView) findViewById(R.id.title_icon);
        this.age = (TextView) findViewById(R.id.title);
        TextView textView = (TextView) findViewById(R.id.secondary_title);
        textView.setVisibility(0);
        TextView textView2 = (TextView) findViewById(R.id.app_description);
        this.bxz = (TextView) findViewById(R.id.app_uninstall_warning);
        TextView textView3 = (TextView) findViewById(R.id.app_type);
        TextView textView4 = (TextView) findViewById(R.id.risk_db_source);
        this.aAN = (TextView) findViewById(R.id.app_version);
        this.bxA = (TextView) findViewById(R.id.app_update_time);
        this.bxB = (TextView) findViewById(R.id.app_size);
        this.bxC = (TextView) findViewById(R.id.app_source_dir);
        this.bxD = (TextView) findViewById(R.id.app_data_size);
        this.bxG = (Button) findViewById(R.id.button_left);
        this.bxH = (Button) findViewById(R.id.button_right);
        this.bxH.setText(C3953zi.m1311pr().getString(R.string.uninstall_text));
        this.bxG.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bjp.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                beg.m7461Zj().m7449d(bjp.this.bxI);
                if (bjp.this.bxE != null) {
                    bjp.this.bxE.mo6680a(false, bjp.this.bxF);
                }
                bjp.this.dismiss();
            }
        });
        if (this.bxF.afP.classify == 1 && this.bxF.afP.flag == 1) {
            this.bxH.setVisibility(8);
        }
        this.bxH.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bjp.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (bjp.this.bxE != null) {
                    bjp.this.bxE.mo6680a(true, bjp.this.bxF);
                }
                bjp.this.dismiss();
            }
        });
        this.age.setText(this.bxF.afP.appName);
        if (avu.m8746hj(this.bxF.afP.riskType)) {
            textView.setTextColor(C3953zi.m1311pr().getColor(R.color.app_tag_risk_color));
            textView.setCompoundDrawables(this.afO, null, null, null);
            textView.setText(String.format(C3953zi.m1311pr().getString(R.string.uninstall_risk_app_description_format), avu.m8747hi(this.bxF.afP.riskType)));
            textView4.setVisibility(0);
            textView4.setText(Html.fromHtml(C3953zi.m1311pr().getString(R.string.risk_app_db_source)));
        } else {
            textView.setCompoundDrawables(null, null, null, null);
            textView.setText(this.bxF.afP.packageName);
            textView4.setVisibility(8);
        }
        Locale locale = C3953zi.m1311pr().getConfiguration().locale;
        boolean z = locale.getLanguage().endsWith("zh") && locale.getCountry().equals("CN");
        if (this.bxF.afP.description != null && !this.bxF.afP.description.equals("") && z) {
            textView2.setText(this.bxF.afP.description);
        } else {
            textView2.setVisibility(8);
        }
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(C3953zi.m1311pr().getColor(R.color.black_1));
        if (this.bxF.afP.isPersonApp) {
            textView2.setVisibility(8);
            textView3.setVisibility(8);
        } else {
            String str = (String) textView3.getText();
            SpannableString spannableString = new SpannableString(str);
            spannableString.setSpan(foregroundColorSpan, 0, str.length(), 33);
            String m12110cP = afd.m12110cP(this.bxF.afP.classify);
            textView3.setText(spannableString);
            if (m12110cP.equals("")) {
                m12110cP = C3953zi.m1311pr().getString(R.string.uninstall_app_default_description);
            }
            textView3.append(m12110cP);
        }
        if (this.bxF.afP.flag == 1) {
            this.bxz.setText(R.string.uninstall_warning_tips2);
        }
        String str2 = (String) this.aAN.getText();
        SpannableString spannableString2 = new SpannableString(str2);
        spannableString2.setSpan(foregroundColorSpan, 0, str2.length(), 33);
        this.aAN.setText(spannableString2);
        this.aAN.append(this.bxF.afP.versionName != null ? this.bxF.afP.versionName : "null");
        String str3 = (String) this.bxA.getText();
        SpannableString spannableString3 = new SpannableString(str3);
        spannableString3.setSpan(foregroundColorSpan, 0, str3.length(), 33);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
        Date date = new Date(this.bxF.afP.pkgLastModified);
        this.bxA.setText(spannableString3);
        this.bxA.append(simpleDateFormat.format(date));
        String string = C3953zi.m1311pr().getString(R.string.uninstall_app_data_size);
        SpannableString spannableString4 = new SpannableString(string);
        spannableString4.setSpan(foregroundColorSpan, 0, string.length(), 33);
        this.bxD.setText(spannableString4);
        this.bxD.append(C3953zi.m1311pr().getString(R.string.app_data_size_counting));
        String string2 = C3953zi.m1311pr().getString(R.string.uninstall_app_size_tag);
        SpannableString spannableString5 = new SpannableString(string2);
        spannableString5.setSpan(foregroundColorSpan, 0, string2.length(), 33);
        this.bxB.setText(spannableString5);
        this.bxB.append(C3953zi.m1311pr().getString(R.string.app_data_size_counting));
        String str4 = (String) this.bxC.getText();
        SpannableString spannableString6 = new SpannableString(str4);
        spannableString6.setSpan(foregroundColorSpan, 0, str4.length(), 33);
        this.bxC.setText(spannableString6);
        this.bxC.append(this.bxF.afP.appSourceDir);
        beg.m7461Zj().m7450c(this.bxI);
        getWindow().getAttributes().dimAmount = 0.8f;
        getWindow().addFlags(2);
    }

    public void aej() {
        this.bxz.setVisibility(0);
    }

    @Override // com.kingroot.kinguser.bid
    /* renamed from: iY */
    public void mo6683iY(int i) {
        this.bxH.setVisibility(i);
        if (i == 8) {
            this.bxG.setBackgroundResource(R.drawable.common_dialog_button_mid_selector);
        } else {
            this.bxG.setBackgroundResource(R.drawable.common_dialog_button_left_selector);
        }
    }

    @Override // com.kingroot.kinguser.bid
    /* renamed from: lK */
    public void mo6682lK(String str) {
        this.bxG.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String aek() {
        String str = this.bxF.afP.packageName;
        if (str != null && !str.equals("")) {
            dataSize = 0L;
            try {
                PackageStats m13038eW = AppBackupTool.m13038eW(str);
                dataSize = m13038eW.dataSize + m13038eW.cacheSize;
                if (abd.m12839qb() >= 11) {
                    long longValue = ((Long) m13038eW.getClass().getField("externalDataSize").get(m13038eW)).longValue();
                    if (longValue > 0) {
                        dataSize += longValue;
                    }
                    long longValue2 = ((Long) m13038eW.getClass().getField("externalCacheSize").get(m13038eW)).longValue();
                    if (longValue > 0) {
                        dataSize = longValue2 + dataSize;
                    }
                }
            } catch (Exception e) {
            }
        }
        return Formatter.formatFileSize(KApplication.m13453ge(), dataSize);
    }

    /* renamed from: a */
    public void m6690a(InterfaceC2430a interfaceC2430a) {
        this.bxE = interfaceC2430a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bij, android.app.Dialog
    public void onStart() {
        super.onStart();
        this.bxy = false;
        acr imageFetcher = getImageFetcher();
        if (imageFetcher != null) {
            imageFetcher.m12665a(this.bxF.afP.packageName, this.afU, C3953zi.m1311pr().getDrawable(R.drawable.default_icon));
        }
    }

    @Override // com.kingroot.kinguser.bij, android.app.Dialog
    public void show() {
        try {
            super.show();
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bij, android.app.Dialog
    public void onStop() {
        super.onStop();
        this.bxy = true;
        m6681oL();
    }

    public acr getImageFetcher() {
        if (this.f1698Vm == null && !this.bxy) {
            synchronized (this.f1699Vn) {
                if (this.f1698Vm == null && !this.bxy) {
                    this.f1698Vm = C3935yr.m1374pb();
                }
            }
        }
        return this.f1698Vm;
    }

    /* renamed from: oL */
    public void m6681oL() {
        if (this.f1698Vm != null) {
            synchronized (this.f1699Vn) {
                if (this.f1698Vm != null) {
                    this.f1698Vm = null;
                    C3935yr.m1373pc();
                }
            }
        }
    }
}
