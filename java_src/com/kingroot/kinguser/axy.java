package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguser.aea;
import com.kingroot.kinguser.p013ad.SplashDisplayModel;
import com.kingroot.kinguser.webview.WebViewActivity;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class axy extends AbstractC3922ym {

    /* renamed from: NE */
    private ImageView f1633NE;
    private boolean aXY;
    private int aXZ;
    private Runnable aYc;
    private boolean bcq;
    private SplashDisplayModel bcr;
    private boolean bcs;
    private View bct;
    private String bcu;
    private TextView mTextView;

    public axy(Context context) {
        super(context);
        this.aXY = false;
        this.aXZ = 128;
        this.bcq = false;
        this.bcs = false;
        this.bcu = "";
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new C3937yt(this.mContext, null);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.bcr = null;
        try {
            this.bcr = (SplashDisplayModel) intent.getParcelableExtra("splash_display_model");
        } catch (Exception e) {
        }
        if (this.bcr == null) {
            m8084du(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onRestart() {
        if (this.bcq) {
            m8084du(true);
        }
        super.onRestart();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onPause() {
        super.onPause();
        if (!this.bcs && getActivity().isFinishing()) {
            getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public boolean onBackPressed() {
        return getActivity().moveTaskToBack(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        if (this.bcq) {
            m8084du(true);
        }
        super.onResume();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        if (this.bcr == null) {
            return null;
        }
        switch (this.bcr.type) {
            case 1:
                return m8091UI();
            case 2:
                return m8092UH();
            default:
                return null;
        }
    }

    /* renamed from: UH */
    private View m8092UH() {
        if (this.bcr != null && apv.m9735LO().m9720ia(this.bcr.ajt)) {
            afz.m12007vG().m12009fl(this.bcr.key);
            aks.m11143BP().m10875bI(System.currentTimeMillis());
            View inflate = getLayoutInflater().inflate(R.layout.page_splash_business, (ViewGroup) null);
            Bitmap m9718ic = apv.m9735LO().m9718ic(this.bcr.ajt);
            this.f1633NE = (ImageView) inflate.findViewById(R.id.splash_bg);
            this.f1633NE.setImageBitmap(m9718ic);
            String str = this.bcr.jumpUrl;
            if (!TextUtils.isEmpty(str)) {
                final String trim = str.trim();
                if (!trim.toLowerCase().startsWith("http")) {
                    trim = "http://" + trim;
                }
                this.f1633NE.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axy.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        axy.this.m8093TT();
                        Intent intent = new Intent();
                        intent.setClass(axy.this.mContext, WebViewActivity.class);
                        intent.putExtra("url", trim);
                        axy.this.mContext.startActivity(intent);
                        axy.this.bcq = true;
                        ady.m12308tK().m12332a(axy.this.bcr.f1392gt, axy.this.bcr.ajv, 2);
                        aea.m12296a(aea.EnumC0767b.OPEN_URL, axy.this.bcr.f1392gt, axy.this.bcr.ajv);
                    }
                });
            }
            this.bcr.showDuration = Math.max(1, this.bcr.showDuration);
            this.bcr.showDuration = Math.min(3, this.bcr.showDuration);
            this.bct = inflate.findViewById(R.id.skip_btn);
            this.bct.setVisibility(0);
            this.mTextView = (TextView) inflate.findViewById(R.id.skip_text);
            this.bcu = C3953zi.m1311pr().getString(R.string.skip_splash);
            this.bct.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axy.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    axy.this.bcs = true;
                    axy.this.m8093TT();
                    axy.this.getHandler().obtainMessage(2).sendToTarget();
                    ady.m12308tK().m12332a(axy.this.bcr.f1392gt, axy.this.bcr.ajv, 1);
                    aea.m12296a(aea.EnumC0767b.IGNORE, axy.this.bcr.f1392gt, axy.this.bcr.ajv);
                }
            });
            m8082i(this.bcr.showDuration * 1000, 1000L);
            ady.m12308tK().m12321c(this.bcr.f1392gt, this.bcr.ajv);
            ady.m12308tK().mo1746bi(100426);
            return inflate;
        }
        return null;
    }

    /* renamed from: UI */
    private View m8091UI() {
        if (this.bcr != null && apv.m9735LO().m9720ia(this.bcr.ajt)) {
            afz.m12007vG().m12009fl(this.bcr.key);
            aks.m11143BP().m10875bI(System.currentTimeMillis());
            View inflate = getLayoutInflater().inflate(R.layout.page_splash_business, (ViewGroup) null);
            afu.m12017vB().m12025a(inflate, this.bcr.ajw);
            Bitmap m9718ic = apv.m9735LO().m9718ic(this.bcr.ajt);
            inflate.findViewById(R.id.logo_layout).setVisibility(0);
            this.f1633NE = (ImageView) inflate.findViewById(R.id.splash_bg);
            this.f1633NE.setImageBitmap(m9718ic);
            this.bct = inflate.findViewById(R.id.skip_btn);
            this.bct.setVisibility(0);
            this.mTextView = (TextView) inflate.findViewById(R.id.skip_text);
            this.bcu = C3953zi.m1311pr().getString(R.string.skip_splash);
            this.bct.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axy.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    axy.this.bcs = true;
                    axy.this.m8093TT();
                    axy.this.getHandler().obtainMessage(2).sendToTarget();
                    aea.m12288g(5, 0, 2);
                }
            });
            this.bcr.showDuration = Math.max(1, this.bcr.showDuration);
            this.bcr.showDuration = Math.min(3, this.bcr.showDuration);
            m8082i(this.bcr.showDuration * 1000, 1000L);
            aea.m12288g(4, 0, 0);
            return inflate;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        if (message.what == 2) {
            m8084du(false);
        } else if (message.what == 1) {
            bbv.m7771WK().m7762dC(true);
            m8084du(false);
        }
    }

    /* renamed from: du */
    private void m8084du(boolean z) {
        m8093TT();
        if (m1404oP() && !z) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.axy.4
                @Override // java.lang.Runnable
                public void run() {
                    axy.this.getActivity().finish();
                }
            });
            return;
        }
        this.aXZ = bbv.m7771WK().m7768WN();
        if (bbv.m7771WK().m7767WO() && this.aXZ == 128) {
            this.aXZ = 2;
        }
        aiy.m11507a(getActivity(), this.aXZ);
    }

    /* renamed from: i */
    private void m8082i(final long j, final long j2) {
        this.aYc = new Runnable() { // from class: com.kingroot.kinguser.axy.5
            long aYi;

            {
                this.aYi = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (axy.this.mTextView != null) {
                    axy.this.mTextView.setText(axy.this.bcu + "(" + (this.aYi / 1000) + ")");
                }
                if (this.aYi <= 0) {
                    axy.this.bcs = true;
                    axy.this.getHandler().obtainMessage(1).sendToTarget();
                    if (axy.this.bcr != null && axy.this.bcr.type == 2) {
                        aea.m12296a(aea.EnumC0767b.TIME_OUT, axy.this.bcr.f1392gt, axy.this.bcr.ajv);
                        return;
                    }
                    return;
                }
                this.aYi -= j2;
                axy.this.getHandler().postDelayed(this, j2);
            }
        };
        this.aYc.run();
    }

    /* renamed from: TT */
    protected void m8093TT() {
        if (this.aYc != null) {
            getHandler().removeCallbacks(this.aYc);
            this.aYc = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        super.onDestroy();
    }
}
