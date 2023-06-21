package com.kingroot.kinguser;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.kingroot.kinguser.adg;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class bhu extends bij {

    /* renamed from: Vd */
    private ListView f1679Vd;
    private int act;
    private ArrayList<String> alr;
    private adg brm;
    private Button brn;
    private String bro;
    private InterfaceC2291a brp;

    /* renamed from: com.kingroot.kinguser.bhu$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2291a {
        /* renamed from: r */
        void m6957r(View view, int i);
    }

    @Override // com.kingroot.kinguser.bij, android.app.Dialog
    public void show() {
        try {
            super.show();
        } catch (Exception e) {
        }
    }

    @Override // com.kingroot.kinguser.bij, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            super.dismiss();
        } catch (Exception e) {
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_list_view);
        getWindow().setLayout(-1, -2);
        this.brm = new adg(getContext(), this.alr, this.act);
        this.brm.m12544a(new adg.InterfaceC0718a() { // from class: com.kingroot.kinguser.bhu.1
            @Override // com.kingroot.kinguser.adg.InterfaceC0718a
            /* renamed from: b */
            public void mo6958b(View view, int i) {
                if (bhu.this.brp != null) {
                    bhu.this.brp.m6957r(view, i);
                    bhu.this.dismiss();
                }
            }
        });
        this.f1679Vd = (ListView) findViewById(R.id.listView);
        this.f1679Vd.setAdapter((ListAdapter) this.brm);
        this.brn = (Button) findViewById(R.id.button);
        this.brn.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bhu.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                bhu.this.dismiss();
            }
        });
        ((TextView) findViewById(R.id.item_title)).setText(this.bro);
    }
}
