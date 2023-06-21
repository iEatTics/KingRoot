package com.kingroot.kinguser.p015ai.fore;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.kinguser.p015ai.AntiInjectLogModel;
import com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver;
import com.kingroot.kinguser.util.protect.RebootStat;
import java.util.List;
/* renamed from: com.kingroot.kinguser.ai.fore.IAntiInjectClientManager */
/* loaded from: classes.dex */
public interface IAntiInjectClientManager extends IInterface {
    void addProtectedPackages(List<String> list);

    List<AntiInjectLogModel> getAllLogs();

    RebootStat getRebootStat();

    boolean getSwitcher();

    void notifyManuallyReboot();

    void registerClient();

    void removeProtectedPackages(List<String> list);

    void setSwitcher(boolean z, IAntiInjectSwitcherOpObserver iAntiInjectSwitcherOpObserver);

    void setSwitcherTest(boolean z, IAntiInjectSwitcherOpObserver iAntiInjectSwitcherOpObserver, int i);

    void syncListWithDaemon();

    /* renamed from: com.kingroot.kinguser.ai.fore.IAntiInjectClientManager$Stub */
    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IAntiInjectClientManager {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.ai.fore.IAntiInjectClientManager";
        static final int TRANSACTION_addProtectedPackages = 3;
        static final int TRANSACTION_getAllLogs = 5;
        static final int TRANSACTION_getRebootStat = 6;
        static final int TRANSACTION_getSwitcher = 2;
        static final int TRANSACTION_notifyManuallyReboot = 10;
        static final int TRANSACTION_registerClient = 7;
        static final int TRANSACTION_removeProtectedPackages = 4;
        static final int TRANSACTION_setSwitcher = 1;
        static final int TRANSACTION_setSwitcherTest = 8;
        static final int TRANSACTION_syncListWithDaemon = 9;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAntiInjectClientManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IAntiInjectClientManager)) {
                return (IAntiInjectClientManager) queryLocalInterface;
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
                    setSwitcher(parcel.readInt() != 0, IAntiInjectSwitcherOpObserver.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean switcher = getSwitcher();
                    parcel2.writeNoException();
                    parcel2.writeInt(switcher ? 1 : 0);
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
                    List<AntiInjectLogModel> allLogs = getAllLogs();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(allLogs);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    RebootStat rebootStat = getRebootStat();
                    parcel2.writeNoException();
                    if (rebootStat != null) {
                        parcel2.writeInt(1);
                        rebootStat.writeToParcel(parcel2, 1);
                        return true;
                    }
                    parcel2.writeInt(0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerClient();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSwitcherTest(parcel.readInt() != 0, IAntiInjectSwitcherOpObserver.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    syncListWithDaemon();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyManuallyReboot();
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* renamed from: com.kingroot.kinguser.ai.fore.IAntiInjectClientManager$Stub$Proxy */
        /* loaded from: classes.dex */
        static class Proxy implements IAntiInjectClientManager {
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

            @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
            public void setSwitcher(boolean z, IAntiInjectSwitcherOpObserver iAntiInjectSwitcherOpObserver) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeStrongBinder(iAntiInjectSwitcherOpObserver != null ? iAntiInjectSwitcherOpObserver.asBinder() : null);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
            public boolean getSwitcher() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
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

            @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
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

            @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
            public List<AntiInjectLogModel> getAllLogs() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(AntiInjectLogModel.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
            public RebootStat getRebootStat() {
                RebootStat rebootStat;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        rebootStat = RebootStat.CREATOR.createFromParcel(obtain2);
                    } else {
                        rebootStat = null;
                    }
                    return rebootStat;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
            public void registerClient() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
            public void setSwitcherTest(boolean z, IAntiInjectSwitcherOpObserver iAntiInjectSwitcherOpObserver, int i) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeStrongBinder(iAntiInjectSwitcherOpObserver != null ? iAntiInjectSwitcherOpObserver.asBinder() : null);
                    obtain.writeInt(i);
                    this.mRemote.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
            public void syncListWithDaemon() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager
            public void notifyManuallyReboot() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
