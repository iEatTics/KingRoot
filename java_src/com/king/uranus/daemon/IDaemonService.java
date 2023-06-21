package com.king.uranus.daemon;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
/* loaded from: classes.dex */
public interface IDaemonService extends IInterface {
    int addDeveloperCrashKeywords(List<String> list);

    int addFrameworkCrashKeywords(List<String> list);

    int close(boolean z);

    IBinder getDaemonService(String str);

    int getModVersion(String str);

    List<RunningAppProcessInfoLite> getRunningAppProcesses();

    int getVersion();

    int initShark(Bundle bundle);

    int loadDexMod(Bundle bundle);

    int queryProcessCrashType(String str);

    void reportCatchedCrash(String str, String str2);

    void reportJavaCrash(String str, String str2);

    void reportKingCommonString(int i, List<String> list, int i2);

    void reportNativeCrash(String str, String str2);

    List<CmdResult> runCommands(List<String> list);

    int setCrashReportStrategy(Bundle bundle);

    int setDropboxMonitorStrategy(String str);

    int setSpecialProcessCrashStrategy(String str, long j);

    int setSpecialStatisticStrategy(String str, int i);

    int setStatisticReportStrategy(Bundle bundle);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IDaemonService {
        public abstract boolean isCallerLegal();

        public Stub() {
            attachInterface(this, "com.king.uranus.daemon.IDaemonService");
        }

        public static IDaemonService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.king.uranus.daemon.IDaemonService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IDaemonService)) {
                return (IDaemonService) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1598968902 || i == 5 || isCallerLegal()) {
                switch (i) {
                    case 1:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        int statisticReportStrategy = setStatisticReportStrategy(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        parcel2.writeInt(statisticReportStrategy);
                        return true;
                    case 2:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        int loadDexMod = loadDexMod(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        parcel2.writeInt(loadDexMod);
                        return true;
                    case 3:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        int version = getVersion();
                        parcel2.writeNoException();
                        parcel2.writeInt(version);
                        return true;
                    case 4:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        int modVersion = getModVersion(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(modVersion);
                        return true;
                    case 5:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        reportKingCommonString(parcel.readInt(), parcel.createStringArrayList(), parcel.readInt());
                        return true;
                    case 6:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        reportNativeCrash(parcel.readString(), parcel.readString());
                        return true;
                    case 7:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        reportJavaCrash(parcel.readString(), parcel.readString());
                        return true;
                    case 8:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        int crashReportStrategy = setCrashReportStrategy(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        parcel2.writeInt(crashReportStrategy);
                        return true;
                    case 9:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        int addFrameworkCrashKeywords = addFrameworkCrashKeywords(parcel.createStringArrayList());
                        parcel2.writeNoException();
                        parcel2.writeInt(addFrameworkCrashKeywords);
                        return true;
                    case 10:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        int addDeveloperCrashKeywords = addDeveloperCrashKeywords(parcel.createStringArrayList());
                        parcel2.writeNoException();
                        parcel2.writeInt(addDeveloperCrashKeywords);
                        return true;
                    case 11:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        int queryProcessCrashType = queryProcessCrashType(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(queryProcessCrashType);
                        return true;
                    case 12:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        int specialProcessCrashStrategy = setSpecialProcessCrashStrategy(parcel.readString(), parcel.readLong());
                        parcel2.writeNoException();
                        parcel2.writeInt(specialProcessCrashStrategy);
                        return true;
                    case 13:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        int specialStatisticStrategy = setSpecialStatisticStrategy(parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(specialStatisticStrategy);
                        return true;
                    case 14:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        List<RunningAppProcessInfoLite> runningAppProcesses = getRunningAppProcesses();
                        parcel2.writeNoException();
                        parcel2.writeTypedList(runningAppProcesses);
                        return true;
                    case 15:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        int dropboxMonitorStrategy = setDropboxMonitorStrategy(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(dropboxMonitorStrategy);
                        return true;
                    case 16:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        reportCatchedCrash(parcel.readString(), parcel.readString());
                        return true;
                    case 17:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        IBinder daemonService = getDaemonService(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeStrongBinder(daemonService);
                        return true;
                    case 18:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        int close = close(parcel.readInt() != 0);
                        parcel2.writeNoException();
                        parcel2.writeInt(close);
                        return true;
                    case 19:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        int initShark = initShark(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        parcel2.writeInt(initShark);
                        return true;
                    case 20:
                        parcel.enforceInterface("com.king.uranus.daemon.IDaemonService");
                        List<CmdResult> runCommands = runCommands(parcel.createStringArrayList());
                        parcel2.writeNoException();
                        parcel2.writeTypedList(runCommands);
                        return true;
                    case 1598968902:
                        parcel2.writeString("com.king.uranus.daemon.IDaemonService");
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
            return true;
        }

        /* loaded from: classes.dex */
        static class Proxy implements IDaemonService {

            /* renamed from: eE */
            private IBinder f285eE;

            Proxy(IBinder iBinder) {
                this.f285eE = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f285eE;
            }

            public String getInterfaceDescriptor() {
                return "com.king.uranus.daemon.IDaemonService";
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public int setStatisticReportStrategy(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f285eE.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public int loadDexMod(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f285eE.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public int getVersion() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    this.f285eE.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public int getModVersion(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    obtain.writeString(str);
                    this.f285eE.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public void reportKingCommonString(int i, List<String> list, int i2) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    obtain.writeInt(i);
                    obtain.writeStringList(list);
                    obtain.writeInt(i2);
                    this.f285eE.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public void reportNativeCrash(String str, String str2) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f285eE.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public void reportJavaCrash(String str, String str2) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f285eE.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public int setCrashReportStrategy(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f285eE.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public int addFrameworkCrashKeywords(List<String> list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    obtain.writeStringList(list);
                    this.f285eE.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public int addDeveloperCrashKeywords(List<String> list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    obtain.writeStringList(list);
                    this.f285eE.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public int queryProcessCrashType(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    obtain.writeString(str);
                    this.f285eE.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public int setSpecialProcessCrashStrategy(String str, long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    this.f285eE.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public int setSpecialStatisticStrategy(String str, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.f285eE.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public List<RunningAppProcessInfoLite> getRunningAppProcesses() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    this.f285eE.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(RunningAppProcessInfoLite.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public int setDropboxMonitorStrategy(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    obtain.writeString(str);
                    this.f285eE.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public void reportCatchedCrash(String str, String str2) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f285eE.transact(16, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public IBinder getDaemonService(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    obtain.writeString(str);
                    this.f285eE.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readStrongBinder();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public int close(boolean z) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    obtain.writeInt(z ? 1 : 0);
                    this.f285eE.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public int initShark(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f285eE.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.king.uranus.daemon.IDaemonService
            public List<CmdResult> runCommands(List<String> list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.king.uranus.daemon.IDaemonService");
                    obtain.writeStringList(list);
                    this.f285eE.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(CmdResult.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
