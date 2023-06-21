package com.kingroot.common.ipc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.common.ipc.IIpcCallback;
/* loaded from: classes.dex */
public interface IKIpc extends IInterface {
    void asyncCall(String str, int i, ArgsPack argsPack, IIpcCallback iIpcCallback);

    IpcResult syncCall(String str, int i, ArgsPack argsPack);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IKIpc {
        private static final String DESCRIPTOR = "com.kingroot.common.ipc.IKIpc";
        static final int TRANSACTION_asyncCall = 1;
        static final int TRANSACTION_syncCall = 2;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IKIpc asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IKIpc)) {
                return (IKIpc) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    asyncCall(parcel.readString(), parcel.readInt(), parcel.readInt() != 0 ? ArgsPack.CREATOR.createFromParcel(parcel) : null, IIpcCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    IpcResult syncCall = syncCall(parcel.readString(), parcel.readInt(), parcel.readInt() != 0 ? ArgsPack.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (syncCall != null) {
                        parcel2.writeInt(1);
                        syncCall.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements IKIpc {
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

            @Override // com.kingroot.common.ipc.IKIpc
            public void asyncCall(String str, int i, ArgsPack argsPack, IIpcCallback iIpcCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    if (argsPack != null) {
                        obtain.writeInt(1);
                        argsPack.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iIpcCallback != null ? iIpcCallback.asBinder() : null);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.ipc.IKIpc
            public IpcResult syncCall(String str, int i, ArgsPack argsPack) {
                IpcResult ipcResult;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    if (argsPack != null) {
                        obtain.writeInt(1);
                        argsPack.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        ipcResult = IpcResult.CREATOR.createFromParcel(obtain2);
                    } else {
                        ipcResult = null;
                    }
                    return ipcResult;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
