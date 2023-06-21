package com.kingroot.kinguser;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.p007v7.internal.widget.ActivityChooserView;
import com.kingroot.kinguser.agp;
/* loaded from: classes.dex */
public class agr {
    private static cce<agr> amX = new cce<agr>() { // from class: com.kingroot.kinguser.agr.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: vY */
        public agr create() {
            return new agr();
        }
    };
    private IBinder amW;

    /* renamed from: vW */
    public static agr m11914vW() {
        return amX.get();
    }

    private agr() {
        this.amW = null;
    }

    /* renamed from: fA */
    public boolean m11916fA(String str) {
        boolean z;
        IBinder m12963dL = aan.m12963dL(str);
        if (m12963dL == null) {
            return false;
        }
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            m12963dL.transact(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, obtain, obtain2, 0);
            obtain2.readException();
            z = obtain2.readInt() == 1;
            obtain.recycle();
            obtain2.recycle();
        } catch (RemoteException e) {
            obtain.recycle();
            obtain2.recycle();
            z = false;
        } catch (Throwable th) {
            obtain.recycle();
            obtain2.recycle();
            throw th;
        }
        return z;
    }

    /* renamed from: vX */
    public boolean m11913vX() {
        if (this.amW == null) {
            this.amW = aan.m12963dL(ago.m11926fy("kinguser_9"));
        }
        try {
            agp m11921h = agp.AbstractC0907b.m11921h(this.amW);
            if (m11921h != null) {
                if ("kinguser_9".equals(m11921h.mo11922vV())) {
                    return false;
                }
            }
        } catch (Exception e) {
        }
        return true;
    }

    /* renamed from: F */
    public void m11917F(int i, String str) {
        if (this.amW == null) {
            this.amW = aan.m12963dL(ago.m11926fy("kinguser_9"));
        }
        try {
            agp m11921h = agp.AbstractC0907b.m11921h(this.amW);
            if (m11921h != null) {
                m11921h.mo11925E(i, str);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: fz */
    public boolean m11915fz(String str) {
        if (this.amW == null) {
            this.amW = aan.m12963dL(ago.m11926fy("kinguser_9"));
        }
        try {
            agp m11921h = agp.AbstractC0907b.m11921h(this.amW);
            if (m11921h != null) {
                return m11921h.mo11923fz(str);
            }
        } catch (Exception e) {
        }
        return false;
    }
}
