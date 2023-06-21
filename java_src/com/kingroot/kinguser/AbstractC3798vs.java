package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.network.statics.ActionStatsID;
import com.kingroot.kinguser.AbstractC3793vo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.kingroot.kinguser.vs */
/* loaded from: classes.dex */
public abstract class AbstractC3798vs<T> implements ActionStatsID, InterfaceC3797vr<T> {

    /* renamed from: Lh */
    protected AbstractC3793vo.InterfaceC3794a<T> f3780Lh;

    /* renamed from: lP */
    protected abstract InterfaceC3797vr<T> mo1730lP();

    @NonNull
    /* renamed from: lQ */
    protected abstract C2687c mo1729lQ();

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3798vs() {
        AbstractC3793vo<T> m1735lR = m1735lR();
        if (m1735lR != null) {
            this.f3780Lh = m1735lR.mo1755lO();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: D */
    public boolean m1750D(List<T> list) {
        return this.f3780Lh != null && this.f3780Lh.mo1754a(list, mo1729lQ());
    }

    @Nullable
    /* renamed from: lR */
    protected AbstractC3793vo<T> m1735lR() {
        return KApplication.m13439if();
    }

    /* renamed from: lS */
    private boolean m1734lS() {
        return (mo1730lP() == null || this.f3780Lh == null) ? false : true;
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: bi */
    public void mo1746bi(int i) {
        if (m1734lS()) {
            mo1730lP().mo1746bi(i);
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: w */
    public void mo1733w(int i, int i2) {
        if (m1734lS()) {
            mo1730lP().mo1733w(i, i2);
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: a */
    public void mo1747a(int i, List<Object> list) {
        if (m1734lS()) {
            mo1730lP().mo1747a(i, m1749E(list));
        }
    }

    @NonNull
    /* renamed from: E */
    private List<Object> m1749E(List<Object> list) {
        ArrayList arrayList = new ArrayList(list.size() + 1);
        arrayList.add(KApplication.m13443ia());
        arrayList.addAll(1, list);
        return arrayList;
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: lB */
    public List<T> mo1745lB() {
        return m1734lS() ? mo1730lP().mo1745lB() : Collections.emptyList();
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: lC */
    public List<T> mo1744lC() {
        return m1734lS() ? mo1730lP().mo1744lC() : Collections.emptyList();
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: lD */
    public void mo1743lD() {
        if (m1734lS()) {
            mo1730lP().mo1743lD();
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: lE */
    public void mo1742lE() {
        if (m1734lS()) {
            mo1730lP().mo1742lE();
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: lG */
    public List<T> mo1740lG() {
        return m1734lS() ? mo1730lP().mo1740lG() : Collections.emptyList();
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: lH */
    public void mo1739lH() {
        if (m1734lS()) {
            mo1730lP().mo1739lH();
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: lI */
    public List<T> mo1738lI() {
        return m1734lS() ? mo1730lP().mo1738lI() : Collections.emptyList();
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: a */
    public void mo1748a(int i, int i2, List<Object> list, boolean z) {
        if (m1734lS()) {
            mo1730lP().mo1748a(i, i2, m1749E(list), z);
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: lJ */
    public void mo1737lJ() {
        if (m1734lS()) {
            mo1730lP().mo1737lJ();
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: lK */
    public List<T> mo1736lK() {
        return m1734lS() ? mo1730lP().mo1736lK() : Collections.emptyList();
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: lF */
    public void mo1741lF() {
        if (m1734lS()) {
            mo1730lP().mo1741lF();
        }
    }
}
