package com.kingroot.loader.multi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public interface IKlPostRestartUpdateObserverBridge extends IInterface {
    void onPostCompleted(String str, int i);

    /* renamed from: com.kingroot.loader.multi.IKlPostRestartUpdateObserverBridge$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC3997a extends Binder implements IKlPostRestartUpdateObserverBridge {
        public AbstractBinderC3997a() {
            attachInterface(this, "com.kingroot.loader.multi.IKlPostRestartUpdateObserverBridge");
        }

        /* renamed from: a */
        public static IKlPostRestartUpdateObserverBridge m1217a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.kingroot.loader.multi.IKlPostRestartUpdateObserverBridge");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IKlPostRestartUpdateObserverBridge)) {
                return (IKlPostRestartUpdateObserverBridge) queryLocalInterface;
            }
            return new C3998a(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.kingroot.loader.multi.IKlPostRestartUpdateObserverBridge");
                    onPostCompleted(parcel.readString(), parcel.readInt());
                    return true;
                case 1598968902:
                    parcel2.writeString("com.kingroot.loader.multi.IKlPostRestartUpdateObserverBridge");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* renamed from: com.kingroot.loader.multi.IKlPostRestartUpdateObserverBridge$a$a */
        /* loaded from: classes.dex */
        static class C3998a implements IKlPostRestartUpdateObserverBridge {

            /* renamed from: a */
            private IBinder f4122a;

            C3998a(IBinder iBinder) {
                this.f4122a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4122a;
            }

            @Override // com.kingroot.loader.multi.IKlPostRestartUpdateObserverBridge
            public void onPostCompleted(String str, int i) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.kingroot.loader.multi.IKlPostRestartUpdateObserverBridge");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.f4122a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
