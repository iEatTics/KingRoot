package com.kingroot.kingmaster.network.updata;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public interface ICheckIPCListener extends IInterface {
    void onCheckEvent(int i);

    void onCheckFinished(CheckResult checkResult);

    void onCheckStarted();

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ICheckIPCListener {
        private static final String DESCRIPTOR = "com.kingroot.kingmaster.network.updata.ICheckIPCListener";
        static final int TRANSACTION_onCheckEvent = 2;
        static final int TRANSACTION_onCheckFinished = 3;
        static final int TRANSACTION_onCheckStarted = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICheckIPCListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ICheckIPCListener)) {
                return (ICheckIPCListener) queryLocalInterface;
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
                    onCheckStarted();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onCheckEvent(parcel.readInt());
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    if (parcel.readInt() != 0) {
                        checkResult = CheckResult.CREATOR.createFromParcel(parcel);
                    } else {
                        checkResult = null;
                    }
                    onCheckFinished(checkResult);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements ICheckIPCListener {
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

            @Override // com.kingroot.kingmaster.network.updata.ICheckIPCListener
            public void onCheckStarted() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kingmaster.network.updata.ICheckIPCListener
            public void onCheckEvent(int i) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kingmaster.network.updata.ICheckIPCListener
            public void onCheckFinished(CheckResult checkResult) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (checkResult != null) {
                        obtain.writeInt(1);
                        checkResult.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
