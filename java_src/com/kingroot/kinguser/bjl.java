package com.kingroot.kinguser;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.kingroot.kinguser.AbstractC3926yn;
import com.kingroot.kinguser.aex;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class bjl extends bjj {
    private AtomicBoolean bxi;

    public bjl(Context context) {
        super(context);
        this.bxi = new AtomicBoolean(false);
    }

    @Override // com.kingroot.kinguser.bjj
    /* renamed from: cb */
    public List<AbstractC3926yn.C3929b<aex.C0796a>> mo6716cb(List<aex.C0796a> list) {
        this.bxi.set(false);
        ArrayList arrayList = new ArrayList();
        if (!C3942yy.m1352c(list)) {
            try {
                Collections.sort(list, bwS);
            } catch (Throwable th) {
            }
            ArrayList<aex.C0796a> arrayList2 = new ArrayList();
            ArrayList<aex.C0796a> arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            for (aex.C0796a c0796a : list) {
                if (c0796a.afP != null) {
                    switch (aex.m12145a(c0796a)) {
                        case 0:
                            arrayList2.add(c0796a);
                            continue;
                        case 1:
                            arrayList3.add(c0796a);
                            continue;
                        default:
                            arrayList4.add(c0796a);
                            continue;
                    }
                }
            }
            boolean isRootPermition = abc.m12845qK().isRootPermition();
            ArrayList arrayList5 = new ArrayList();
            if (arrayList2.size() > 0) {
                String format = String.format(m1417V(2131166072L), Integer.valueOf(arrayList2.size()));
                arrayList5.add(new AbstractC3926yn.C3929b(format));
                for (aex.C0796a c0796a2 : arrayList2) {
                    c0796a2.afQ = isRootPermition;
                    arrayList5.add(new AbstractC3926yn.C3929b(c0796a2, format));
                }
            }
            if (arrayList3.size() > 0) {
                String format2 = String.format(m1417V(2131166074L), Integer.valueOf(arrayList3.size()));
                arrayList5.add(new AbstractC3926yn.C3929b(format2));
                for (aex.C0796a c0796a3 : arrayList3) {
                    c0796a3.afQ = isRootPermition;
                    arrayList5.add(new AbstractC3926yn.C3929b(c0796a3, format2));
                }
            }
            if (arrayList4.size() > 0) {
                arrayList5.add(new AbstractC3926yn.C3929b(null, String.format(m1417V(2131166075L), Integer.valueOf(arrayList4.size())), 2));
            }
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bjl.1
                @Override // java.lang.Runnable
                public void run() {
                    View findViewById = bjl.this.getContentView().findViewById(R.id.float_item);
                    if (abc.m12845qK().isRootPermition()) {
                        findViewById.setVisibility(8);
                        return;
                    }
                    findViewById.setVisibility(0);
                    ((TextView) findViewById.findViewById(R.id.warning_text)).setText(C3953zi.m1311pr().getString(R.string.software_uninstall_without_root_unable_to_uninstall));
                }
            });
            return arrayList5;
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
