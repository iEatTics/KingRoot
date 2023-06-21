package com.kingroot.kinguser.distribution.appsmarket.interfaces;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import java.util.List;
/* loaded from: classes.dex */
public interface ISearchAppsListener extends IInterface {
    void onReceive(int i, String str, int i2, int i3, int i4, List<AppBaseModel> list);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ISearchAppsListener {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.distribution.appsmarket.interfaces.ISearchAppsListener";
        static final int TRANSACTION_onReceive = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ISearchAppsListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ISearchAppsListener)) {
                return (ISearchAppsListener) queryLocalInterface;
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
                    onReceive(parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.createTypedArrayList(AppBaseModel.CREATOR));
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements ISearchAppsListener {
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

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ISearchAppsListener
            public void onReceive(int i, String str, int i2, int i3, int i4, List<AppBaseModel> list) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeTypedList(list);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
