package com.kingroot.common.network.download;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public interface INetworkLoadTaskCallback extends IInterface {
    void onDeleted(NetworkLoadTaskInfo networkLoadTaskInfo);

    void onFailed(NetworkLoadTaskInfo networkLoadTaskInfo);

    void onFinished(NetworkLoadTaskInfo networkLoadTaskInfo);

    void onInstallFailed(NetworkLoadTaskInfo networkLoadTaskInfo);

    void onInstallFinished(NetworkLoadTaskInfo networkLoadTaskInfo);

    void onPaused(NetworkLoadTaskInfo networkLoadTaskInfo);

    void onProgressChanged(NetworkLoadTaskInfo networkLoadTaskInfo);

    void onRunning(NetworkLoadTaskInfo networkLoadTaskInfo);

    void onWaiting(NetworkLoadTaskInfo networkLoadTaskInfo);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements INetworkLoadTaskCallback {
        private static final String DESCRIPTOR = "com.kingroot.common.network.download.INetworkLoadTaskCallback";
        static final int TRANSACTION_onDeleted = 7;
        static final int TRANSACTION_onFailed = 5;
        static final int TRANSACTION_onFinished = 4;
        static final int TRANSACTION_onInstallFailed = 9;
        static final int TRANSACTION_onInstallFinished = 8;
        static final int TRANSACTION_onPaused = 6;
        static final int TRANSACTION_onProgressChanged = 3;
        static final int TRANSACTION_onRunning = 2;
        static final int TRANSACTION_onWaiting = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static INetworkLoadTaskCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof INetworkLoadTaskCallback)) {
                return (INetworkLoadTaskCallback) queryLocalInterface;
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
                    onWaiting(parcel.readInt() != 0 ? NetworkLoadTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onRunning(parcel.readInt() != 0 ? NetworkLoadTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onProgressChanged(parcel.readInt() != 0 ? NetworkLoadTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onFinished(parcel.readInt() != 0 ? NetworkLoadTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onFailed(parcel.readInt() != 0 ? NetworkLoadTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPaused(parcel.readInt() != 0 ? NetworkLoadTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDeleted(parcel.readInt() != 0 ? NetworkLoadTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    onInstallFinished(parcel.readInt() != 0 ? NetworkLoadTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    onInstallFailed(parcel.readInt() != 0 ? NetworkLoadTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements INetworkLoadTaskCallback {
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

            @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onWaiting(NetworkLoadTaskInfo networkLoadTaskInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (networkLoadTaskInfo != null) {
                        obtain.writeInt(1);
                        networkLoadTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onRunning(NetworkLoadTaskInfo networkLoadTaskInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (networkLoadTaskInfo != null) {
                        obtain.writeInt(1);
                        networkLoadTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onProgressChanged(NetworkLoadTaskInfo networkLoadTaskInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (networkLoadTaskInfo != null) {
                        obtain.writeInt(1);
                        networkLoadTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onFinished(NetworkLoadTaskInfo networkLoadTaskInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (networkLoadTaskInfo != null) {
                        obtain.writeInt(1);
                        networkLoadTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onFailed(NetworkLoadTaskInfo networkLoadTaskInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (networkLoadTaskInfo != null) {
                        obtain.writeInt(1);
                        networkLoadTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onPaused(NetworkLoadTaskInfo networkLoadTaskInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (networkLoadTaskInfo != null) {
                        obtain.writeInt(1);
                        networkLoadTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onDeleted(NetworkLoadTaskInfo networkLoadTaskInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (networkLoadTaskInfo != null) {
                        obtain.writeInt(1);
                        networkLoadTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onInstallFinished(NetworkLoadTaskInfo networkLoadTaskInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (networkLoadTaskInfo != null) {
                        obtain.writeInt(1);
                        networkLoadTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onInstallFailed(NetworkLoadTaskInfo networkLoadTaskInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (networkLoadTaskInfo != null) {
                        obtain.writeInt(1);
                        networkLoadTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
