package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bii extends bij implements View.OnClickListener {
    private Button aci;
    private Button acj;
    private ImageView aoR;
    private TextView brb;
    private TextView btr;
    private ImageView btt;
    private RelativeLayout btu;
    private boolean btv;
    private InterfaceC2308a btw;
    private Context mContext;

    /* renamed from: com.kingroot.kinguser.bii$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2308a {
        /* renamed from: UD */
        void mo6905UD();
    }

    public bii(Context context) {
        super((Context) C3948zd.m1327k(context), 2131558505);
        this.mContext = (Context) C3948zd.m1327k(context);
        ady.m12308tK().mo1746bi(100563);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_praise_layout);
        getWindow().setLayout(-1, -2);
        this.aoR = (ImageView) findViewById(R.id.title_icon);
        this.btt = (ImageView) findViewById(R.id.close_icon);
        this.btu = (RelativeLayout) findViewById(R.id.title_background);
        this.brb = (TextView) findViewById(R.id.title);
        this.btr = (TextView) findViewById(R.id.secondary_title);
        this.aci = (Button) findViewById(R.id.button_left);
        this.acj = (Button) findViewById(R.id.button_right);
        this.aci.setOnClickListener(this);
        this.acj.setOnClickListener(this);
        setCanceledOnTouchOutside(false);
        this.btt.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bii.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                bii.this.dismiss();
            }
        });
    }

    /* renamed from: lN */
    public void m6907lN(String str) {
        this.brb.setText(str);
    }

    /* renamed from: lM */
    public void m6908lM(String str) {
        this.btr.setText(str);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.acj) {
            ady.m12308tK().mo1746bi(100567);
            aks.m11143BP().m10791cl(false);
            aks.m11143BP().m10790cm(true);
            bgt.m7089bu(KApplication.m13453ge());
        } else if (view == this.aci) {
            if (!this.btv) {
                aks.m11143BP().m10791cl(false);
                ady.m12308tK().mo1746bi(100566);
                aks.m11143BP().m10790cm(true);
                bgn.abM();
            } else {
                ady.m12308tK().mo1746bi(100565);
                aks.m11143BP().m10794ci(false);
                if (this.btw != null) {
                    this.btw.mo6905UD();
                }
            }
        }
        dismiss();
    }

    /* renamed from: jd */
    public void m6910jd(int i) {
        this.aoR.setImageResource(i);
    }

    /* renamed from: h */
    public void m6911h(Drawable drawable) {
        this.btu.setBackgroundDrawable(drawable);
    }

    /* renamed from: n */
    public void m6906n(View.OnClickListener onClickListener) {
        this.btt.setOnClickListener(onClickListener);
    }

    /* renamed from: eg */
    public void m6912eg(boolean z) {
        this.btv = z;
    }

    /* renamed from: a */
    public void m6913a(InterfaceC2308a interfaceC2308a) {
        this.btw = interfaceC2308a;
    }

    /* renamed from: lK */
    public void m6909lK(String str) {
        this.aci.setText(str);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && this.btv) {
            this.btw.mo6905UD();
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.kingroot.kinguser.bij, android.app.Dialog
    public void show() {
        try {
            super.show();
        } catch (Exception e) {
        }
    }
}
