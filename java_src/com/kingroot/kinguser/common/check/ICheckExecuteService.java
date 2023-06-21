package com.kingroot.kinguser.common.check;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.kinguser.common.check.ISuCheckListener;
import java.util.List;
/* loaded from: classes.dex */
public interface ICheckExecuteService extends IInterface {
    void checkAsync(boolean z, boolean z2, ISuCheckListener iSuCheckListener);

    boolean checkSync(boolean z, boolean z2, ISuCheckListener iSuCheckListener, List list);

    void delayCheckAgain();

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ICheckExecuteService {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.common.check.ICheckExecuteService";
        static final int TRANSACTION_checkAsync = 1;
        static final int TRANSACTION_checkSync = 3;
        static final int TRANSACTION_delayCheckAgain = 2;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICheckExecuteService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ICheckExecuteService)) {
                return (ICheckExecuteService) queryLocalInterface;
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
                    checkAsync(parcel.readInt() != 0, parcel.readInt() != 0, ISuCheckListener.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    delayCheckAgain();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean checkSync = checkSync(parcel.readInt() != 0, parcel.readInt() != 0, ISuCheckListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readArrayList(getClass().getClassLoader()));
                    parcel2.writeNoException();
                    parcel2.writeInt(checkSync ? 1 : 0);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements ICheckExecuteService {
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

            @Override // com.kingroot.kinguser.common.check.ICheckExecuteService
            public void checkAsync(boolean z, boolean z2, ISuCheckListener iSuCheckListener) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeInt(z2 ? 1 : 0);
                    obtain.writeStrongBinder(iSuCheckListener != null ? iSuCheckListener.asBinder() : null);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.common.check.ICheckExecuteService
            public void delayCheckAgain() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.common.check.ICheckExecuteService
            public boolean checkSync(boolean z, boolean z2, ISuCheckListener iSuCheckListener, List list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeInt(z2 ? 1 : 0);
                    obtain.writeStrongBinder(iSuCheckListener != null ? iSuCheckListener.asBinder() : null);
                    obtain.writeList(list);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
