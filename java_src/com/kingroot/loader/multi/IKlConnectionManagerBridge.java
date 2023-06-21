package com.kingroot.loader.multi;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public interface IKlConnectionManagerBridge extends IInterface {
    IBinder getService(int i, Intent intent);

    /* renamed from: com.kingroot.loader.multi.IKlConnectionManagerBridge$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC3993a extends Binder implements IKlConnectionManagerBridge {
        public AbstractBinderC3993a() {
            attachInterface(this, "com.kingroot.loader.multi.IKlConnectionManagerBridge");
        }

        /* renamed from: a */
        public static IKlConnectionManagerBridge m1219a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.kingroot.loader.multi.IKlConnectionManagerBridge");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IKlConnectionManagerBridge)) {
                return (IKlConnectionManagerBridge) queryLocalInterface;
            }
            return new C3994a(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            Intent intent;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.kingroot.loader.multi.IKlConnectionManagerBridge");
                    int readInt = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        intent = (Intent) Intent.CREATOR.createFromParcel(parcel);
                    } else {
                        intent = null;
                    }
                    IBinder service = getService(readInt, intent);
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(service);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.kingroot.loader.multi.IKlConnectionManagerBridge");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* renamed from: com.kingroot.loader.multi.IKlConnectionManagerBridge$a$a */
        /* loaded from: classes.dex */
        static class C3994a implements IKlConnectionManagerBridge {

            /* renamed from: a */
            private IBinder f4120a;

            C3994a(IBinder iBinder) {
                this.f4120a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4120a;
            }

            @Override // com.kingroot.loader.multi.IKlConnectionManagerBridge
            public IBinder getService(int i, Intent intent) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.kingroot.loader.multi.IKlConnectionManagerBridge");
                    obtain.writeInt(i);
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4120a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readStrongBinder();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
