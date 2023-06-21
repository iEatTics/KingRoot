package com.kingroot.kinguser.distribution.appsmarket.interfaces;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
/* loaded from: classes.dex */
public interface IOnWifiAutoDownloadListener extends IInterface {
    void onTriggerWifiAutoDownload(List<String> list);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IOnWifiAutoDownloadListener {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.distribution.appsmarket.interfaces.IOnWifiAutoDownloadListener";
        static final int TRANSACTION_onTriggerWifiAutoDownload = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IOnWifiAutoDownloadListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IOnWifiAutoDownloadListener)) {
                return (IOnWifiAutoDownloadListener) queryLocalInterface;
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
                    onTriggerWifiAutoDownload(parcel.createStringArrayList());
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements IOnWifiAutoDownloadListener {
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

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IOnWifiAutoDownloadListener
            public void onTriggerWifiAutoDownload(List<String> list) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStringList(list);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
