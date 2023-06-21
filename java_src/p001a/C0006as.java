package p001a;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: a.as */
/* loaded from: classes.dex */
class C0006as implements InterfaceC0004aq {

    /* renamed from: am */
    private IBinder f59am;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0006as(IBinder iBinder) {
        this.f59am = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f59am;
    }

    @Override // p001a.InterfaceC0004aq
    /* renamed from: b */
    public C0008av mo13751b(C0007at c0007at) {
        C0008av c0008av;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.tencent.tps.common.cs.IXModService");
            if (c0007at != null) {
                obtain.writeInt(1);
                c0007at.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.f59am.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            if (obtain2.readInt() != 0) {
                c0008av = C0008av.CREATOR.createFromParcel(obtain2);
            } else {
                c0008av = null;
            }
            return c0008av;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
