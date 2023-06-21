package com.kingroot.kinguser.distribution.appsmarket.interfaces;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import java.util.List;
/* loaded from: classes.dex */
public interface IRequestAvailUpdateListener extends IInterface {
    void onFetchDiffResult(List<AvailUpdateInfo> list, boolean z);

    void onFetchResult(List<AvailUpdateInfo> list, boolean z);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IRequestAvailUpdateListener {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener";
        static final int TRANSACTION_onFetchDiffResult = 2;
        static final int TRANSACTION_onFetchResult = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IRequestAvailUpdateListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IRequestAvailUpdateListener)) {
                return (IRequestAvailUpdateListener) queryLocalInterface;
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
                    onFetchResult(parcel.createTypedArrayList(AvailUpdateInfo.CREATOR), parcel.readInt() != 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onFetchDiffResult(parcel.createTypedArrayList(AvailUpdateInfo.CREATOR), parcel.readInt() != 0);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements IRequestAvailUpdateListener {
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

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener
            public void onFetchResult(List<AvailUpdateInfo> list, boolean z) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeTypedList(list);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener
            public void onFetchDiffResult(List<AvailUpdateInfo> list, boolean z) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeTypedList(list);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
