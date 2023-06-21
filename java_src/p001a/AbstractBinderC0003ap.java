package p001a;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
/* renamed from: a.ap */
/* loaded from: classes.dex */
public abstract class AbstractBinderC0003ap extends Binder implements InterfaceC0002ao {
    public AbstractBinderC0003ap() {
        attachInterface(this, "com.tencent.tps.common.cs.IXModClient");
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        C0008av c0008av;
        switch (i) {
            case 1:
                parcel.enforceInterface("com.tencent.tps.common.cs.IXModClient");
                if (parcel.readInt() != 0) {
                    c0008av = C0008av.CREATOR.createFromParcel(parcel);
                } else {
                    c0008av = null;
                }
                mo13749a(c0008av);
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.tencent.tps.common.cs.IXModClient");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
