package com.kingroot.kinguser.distribution.appsmarket.interfaces;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import java.util.List;
/* loaded from: classes.dex */
public interface ILoadRecommendAppsListener extends IInterface {
    void onReceive(int i, int i2, String str, List<AppBaseModel> list);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ILoadRecommendAppsListener {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadRecommendAppsListener";
        static final int TRANSACTION_onReceive = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ILoadRecommendAppsListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ILoadRecommendAppsListener)) {
                return (ILoadRecommendAppsListener) queryLocalInterface;
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
                    onReceive(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.createTypedArrayList(AppBaseModel.CREATOR));
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements ILoadRecommendAppsListener {
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

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadRecommendAppsListener
            public void onReceive(int i, int i2, String str, List<AppBaseModel> list) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    obtain.writeTypedList(list);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
