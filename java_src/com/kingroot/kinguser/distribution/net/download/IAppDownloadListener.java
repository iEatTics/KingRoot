package com.kingroot.kinguser.distribution.net.download;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public interface IAppDownloadListener extends IInterface {
    void onComplete(DownloaderTaskInfo downloaderTaskInfo);

    void onFailed(DownloaderTaskInfo downloaderTaskInfo);

    void onPaused(DownloaderTaskInfo downloaderTaskInfo);

    void onPending(DownloaderTaskInfo downloaderTaskInfo);

    void onProgress(int i, DownloaderTaskInfo downloaderTaskInfo);

    void onRemove(DownloaderTaskInfo downloaderTaskInfo);

    void onStartDownload(DownloaderTaskInfo downloaderTaskInfo);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IAppDownloadListener {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.distribution.net.download.IAppDownloadListener";
        static final int TRANSACTION_onComplete = 3;
        static final int TRANSACTION_onFailed = 4;
        static final int TRANSACTION_onPaused = 5;
        static final int TRANSACTION_onPending = 6;
        static final int TRANSACTION_onProgress = 1;
        static final int TRANSACTION_onRemove = 7;
        static final int TRANSACTION_onStartDownload = 2;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAppDownloadListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IAppDownloadListener)) {
                return (IAppDownloadListener) queryLocalInterface;
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
                    onProgress(parcel.readInt(), parcel.readInt() != 0 ? DownloaderTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onStartDownload(parcel.readInt() != 0 ? DownloaderTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onComplete(parcel.readInt() != 0 ? DownloaderTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onFailed(parcel.readInt() != 0 ? DownloaderTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPaused(parcel.readInt() != 0 ? DownloaderTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPending(parcel.readInt() != 0 ? DownloaderTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onRemove(parcel.readInt() != 0 ? DownloaderTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements IAppDownloadListener {
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

            @Override // com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onProgress(int i, DownloaderTaskInfo downloaderTaskInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (downloaderTaskInfo != null) {
                        obtain.writeInt(1);
                        downloaderTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onStartDownload(DownloaderTaskInfo downloaderTaskInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (downloaderTaskInfo != null) {
                        obtain.writeInt(1);
                        downloaderTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onComplete(DownloaderTaskInfo downloaderTaskInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (downloaderTaskInfo != null) {
                        obtain.writeInt(1);
                        downloaderTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onFailed(DownloaderTaskInfo downloaderTaskInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (downloaderTaskInfo != null) {
                        obtain.writeInt(1);
                        downloaderTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPaused(DownloaderTaskInfo downloaderTaskInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (downloaderTaskInfo != null) {
                        obtain.writeInt(1);
                        downloaderTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPending(DownloaderTaskInfo downloaderTaskInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (downloaderTaskInfo != null) {
                        obtain.writeInt(1);
                        downloaderTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onRemove(DownloaderTaskInfo downloaderTaskInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (downloaderTaskInfo != null) {
                        obtain.writeInt(1);
                        downloaderTaskInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
