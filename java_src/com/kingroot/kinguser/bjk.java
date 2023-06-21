package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import com.kingroot.kinguser.AbstractC3926yn;
import com.kingroot.kinguser.aex;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class bjk extends bjj {
    private AtomicBoolean bxi;

    public bjk(Context context) {
        super(context);
        this.bxi = new AtomicBoolean(false);
    }

    @Override // com.kingroot.kinguser.bjj
    /* renamed from: cb */
    public List<AbstractC3926yn.C3929b<aex.C0796a>> mo6716cb(List<aex.C0796a> list) {
        this.bxi.set(false);
        ArrayList arrayList = new ArrayList();
        if (!C3942yy.m1352c(list)) {
            Iterator<aex.C0796a> it = list.iterator();
            while (it.hasNext()) {
                aex.C0796a next = it.next();
                if (next == null) {
                    it.remove();
                } else if (next.afP == null) {
                    it.remove();
                } else if (!TextUtils.isEmpty(next.afP.packageName) && "com.tencent.qqpimsecure".equals(next.afP.packageName.trim())) {
                    it.remove();
                } else {
                    next.afQ = true;
                }
            }
            Collections.sort(list, bwR);
            ArrayList arrayList2 = new ArrayList();
            if (list.size() > 0) {
                String format = String.format(m1417V(2131166081L), Integer.valueOf(list.size()));
                arrayList2.add(new AbstractC3926yn.C3929b(format));
                for (aex.C0796a c0796a : list) {
                    arrayList2.add(new AbstractC3926yn.C3929b(c0796a, format));
                }
            }
            return arrayList2;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        getContentView().findViewById(R.id.float_item).setVisibility(8);
    }

    @Override // com.kingroot.kinguser.bjj
    public boolean adZ() {
        return this.bxi.get();
    }
}
