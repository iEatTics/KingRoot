package com.kingroot.common.ipc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public interface IIpcCallback extends IInterface {
    void onFinish(IpcResult ipcResult);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IIpcCallback {
        private static final String DESCRIPTOR = "com.kingroot.common.ipc.IIpcCallback";
        static final int TRANSACTION_onFinish = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IIpcCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IIpcCallback)) {
                return (IIpcCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            IpcResult ipcResult;
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    if (parcel.readInt() != 0) {
                        ipcResult = IpcResult.CREATOR.createFromParcel(parcel);
                    } else {
                        ipcResult = null;
                    }
                    onFinish(ipcResult);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements IIpcCallback {
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

            @Override // com.kingroot.common.ipc.IIpcCallback
            public void onFinish(IpcResult ipcResult) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (ipcResult != null) {
                        obtain.writeInt(1);
                        ipcResult.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
