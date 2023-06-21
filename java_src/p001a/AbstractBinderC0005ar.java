package p001a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: a.ar */
/* loaded from: classes.dex */
public abstract class AbstractBinderC0005ar extends Binder implements InterfaceC0004aq {
    /* renamed from: a */
    public static InterfaceC0004aq m13752a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.tencent.tps.common.cs.IXModService");
        if (queryLocalInterface != null && (queryLocalInterface instanceof InterfaceC0004aq)) {
            return (InterfaceC0004aq) queryLocalInterface;
        }
        return new C0006as(iBinder);
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        C0007at c0007at;
        switch (i) {
            case 1:
                parcel.enforceInterface("com.tencent.tps.common.cs.IXModService");
                if (parcel.readInt() != 0) {
                    c0007at = C0007at.CREATOR.createFromParcel(parcel);
                } else {
                    c0007at = null;
                }
                C0008av b = mo13751b(c0007at);
                parcel2.writeNoException();
                if (b != null) {
                    parcel2.writeInt(1);
                    b.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            case 1598968902:
                parcel2.writeString("com.tencent.tps.common.cs.IXModService");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
