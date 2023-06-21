package com.kingroot.kinguser.gamebox.foreground.model;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import java.util.List;
/* loaded from: classes.dex */
public interface IGameFreshListener extends IInterface {
    void onUpdateGameFinish(List<AppBaseModel> list);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IGameFreshListener {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.gamebox.foreground.model.IGameFreshListener";
        static final int TRANSACTION_onUpdateGameFinish = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IGameFreshListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IGameFreshListener)) {
                return (IGameFreshListener) queryLocalInterface;
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
                    onUpdateGameFinish(parcel.createTypedArrayList(AppBaseModel.CREATOR));
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements IGameFreshListener {
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

            @Override // com.kingroot.kinguser.gamebox.foreground.model.IGameFreshListener
            public void onUpdateGameFinish(List<AppBaseModel> list) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeTypedList(list);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
