package com.kingroot.kinguser.plugin.qqpim.protocol.shark;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.loader.common.protocol.SerializableParcel;
/* loaded from: classes.dex */
public interface ISharkCallback extends IInterface {
    void onFinish(int i, int i2, int i3, int i4, SerializableParcel serializableParcel);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ISharkCallback {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.plugin.qqpim.protocol.shark.ISharkCallback";
        static final int TRANSACTION_onFinish = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ISharkCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ISharkCallback)) {
                return (ISharkCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            SerializableParcel serializableParcel;
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    int readInt = parcel.readInt();
                    int readInt2 = parcel.readInt();
                    int readInt3 = parcel.readInt();
                    int readInt4 = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        serializableParcel = SerializableParcel.CREATOR.createFromParcel(parcel);
                    } else {
                        serializableParcel = null;
                    }
                    onFinish(readInt, readInt2, readInt3, readInt4, serializableParcel);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements ISharkCallback {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.kingroot.kinguser.plugin.qqpim.protocol.shark.ISharkCallback
            public void onFinish(int i, int i2, int i3, int i4, SerializableParcel serializableParcel) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    if (serializableParcel != null) {
                        obtain.writeInt(1);
                        serializableParcel.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
