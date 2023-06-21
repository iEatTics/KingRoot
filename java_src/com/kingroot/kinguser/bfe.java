package com.kingroot.kinguser;

import android.content.pm.ApplicationInfo;
import android.view.View;
import android.widget.ImageView;
import com.kingroot.kinguses.R;
import java.util.Locale;
/* loaded from: classes.dex */
public class bfe extends bfa {
    protected ImageView blU;

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
        this.blU = (ImageView) this.mView.findViewById(R.id.expand_icon);
        this.blR.setVisibility(8);
        this.blQ.setVisibility(8);
        this.blU.setVisibility(0);
        this.mView.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bfe.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ais.m11585ye().m11584yf()) {
                    String m11578yl = ais.m11585ye().m11578yl();
                    ApplicationInfo applicationInfo = null;
                    try {
                        applicationInfo = C3952zh.m1312pq().getApplicationInfo(m11578yl, 0);
                    } catch (Exception e) {
                    }
                    if (applicationInfo != null && !applicationInfo.enabled) {
                        abc.m12845qK().m12846el(String.format(Locale.US, "pm enable %s", m11578yl));
                    }
                    try {
                        ais.m11581yi();
                    } catch (Exception e2) {
                    }
                } else {
                    bar.m7898VJ();
                }
                aks.m11143BP().m11036Ds();
                ady.m12308tK().mo1746bi(100166);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bfa, com.kingroot.kinguser.bez
    /* renamed from: r */
    public void mo7285r(Object obj) {
        super.mo7285r(obj);
        this.ahP.setImageResource(R.drawable.icon_kingmaster_pressed);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bez
    public void onResume() {
    }
}
