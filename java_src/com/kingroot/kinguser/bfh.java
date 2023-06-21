package com.kingroot.kinguser;

import android.text.TextUtils;
import android.widget.TextView;
import com.kingroot.kinguser.toolbox.view.ToolBoxView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bfh extends bez {
    private TextView aFj;

    @Override // com.kingroot.kinguser.bez
    /* renamed from: ZD */
    protected int mo7287ZD() {
        return R.layout.list_view_title;
    }

    @Override // com.kingroot.kinguser.bez
    /* renamed from: ZE */
    protected void mo7286ZE() {
        this.aFj = (TextView) this.mView.findViewById(R.id.list_title);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bez
    /* renamed from: s */
    public void mo7284s(Object obj) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bez
    public void onResume() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bez
    /* renamed from: r */
    public void mo7285r(Object obj) {
        if (obj != null) {
            this.blN = (ToolBoxView.C3655a) obj;
            if (!TextUtils.isEmpty(this.blN.mainTitle)) {
                this.aFj.setText(this.blN.mainTitle);
            }
            this.aFj.setBackgroundColor(C3953zi.m1311pr().getColor(R.color.transparent));
        }
    }
}
