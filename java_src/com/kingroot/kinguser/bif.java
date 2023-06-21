package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.kingcore.uilib.ProgressWhell;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bif extends bid {
    private boolean btp;

    public bif(Context context) {
        super(context);
        this.btp = true;
    }

    @Override // com.kingroot.kinguser.bid, com.kingroot.kinguser.bie
    protected View acS() {
        return this.mLayoutInflater.inflate(R.layout.common_inside_dialog_loading_title, (ViewGroup) m6926bI(0), false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bie, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final ProgressWhell progressWhell = (ProgressWhell) findViewById(R.id.title_icon);
        progressWhell.setBarColor(C3953zi.m1311pr().getColor(R.color.blue_5));
        progressWhell.setProgress(0.0f);
        progressWhell.setCallback(new ProgressWhell.InterfaceC0462a() { // from class: com.kingroot.kinguser.bif.1
            @Override // com.kingcore.uilib.ProgressWhell.InterfaceC0462a
            /* renamed from: d */
            public void mo6827d(float f) {
                if (f == 0.0f) {
                    progressWhell.setProgress(1.0f);
                } else if (f == 1.0f) {
                    progressWhell.setProgress(0.0f);
                }
            }
        });
        this.brb = (TextView) findViewById(R.id.title);
    }

    @Override // com.kingroot.kinguser.bid
    public void setTitleText(String str) {
        if (str != null) {
            this.brb.setText(str);
            this.brb.setVisibility(0);
        }
    }

    /* renamed from: iZ */
    public void m6921iZ(int i) {
        this.btm.setVisibility(i);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (this.btp) {
            super.onBackPressed();
        }
    }

    /* renamed from: ef */
    public void m6922ef(boolean z) {
        this.btp = z;
    }
}
