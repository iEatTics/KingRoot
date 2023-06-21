package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bjm extends bij {
    private Button aci;
    private Button acj;
    private InterfaceC2412a bxk;
    private InterfaceC2412a bxl;
    private CheckBox mCheckBox;

    /* renamed from: com.kingroot.kinguser.bjm$a */
    /* loaded from: classes.dex */
    interface InterfaceC2412a {
        /* renamed from: d */
        void mo6628d(View view, boolean z);
    }

    public bjm(Context context) {
        super(context, 2131558505);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.cleaner_uninstall_promptbox_dialog);
        getWindow().setLayout(-1, -2);
        this.aci = (Button) findViewById(R.id.button_left);
        this.acj = (Button) findViewById(R.id.button_right);
        this.acj.setText(C3953zi.m1311pr().getString(R.string.uninstall));
        this.mCheckBox = (CheckBox) findViewById(R.id.prompt_checkbox);
        this.aci.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bjm.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (bjm.this.bxk != null) {
                    bjm.this.bxk.mo6628d(view, bjm.this.isChecked());
                }
                bjm.this.dismiss();
            }
        });
        this.acj.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bjm.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (bjm.this.bxl != null) {
                    bjm.this.bxl.mo6628d(view, bjm.this.isChecked());
                }
                bjm.this.dismiss();
            }
        });
    }

    public boolean isChecked() {
        return this.mCheckBox.isChecked();
    }

    /* renamed from: a */
    public void m6715a(InterfaceC2412a interfaceC2412a) {
        this.bxl = interfaceC2412a;
    }
}
