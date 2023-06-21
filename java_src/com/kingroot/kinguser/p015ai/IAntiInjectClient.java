package com.kingroot.kinguser.p015ai;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.kingroot.kinguser.ai.IAntiInjectClient */
/* loaded from: classes.dex */
public interface IAntiInjectClient extends IInterface {
    void addLog(String str);

    void setHookStatus(String str);

    /* renamed from: com.kingroot.kinguser.ai.IAntiInjectClient$Stub */
    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IAntiInjectClient {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.ai.IAntiInjectClient";
        static final int TRANSACTION_addLog = 1;
        static final int TRANSACTION_setHookStatus = 2;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAntiInjectClient asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IAntiInjectClient)) {
                return (IAntiInjectClient) queryLocalInterface;
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
                    addLog(parcel.readString());
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    setHookStatus(parcel.readString());
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* renamed from: com.kingroot.kinguser.ai.IAntiInjectClient$Stub$Proxy */
        /* loaded from: classes.dex */
        static class Proxy implements IAntiInjectClient {
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

            @Override // com.kingroot.kinguser.p015ai.IAntiInjectClient
            public void addLog(String str) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.p015ai.IAntiInjectClient
            public void setHookStatus(String str) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
