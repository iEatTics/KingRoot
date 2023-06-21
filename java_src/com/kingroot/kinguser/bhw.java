package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bhw extends bij {
    private Button aci;
    private Button acj;
    private LinearLayout bsa;
    private InterfaceC2294a bsb;
    private Context mContext;

    /* renamed from: com.kingroot.kinguser.bhw$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2294a {
        /* renamed from: F */
        void mo6954F(View view);
    }

    public bhw(Context context) {
        super(context, 2131558505);
        this.mContext = context;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_prompt);
        getWindow().setLayout(-1, -2);
        this.aci = (Button) findViewById(R.id.button_left);
        this.acj = (Button) findViewById(R.id.button_right);
        this.bsa = (LinearLayout) findViewById(R.id.item_link);
        ((TextView) findViewById(R.id.title)).setText(R.string.warn_prompt_title);
        this.bsa.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bhw.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (bhw.this.bsb != null) {
                    bhw.this.bsb.mo6954F(view);
                }
                bhw.this.dismiss();
            }
        });
        this.aci.requestFocus();
        this.aci.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bhw.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                bhw.this.dismiss();
            }
        });
        this.aci.setText(C3953zi.m1311pr().getString(R.string.warn_prompt_ok));
        this.acj.setVisibility(8);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    /* renamed from: a */
    public void m6956a(InterfaceC2294a interfaceC2294a) {
        this.bsb = interfaceC2294a;
    }

    @Override // com.kingroot.kinguser.bij, android.app.Dialog
    public void show() {
        try {
            super.show();
        } catch (Exception e) {
        }
    }
}
