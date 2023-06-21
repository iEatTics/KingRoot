package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class aqs implements aqb {
    private WeakReference<InterfaceC1466a> aLt;
    private int aLs = 0;
    protected final List<aqy<? extends arl>> aLu = new ArrayList();
    protected boolean aLv = false;
    protected boolean aLw = false;
    protected int aLx = 0;
    protected int aLy = 0;

    /* renamed from: com.kingroot.kinguser.aqs$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1466a {
        /* renamed from: a */
        void mo9562a(aqs aqsVar, aqy<? extends arl> aqyVar);

        /* renamed from: a */
        void mo9561a(aqy<? extends arl> aqyVar, int i);

        /* renamed from: b */
        void mo9560b(aqs aqsVar, aqy<? extends arl> aqyVar);

        /* renamed from: c */
        void mo9559c(aqs aqsVar);

        /* renamed from: d */
        void mo9558d(aqs aqsVar);
    }

    /* renamed from: ME */
    public abstract String mo9557ME();

    /* renamed from: MF */
    public abstract String mo9556MF();

    /* renamed from: MS */
    public abstract String mo9555MS();

    /* renamed from: MT */
    public abstract String mo9554MT();

    /* renamed from: MU */
    public abstract String mo9553MU();

    public abstract Drawable getIconDrawable();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: MX */
    public int mo9567MX() {
        return 20;
    }

    /* renamed from: LY */
    public void mo9571LY() {
        for (aqy<? extends arl> aqyVar : this.aLu) {
            aqyVar.m9552LY();
        }
    }

    @Override // com.kingroot.kinguser.aqb
    /* renamed from: My */
    public synchronized boolean mo9529My() {
        if (!this.aLv) {
            InterfaceC1466a m9566MY = m9566MY();
            if (m9566MY != null) {
                m9566MY.mo9559c(this);
            }
            for (aqy<? extends arl> aqyVar : this.aLu) {
                if (aqyVar.isVisible()) {
                    this.aLy++;
                }
                try {
                    aqyVar.mo9529My();
                } catch (Throwable th) {
                }
                if (!aqyVar.m9545Ng()) {
                    m9563a(aqyVar);
                }
            }
            if (m9566MY != null) {
                m9566MY.mo9558d(this);
            }
            this.aLv = true;
        }
        return true;
    }

    /* renamed from: MJ */
    public synchronized boolean mo9570MJ() {
        if (!this.aLw) {
            for (aqy<? extends arl> aqyVar : this.aLu) {
                InterfaceC1466a m9566MY = m9566MY();
                if (m9566MY != null) {
                    m9566MY.mo9562a(this, aqyVar);
                }
                if (aqyVar.m9545Ng()) {
                    if (m9566MY != null) {
                        m9566MY.mo9560b(this, aqyVar);
                    }
                } else {
                    try {
                        aqyVar.m9550MJ();
                    } catch (Throwable th) {
                    }
                    if (aqyVar.isVisible() && !aqyVar.mo9536Au()) {
                        this.aLx++;
                    }
                    if (m9566MY != null) {
                        m9566MY.mo9560b(this, aqyVar);
                    }
                }
            }
            this.aLw = true;
        }
        return true;
    }

    /* renamed from: MV */
    public List<aqy<? extends arl>> mo9569MV() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.aLu);
        return arrayList;
    }

    /* renamed from: a */
    private void m9563a(aqy<? extends arl> aqyVar) {
        int mo9567MX = mo9567MX() - this.aLs;
        int mo9535MK = aqyVar.mo9535MK();
        if (mo9567MX < mo9535MK) {
            this.aLs = mo9567MX();
        } else {
            this.aLs += mo9535MK;
            mo9567MX = mo9535MK;
        }
        InterfaceC1466a m9566MY = m9566MY();
        if (m9566MY != null) {
            m9566MY.mo9561a(aqyVar, mo9567MX);
        }
    }

    /* renamed from: MW */
    public int mo9568MW() {
        return this.aLs;
    }

    /* renamed from: a */
    public void mo9564a(InterfaceC1466a interfaceC1466a) {
        this.aLt = new WeakReference<>(interfaceC1466a);
    }

    @Nullable
    /* renamed from: MY */
    private InterfaceC1466a m9566MY() {
        if (this.aLt != null) {
            return this.aLt.get();
        }
        return null;
    }

    @Override // com.kingroot.kinguser.aqb
    @NonNull
    public String getKey() {
        return getClass().getName();
    }

    /* renamed from: MZ */
    public boolean m9565MZ() {
        for (aqy<? extends arl> aqyVar : this.aLu) {
            if (!aqyVar.m9545Ng()) {
                return false;
            }
        }
        return true;
    }
}
