package com.kingroot.kinguser.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public interface IKCommonManagerInterface extends IInterface {
    int getAntiInjectState();

    int openAntiInjectFunction();

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IKCommonManagerInterface {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.service.IKCommonManagerInterface";
        static final int TRANSACTION_getAntiInjectState = 1;
        static final int TRANSACTION_openAntiInjectFunction = 2;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IKCommonManagerInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IKCommonManagerInterface)) {
                return (IKCommonManagerInterface) queryLocalInterface;
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
                    int antiInjectState = getAntiInjectState();
                    parcel2.writeNoException();
                    parcel2.writeInt(antiInjectState);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int openAntiInjectFunction = openAntiInjectFunction();
                    parcel2.writeNoException();
                    parcel2.writeInt(openAntiInjectFunction);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements IKCommonManagerInterface {
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

            @Override // com.kingroot.kinguser.service.IKCommonManagerInterface
            public int getAntiInjectState() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.service.IKCommonManagerInterface
            public int openAntiInjectFunction() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
