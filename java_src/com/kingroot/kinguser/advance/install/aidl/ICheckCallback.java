package com.kingroot.kinguser.advance.install.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public interface ICheckCallback extends IInterface {
    void callback(CheckResult checkResult);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ICheckCallback {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.advance.install.aidl.ICheckCallback";
        static final int TRANSACTION_callback = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICheckCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ICheckCallback)) {
                return (ICheckCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            CheckResult checkResult;
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    if (parcel.readInt() != 0) {
                        checkResult = CheckResult.CREATOR.createFromParcel(parcel);
                    } else {
                        checkResult = null;
                    }
                    callback(checkResult);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements ICheckCallback {
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

            @Override // com.kingroot.kinguser.advance.install.aidl.ICheckCallback
            public void callback(CheckResult checkResult) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (checkResult != null) {
                        obtain.writeInt(1);
                        checkResult.writeToParcel(obtain, 0);
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
