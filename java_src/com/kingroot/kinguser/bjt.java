package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguser.adf;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bjt extends bij {
    private Button aci;
    private Button acj;
    private ImageView ack;
    private adf.InterfaceC0715b acm;
    private adf.InterfaceC0715b acn;
    private adf.InterfaceC0714a aco;
    private TextView aif;
    private ImageView mIconView;
    private TextView mTitleView;

    public bjt(Context context) {
        super(context, 2131558505);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.uninstall_dialog_common);
        getWindow().setLayout(-1, -2);
        this.mTitleView = (TextView) findViewById(R.id.item_title);
        this.aif = (TextView) findViewById(R.id.item_content);
        this.aci = (Button) findViewById(R.id.button_left);
        this.acj = (Button) findViewById(R.id.button_right);
        this.ack = (ImageView) findViewById(R.id.button_line);
        this.mIconView = (ImageView) findViewById(R.id.icon_title);
        this.aci.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bjt.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (bjt.this.acm != null) {
                    bjt.this.acm.mo6627m(view);
                }
                bjt.this.dismiss();
            }
        });
        this.acj.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bjt.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (bjt.this.acn != null) {
                    bjt.this.acn.mo6627m(view);
                }
                bjt.this.dismiss();
            }
        });
    }

    /* renamed from: a */
    public void m6620a(adf.InterfaceC0715b interfaceC0715b) {
        this.acn = interfaceC0715b;
    }

    public void setTitleText(String str) {
        this.mTitleView.setText(str);
    }

    /* renamed from: ma */
    public void m6614ma(String str) {
        this.aif.setText(str);
        if (str.length() > 18) {
            this.aif.setGravity(3);
            this.aif.setGravity(7);
            return;
        }
        this.aif.setGravity(17);
    }

    /* renamed from: lK */
    public void m6616lK(String str) {
        this.aci.setText(str);
    }

    /* renamed from: lL */
    public void m6615lL(String str) {
        this.acj.setText(str);
    }

    /* renamed from: iY */
    public void m6617iY(int i) {
        this.acj.setVisibility(i);
        if (i == 8) {
            this.aci.setBackgroundResource(R.drawable.common_dialog_button_mid_selector);
        }
        aeA();
    }

    void aeA() {
        if (this.aci.getVisibility() == 0 && this.acj.getVisibility() == 0) {
            this.ack.setVisibility(0);
        } else {
            this.ack.setVisibility(8);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            boolean z = true;
            if (this.aco != null) {
                z = this.aco.m12545a(i, keyEvent);
            }
            if (z) {
                dismiss();
            }
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
