package com.kingroot.kinguser.p015ai.fore;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.kingroot.kinguser.ai.fore.IAntiInjectSwitcherOpObserver */
/* loaded from: classes.dex */
public interface IAntiInjectSwitcherOpObserver extends IInterface {
    void onSwitcherClosed();

    void onSwitcherOpen(int i);

    /* renamed from: com.kingroot.kinguser.ai.fore.IAntiInjectSwitcherOpObserver$Stub */
    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IAntiInjectSwitcherOpObserver {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.ai.fore.IAntiInjectSwitcherOpObserver";
        static final int TRANSACTION_onSwitcherClosed = 2;
        static final int TRANSACTION_onSwitcherOpen = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAntiInjectSwitcherOpObserver asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IAntiInjectSwitcherOpObserver)) {
                return (IAntiInjectSwitcherOpObserver) queryLocalInterface;
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
                    onSwitcherOpen(parcel.readInt());
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSwitcherClosed();
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* renamed from: com.kingroot.kinguser.ai.fore.IAntiInjectSwitcherOpObserver$Stub$Proxy */
        /* loaded from: classes.dex */
        static class Proxy implements IAntiInjectSwitcherOpObserver {
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

            @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
            public void onSwitcherOpen(int i) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
            public void onSwitcherClosed() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
