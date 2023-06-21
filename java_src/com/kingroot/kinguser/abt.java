package com.kingroot.kinguser;

import com.kingroot.kinguser.abw;
import com.kingroot.kinguser.aci;
/* loaded from: classes.dex */
public class abt extends abs {

    /* renamed from: ZL */
    private volatile boolean f1368ZL = false;

    /* renamed from: ZM */
    private int f1369ZM = 0;
    private long mStartTime = 0;

    @Override // com.kingroot.kinguser.abs, com.kingroot.kinguser.abz
    /* renamed from: a */
    public void mo12741a(aci.EnumC0652a enumC0652a) {
        super.mo12741a(enumC0652a);
    }

    @Override // com.kingroot.kinguser.abs, com.kingroot.kinguser.abz
    /* renamed from: a */
    public void mo6517a(abw.C0647a c0647a) {
        if (c0647a != null) {
            super.mo6517a(c0647a);
            switch (c0647a.aab) {
                case TYPE_ROOT_ALL_PATH_SU:
                    this.f1369ZM = 8;
                    return;
                case TYPE_ROOT_GLOBAL_SU:
                    this.f1369ZM = 5;
                    return;
                case TYPE_ROOT_KM_DAEMON:
                    this.f1369ZM = 1;
                    return;
                case TYPE_ROOT_KU_BACKUP:
                    this.f1369ZM = 6;
                    return;
                case TYPE_ROOT_KU_BACKUP_2:
                    this.f1369ZM = 11;
                    return;
                case TYPE_ROOT_KU_DAEMON:
                    this.f1369ZM = 2;
                    return;
                case TYPE_ROOT_KU_SU:
                    this.f1369ZM = 3;
                    return;
                case TYPE_ROOT_SUPER_SU:
                    this.f1369ZM = 4;
                    return;
                case TYPE_ROOT_KM_BACKUP:
                    m12754am(c0647a.m12742rs());
                    this.f1369ZM = 9;
                    return;
                case TYPE_ROOT_QQSECURITY:
                    this.f1369ZM = 7;
                    return;
                case TYPE_ROOT_SELF_DAEMON:
                    this.f1369ZM = 10;
                    return;
                case TYPE_KU_DEV_SUD:
                    this.f1369ZM = 12;
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: am */
    private void m12754am(boolean z) {
        aco.m12705ap(z);
    }

    @Override // com.kingroot.kinguser.abs
    /* renamed from: rt */
    protected aci mo6515rt() {
        return new aci();
    }

    /* renamed from: ru */
    protected boolean m12753ru() {
        if (!m12755rs() || this.f1368ZL) {
            return false;
        }
        this.f1368ZL = aco.m12704e(this.f1367ZK.aaa);
        aco.m12706ao(this.f1368ZL);
        return this.f1368ZL;
    }

    @Override // com.kingroot.kinguser.abz
    public void onStart() {
        m12753ru();
        this.mStartTime = System.currentTimeMillis();
    }

    @Override // com.kingroot.kinguser.abz
    /* renamed from: b */
    public void mo6516b(abw.C0647a c0647a) {
        if (c0647a != null) {
            aco.m12707a(System.currentTimeMillis() - this.mStartTime, c0647a.m12742rs(), this.f1369ZM);
        }
    }
}
