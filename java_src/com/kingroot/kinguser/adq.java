package com.kingroot.kinguser;
/* loaded from: classes.dex */
public abstract class adq implements Comparable<adq> {
    public String adr;
    public int ads;
    protected InterfaceC0729a adt;
    public long mId;
    int mPosition;
    protected int mState;
    public String mVersion;

    /* renamed from: com.kingroot.kinguser.adq$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0729a {
    }

    public abstract void onStart();

    /* renamed from: sT */
    public abstract void mo12464sT();

    /* renamed from: sU */
    public abstract void mo12463sU();

    /* renamed from: cB */
    public adq m12466cB(int i) {
        this.mPosition = i;
        return this;
    }

    /* renamed from: a */
    public void m12468a(InterfaceC0729a interfaceC0729a) {
        this.adt = interfaceC0729a;
    }

    /* renamed from: sV */
    public void m12465sV() {
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(adq adqVar) {
        if (adqVar == null) {
            return 1;
        }
        return this.mPosition - adqVar.mPosition;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof adq)) {
        }
        return false;
    }

    @Override // 
    /* renamed from: sW */
    public adq clone() {
        try {
            adq adqVar = (adq) getClass().newInstance();
            adqVar.mId = this.mId;
            adqVar.adr = this.adr;
            adqVar.mVersion = this.mVersion;
            adqVar.ads = this.ads;
            adqVar.mPosition = this.mPosition;
            adqVar.adt = this.adt;
            adqVar.mState = this.mState;
            return adqVar;
        } catch (IllegalAccessException | InstantiationException e) {
            return null;
        }
    }
}
