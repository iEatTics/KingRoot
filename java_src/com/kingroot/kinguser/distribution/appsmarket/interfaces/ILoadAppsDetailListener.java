package com.kingroot.kinguser.distribution.appsmarket.interfaces;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDetailModel;
/* loaded from: classes.dex */
public interface ILoadAppsDetailListener extends IInterface {
    void onReceive(int i, AppDetailModel appDetailModel);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ILoadAppsDetailListener {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsDetailListener";
        static final int TRANSACTION_onReceive = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ILoadAppsDetailListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ILoadAppsDetailListener)) {
                return (ILoadAppsDetailListener) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            AppDetailModel appDetailModel;
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    int readInt = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        appDetailModel = AppDetailModel.CREATOR.createFromParcel(parcel);
                    } else {
                        appDetailModel = null;
                    }
                    onReceive(readInt, appDetailModel);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements ILoadAppsDetailListener {
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

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsDetailListener
            public void onReceive(int i, AppDetailModel appDetailModel) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (appDetailModel != null) {
                        obtain.writeInt(1);
                        appDetailModel.writeToParcel(obtain, 0);
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
