package com.kingroot.kinguser;

import android.view.View;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bfg extends bfa {
    @Override // com.kingroot.kinguser.bez
    /* renamed from: ZD */
    protected int mo7287ZD() {
        return R.layout.tool_box_list_item_priority;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bfa, com.kingroot.kinguser.bez
    /* renamed from: ZE */
    public void mo7286ZE() {
        super.mo7286ZE();
        this.mView.findViewById(R.id.circle_progress_bar).setVisibility(8);
        this.mView.findViewById(R.id.expand_icon).setVisibility(8);
        this.blR.setVisibility(0);
        this.blQ.setVisibility(8);
        this.blR.setText(R.string.app_open_state_btn);
        this.blR.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bfg.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                atu.m9137t(bfg.this.mContext, bfg.this.blN.pkgName);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bfa, com.kingroot.kinguser.bez
    /* renamed from: s */
    public void mo7284s(Object obj) {
        super.mo7284s(obj);
        mo7285r(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bez
    public void onResume() {
    }
}
