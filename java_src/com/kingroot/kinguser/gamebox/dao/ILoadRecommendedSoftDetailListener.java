package com.kingroot.kinguser.gamebox.dao;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDetailModel;
/* loaded from: classes.dex */
public interface ILoadRecommendedSoftDetailListener extends IInterface {
    void onLoadSoftDetailEnd(AppDetailModel appDetailModel);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ILoadRecommendedSoftDetailListener {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.gamebox.dao.ILoadRecommendedSoftDetailListener";
        static final int TRANSACTION_onLoadSoftDetailEnd = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ILoadRecommendedSoftDetailListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ILoadRecommendedSoftDetailListener)) {
                return (ILoadRecommendedSoftDetailListener) queryLocalInterface;
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
                    if (parcel.readInt() != 0) {
                        appDetailModel = AppDetailModel.CREATOR.createFromParcel(parcel);
                    } else {
                        appDetailModel = null;
                    }
                    onLoadSoftDetailEnd(appDetailModel);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements ILoadRecommendedSoftDetailListener {
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

            @Override // com.kingroot.kinguser.gamebox.dao.ILoadRecommendedSoftDetailListener
            public void onLoadSoftDetailEnd(AppDetailModel appDetailModel) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
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
