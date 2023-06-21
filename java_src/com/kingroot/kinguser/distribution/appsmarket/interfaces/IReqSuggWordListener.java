package com.kingroot.kinguser.distribution.appsmarket.interfaces;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import java.util.List;
/* loaded from: classes.dex */
public interface IReqSuggWordListener extends IInterface {
    void onReceive(int i, List<AppBaseModel> list, List<String> list2);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IReqSuggWordListener {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.distribution.appsmarket.interfaces.IReqSuggWordListener";
        static final int TRANSACTION_onReceive = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IReqSuggWordListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IReqSuggWordListener)) {
                return (IReqSuggWordListener) queryLocalInterface;
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
                    onReceive(parcel.readInt(), parcel.createTypedArrayList(AppBaseModel.CREATOR), parcel.createStringArrayList());
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements IReqSuggWordListener {
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

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IReqSuggWordListener
            public void onReceive(int i, List<AppBaseModel> list, List<String> list2) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeTypedList(list);
                    obtain.writeStringList(list2);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
