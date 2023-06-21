package com.kingroot.kinguser.activitys;

import com.kingroot.common.framework.main.MainExitReceiver;
import com.kingroot.common.uilib.template.BaseActivity;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.aft;
import com.kingroot.kinguser.akh;
import com.kingroot.kinguser.bij;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public abstract class KUBaseActivity extends BaseActivity {
    private final HashSet<bij> aiw = new HashSet<>();

    @Override // com.kingroot.common.uilib.template.BaseActivity, com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        aft.m12027e(this);
        MainExitReceiver.m13404jF();
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        aft.m12028d(this);
        if (akh.m11295Au()) {
            akh.m11292aT(false);
            ady.m12308tK().mo1748a(100530, 0, (List<Object>) null, true);
        }
    }

    /* renamed from: a */
    public void m12619a(bij bijVar) {
        if (bijVar != null && bijVar.acW() == this) {
            synchronized (this.aiw) {
                this.aiw.add(bijVar);
            }
        }
    }

    /* renamed from: b */
    public void m12618b(bij bijVar) {
        if (bijVar != null && bijVar.acW() == this) {
            synchronized (this.aiw) {
                this.aiw.remove(bijVar);
            }
        }
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onDestroy() {
        synchronized (this.aiw) {
            Iterator<bij> it = this.aiw.iterator();
            while (it.hasNext()) {
                bij next = it.next();
                if (next.isShowing()) {
                    next.dismiss();
                }
            }
            this.aiw.clear();
        }
        super.onDestroy();
    }
}
