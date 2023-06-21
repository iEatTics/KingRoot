package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.BaseAdapter;
import com.kingroot.kinguser.agg;
import com.kingroot.kinguser.auc;
import com.kingroot.kinguser.bhu;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class axs extends AbstractC3921yl {
    protected ArrayList<auc> alr;

    public axs(Context context) {
        super(context);
        this.alr = new ArrayList<>();
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl
    protected BaseAdapter getAdapter() {
        return null;
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl
    /* renamed from: oJ */
    protected int mo1419oJ() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        this.f4011Vd.setDivider(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: UF */
    public void m8161UF() {
        auc aucVar = new auc();
        aucVar.mType = 6;
        this.alr.add(aucVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m8158a(int i, int i2, String str, boolean z, boolean z2, agg.InterfaceC0882a interfaceC0882a) {
        auc aucVar = new auc();
        aucVar.mType = 3;
        aucVar.aQX = i;
        aucVar.mIconResId = i2;
        aucVar.aQY = str;
        aucVar.aRa = "";
        aucVar.aRh = z;
        aucVar.aRj = interfaceC0882a;
        aucVar.aRi = z2;
        this.alr.add(aucVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m8159a(int i, int i2, String str, boolean z, agg.InterfaceC0882a interfaceC0882a) {
        auc aucVar = new auc();
        aucVar.mType = 3;
        aucVar.aQX = i;
        aucVar.mIconResId = i2;
        aucVar.aQY = str;
        aucVar.aRa = "";
        aucVar.aRh = z;
        aucVar.aRj = interfaceC0882a;
        this.alr.add(aucVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m8156a(int i, String str, String str2, String[] strArr, int i2, bhu.InterfaceC2291a interfaceC2291a) {
        auc aucVar = new auc();
        aucVar.mType = 2;
        aucVar.aQX = i;
        aucVar.aQY = str;
        aucVar.aRa = str2;
        aucVar.aRe = strArr;
        aucVar.aRf = i2;
        aucVar.aRg = interfaceC2291a;
        this.alr.add(aucVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m8160a(int i, int i2, String str, String str2, String[] strArr, int i3, bhu.InterfaceC2291a interfaceC2291a) {
        auc aucVar = new auc();
        aucVar.mType = 2;
        aucVar.aQX = i;
        aucVar.mIconResId = i2;
        aucVar.aQY = str;
        aucVar.aRa = str2;
        aucVar.aRe = strArr;
        aucVar.aRf = i3;
        aucVar.aRg = interfaceC2291a;
        this.alr.add(aucVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m8157a(int i, String str, String str2, Drawable drawable, String[] strArr, int i2, bhu.InterfaceC2291a interfaceC2291a) {
        auc aucVar = new auc();
        aucVar.mType = 12;
        aucVar.aQX = i;
        aucVar.aQY = str;
        aucVar.aRa = str2;
        aucVar.aRd = drawable;
        aucVar.aRe = strArr;
        aucVar.aRf = i2;
        aucVar.aRg = interfaceC2291a;
        this.alr.add(aucVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: ka */
    public void m8152ka(String str) {
        auc aucVar = new auc();
        aucVar.mType = 0;
        aucVar.aQY = str;
        aucVar.aRa = "";
        this.alr.add(aucVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void m8153g(String str, String str2, int i) {
        auc aucVar = new auc();
        aucVar.mType = 10;
        aucVar.f1608CJ = str;
        aucVar.aRc = str2;
        aucVar.mIconResId = i;
        this.alr.add(aucVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: aG */
    public void m8154aG(String str, String str2) {
        auc aucVar = new auc();
        aucVar.mType = 11;
        aucVar.aRb = str;
        aucVar.aRc = str2;
        this.alr.add(aucVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m8155a(String[] strArr, int i, auc.InterfaceC1600a interfaceC1600a) {
        if (strArr != null && i >= 0 && i < strArr.length) {
            int i2 = 0;
            while (i2 < strArr.length) {
                m8161UF();
                auc aucVar = new auc();
                aucVar.mType = 9;
                aucVar.aQY = strArr[i2];
                aucVar.mSelected = i2 == i;
                aucVar.aRk = interfaceC1600a;
                aucVar.mPos = i2;
                this.alr.add(aucVar);
                i2++;
            }
        }
    }
}
