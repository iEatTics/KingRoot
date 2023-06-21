package com.kingroot.kinguser.root.log;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.kinguser.model.RootMgrLogInfo;
import com.kingroot.kinguser.root.log.ILogsChangeListener;
import java.util.List;
/* loaded from: classes.dex */
public interface IRootMgrLogEngine extends IInterface {
    void addLog(RootMgrLogInfo rootMgrLogInfo);

    void addLogsChangeListener(ILogsChangeListener iLogsChangeListener);

    int clearAllLogs();

    void clearTimeOutLogs();

    List<RootMgrLogInfo> getLogs();

    List<String> getTodayRequestAllowAppList();

    int getTodayRequestAppCount();

    boolean hasExistLogs();

    void removeLogsChangeListener(ILogsChangeListener iLogsChangeListener);

    void setLogAble(boolean z);

    void setLogLimit(int i);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IRootMgrLogEngine {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.root.log.IRootMgrLogEngine";
        static final int TRANSACTION_addLog = 2;
        static final int TRANSACTION_addLogsChangeListener = 7;
        static final int TRANSACTION_clearAllLogs = 4;
        static final int TRANSACTION_clearTimeOutLogs = 3;
        static final int TRANSACTION_getLogs = 1;
        static final int TRANSACTION_getTodayRequestAllowAppList = 10;
        static final int TRANSACTION_getTodayRequestAppCount = 9;
        static final int TRANSACTION_hasExistLogs = 11;
        static final int TRANSACTION_removeLogsChangeListener = 8;
        static final int TRANSACTION_setLogAble = 6;
        static final int TRANSACTION_setLogLimit = 5;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IRootMgrLogEngine asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IRootMgrLogEngine)) {
                return (IRootMgrLogEngine) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            RootMgrLogInfo rootMgrLogInfo;
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<RootMgrLogInfo> logs = getLogs();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(logs);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    if (parcel.readInt() != 0) {
                        rootMgrLogInfo = RootMgrLogInfo.CREATOR.createFromParcel(parcel);
                    } else {
                        rootMgrLogInfo = null;
                    }
                    addLog(rootMgrLogInfo);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearTimeOutLogs();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int clearAllLogs = clearAllLogs();
                    parcel2.writeNoException();
                    parcel2.writeInt(clearAllLogs);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    setLogLimit(parcel.readInt());
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    setLogAble(parcel.readInt() != 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    addLogsChangeListener(ILogsChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeLogsChangeListener(ILogsChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int todayRequestAppCount = getTodayRequestAppCount();
                    parcel2.writeNoException();
                    parcel2.writeInt(todayRequestAppCount);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> todayRequestAllowAppList = getTodayRequestAllowAppList();
                    parcel2.writeNoException();
                    parcel2.writeStringList(todayRequestAllowAppList);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean hasExistLogs = hasExistLogs();
                    parcel2.writeNoException();
                    parcel2.writeInt(hasExistLogs ? 1 : 0);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements IRootMgrLogEngine {
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

            @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
            public List<RootMgrLogInfo> getLogs() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(RootMgrLogInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
            public void addLog(RootMgrLogInfo rootMgrLogInfo) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (rootMgrLogInfo != null) {
                        obtain.writeInt(1);
                        rootMgrLogInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
            public void clearTimeOutLogs() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
            public int clearAllLogs() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
            public void setLogLimit(int i) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
            public void setLogAble(boolean z) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
            public void addLogsChangeListener(ILogsChangeListener iLogsChangeListener) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iLogsChangeListener != null ? iLogsChangeListener.asBinder() : null);
                    this.mRemote.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
            public void removeLogsChangeListener(ILogsChangeListener iLogsChangeListener) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iLogsChangeListener != null ? iLogsChangeListener.asBinder() : null);
                    this.mRemote.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
            public int getTodayRequestAppCount() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
            public List<String> getTodayRequestAllowAppList() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createStringArrayList();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
            public boolean hasExistLogs() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, obtain, obtain2, 0);
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
