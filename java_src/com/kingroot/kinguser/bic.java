package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bic extends bid {
    private CheckBox bsZ;
    private InterfaceC2299a bta;
    private InterfaceC2299a btb;

    /* renamed from: com.kingroot.kinguser.bic$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2299a {
        /* renamed from: d */
        void mo6940d(View view, boolean z);
    }

    public bic(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.bid, com.kingroot.kinguser.bie
    protected View acQ() {
        this.mContentView = this.mLayoutInflater.inflate(R.layout.common_choice_dialog_content, (ViewGroup) m6926bI(1), false);
        this.alC = (TextView) this.mContentView.findViewById(R.id.item_content);
        return this.mContentView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bie, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.bsZ = (CheckBox) findViewById(R.id.checkbox_remember);
        this.aci.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bic.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (bic.this.bta != null) {
                    bic.this.bta.mo6940d(view, bic.this.bsZ.isChecked());
                }
                bic.this.dismiss();
            }
        });
        this.acj.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bic.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (bic.this.btb != null) {
                    bic.this.btb.mo6940d(view, bic.this.bsZ.isChecked());
                }
                bic.this.dismiss();
            }
        });
    }

    /* renamed from: a */
    public void m6947a(InterfaceC2299a interfaceC2299a) {
        this.bta = interfaceC2299a;
    }

    /* renamed from: b */
    public void m6945b(InterfaceC2299a interfaceC2299a) {
        this.btb = interfaceC2299a;
    }

    /* renamed from: ee */
    public void m6942ee(boolean z) {
        this.bsZ.setChecked(z);
    }

    /* renamed from: lJ */
    public void m6941lJ(String str) {
        this.bsZ.setText(str);
    }

    @Override // com.kingroot.kinguser.bie, android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }
}
