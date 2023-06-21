package com.kingroot.kinguser.p015ai;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.kinguser.p015ai.IAntiInjectClient;
import java.util.List;
/* renamed from: com.kingroot.kinguser.ai.IAntiInjectDaemonManager */
/* loaded from: classes.dex */
public interface IAntiInjectDaemonManager extends IInterface {
    void addProtectedPackages(List<String> list);

    boolean getSwitcher();

    void registerClient(IAntiInjectClient iAntiInjectClient);

    void removeProtectedPackages(List<String> list);

    void setSwitcher(boolean z, IAntiInjectClient iAntiInjectClient);

    void syncDefaultProtectedPkgNames(List<String> list);

    void syncList(String str, String str2, String str3, String str4);

    /* renamed from: com.kingroot.kinguser.ai.IAntiInjectDaemonManager$Stub */
    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IAntiInjectDaemonManager {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.ai.IAntiInjectDaemonManager";
        static final int TRANSACTION_addProtectedPackages = 3;
        static final int TRANSACTION_getSwitcher = 1;
        static final int TRANSACTION_registerClient = 7;
        static final int TRANSACTION_removeProtectedPackages = 4;
        static final int TRANSACTION_setSwitcher = 2;
        static final int TRANSACTION_syncDefaultProtectedPkgNames = 5;
        static final int TRANSACTION_syncList = 6;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAntiInjectDaemonManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IAntiInjectDaemonManager)) {
                return (IAntiInjectDaemonManager) queryLocalInterface;
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
                    boolean switcher = getSwitcher();
                    parcel2.writeNoException();
                    parcel2.writeInt(switcher ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSwitcher(parcel.readInt() != 0, IAntiInjectClient.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    addProtectedPackages(parcel.createStringArrayList());
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeProtectedPackages(parcel.createStringArrayList());
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    syncDefaultProtectedPkgNames(parcel.createStringArrayList());
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    syncList(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerClient(IAntiInjectClient.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* renamed from: com.kingroot.kinguser.ai.IAntiInjectDaemonManager$Stub$Proxy */
        /* loaded from: classes.dex */
        static class Proxy implements IAntiInjectDaemonManager {
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

            @Override // com.kingroot.kinguser.p015ai.IAntiInjectDaemonManager
            public boolean getSwitcher() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.p015ai.IAntiInjectDaemonManager
            public void setSwitcher(boolean z, IAntiInjectClient iAntiInjectClient) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeStrongBinder(iAntiInjectClient != null ? iAntiInjectClient.asBinder() : null);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.p015ai.IAntiInjectDaemonManager
            public void addProtectedPackages(List<String> list) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStringList(list);
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.p015ai.IAntiInjectDaemonManager
            public void removeProtectedPackages(List<String> list) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStringList(list);
                    this.mRemote.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.p015ai.IAntiInjectDaemonManager
            public void syncDefaultProtectedPkgNames(List<String> list) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStringList(list);
                    this.mRemote.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.p015ai.IAntiInjectDaemonManager
            public void syncList(String str, String str2, String str3, String str4) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    this.mRemote.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.p015ai.IAntiInjectDaemonManager
            public void registerClient(IAntiInjectClient iAntiInjectClient) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iAntiInjectClient != null ? iAntiInjectClient.asBinder() : null);
                    this.mRemote.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
