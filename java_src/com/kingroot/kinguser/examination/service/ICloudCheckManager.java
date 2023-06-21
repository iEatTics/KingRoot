package com.kingroot.kinguser.examination.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.kinguser.examination.service.ICloudCheckCallback;
import java.util.List;
/* loaded from: classes.dex */
public interface ICloudCheckManager extends IInterface {
    void cloudCheckAll(ICloudCheckCallback iCloudCheckCallback);

    void cloudCheckApks(String str, ICloudCheckCallback iCloudCheckCallback);

    void cloudCheckApps(List<String> list, ICloudCheckCallback iCloudCheckCallback);

    void downloadWeSecure();

    List<String> getAllRiskApps();

    List<CloudCheckLiteInfo> getAllRiskAppsLiteInfo();

    List<String> getAllUnknownApps();

    List<String> getCloudCheckFailedAppsCache();

    int getRiskType(String str);

    List<String> getUndeniedRiskApps();

    List<String> getUntreatedRiskApps();

    void gotoWeSecureVirusScan();

    boolean isWeSecureInstalled();

    void markDeniedRiskApps(List<String> list);

    void markTreatedRiskApps(List<String> list);

    void registerCallback(String str, ICloudCheckCallback iCloudCheckCallback);

    void removeAppInfos(List<String> list);

    void unregisterCallback(String str);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ICloudCheckManager {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.examination.service.ICloudCheckManager";
        static final int TRANSACTION_cloudCheckAll = 2;
        static final int TRANSACTION_cloudCheckApks = 3;
        static final int TRANSACTION_cloudCheckApps = 1;
        static final int TRANSACTION_downloadWeSecure = 10;
        static final int TRANSACTION_getAllRiskApps = 13;
        static final int TRANSACTION_getAllRiskAppsLiteInfo = 18;
        static final int TRANSACTION_getAllUnknownApps = 17;
        static final int TRANSACTION_getCloudCheckFailedAppsCache = 16;
        static final int TRANSACTION_getRiskType = 12;
        static final int TRANSACTION_getUndeniedRiskApps = 8;
        static final int TRANSACTION_getUntreatedRiskApps = 6;
        static final int TRANSACTION_gotoWeSecureVirusScan = 15;
        static final int TRANSACTION_isWeSecureInstalled = 14;
        static final int TRANSACTION_markDeniedRiskApps = 9;
        static final int TRANSACTION_markTreatedRiskApps = 7;
        static final int TRANSACTION_registerCallback = 4;
        static final int TRANSACTION_removeAppInfos = 11;
        static final int TRANSACTION_unregisterCallback = 5;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICloudCheckManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ICloudCheckManager)) {
                return (ICloudCheckManager) queryLocalInterface;
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
                    cloudCheckApps(parcel.createStringArrayList(), ICloudCheckCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    cloudCheckAll(ICloudCheckCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    cloudCheckApks(parcel.readString(), ICloudCheckCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCallback(parcel.readString(), ICloudCheckCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCallback(parcel.readString());
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> untreatedRiskApps = getUntreatedRiskApps();
                    parcel2.writeNoException();
                    parcel2.writeStringList(untreatedRiskApps);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    markTreatedRiskApps(parcel.createStringArrayList());
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> undeniedRiskApps = getUndeniedRiskApps();
                    parcel2.writeNoException();
                    parcel2.writeStringList(undeniedRiskApps);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    markDeniedRiskApps(parcel.createStringArrayList());
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    downloadWeSecure();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeAppInfos(parcel.createStringArrayList());
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    int riskType = getRiskType(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(riskType);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> allRiskApps = getAllRiskApps();
                    parcel2.writeNoException();
                    parcel2.writeStringList(allRiskApps);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isWeSecureInstalled = isWeSecureInstalled();
                    parcel2.writeNoException();
                    parcel2.writeInt(isWeSecureInstalled ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    gotoWeSecureVirusScan();
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> cloudCheckFailedAppsCache = getCloudCheckFailedAppsCache();
                    parcel2.writeNoException();
                    parcel2.writeStringList(cloudCheckFailedAppsCache);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> allUnknownApps = getAllUnknownApps();
                    parcel2.writeNoException();
                    parcel2.writeStringList(allUnknownApps);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<CloudCheckLiteInfo> allRiskAppsLiteInfo = getAllRiskAppsLiteInfo();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(allRiskAppsLiteInfo);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements ICloudCheckManager {
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

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public void cloudCheckApps(List<String> list, ICloudCheckCallback iCloudCheckCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStringList(list);
                    obtain.writeStrongBinder(iCloudCheckCallback != null ? iCloudCheckCallback.asBinder() : null);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public void cloudCheckAll(ICloudCheckCallback iCloudCheckCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iCloudCheckCallback != null ? iCloudCheckCallback.asBinder() : null);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public void cloudCheckApks(String str, ICloudCheckCallback iCloudCheckCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iCloudCheckCallback != null ? iCloudCheckCallback.asBinder() : null);
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public void registerCallback(String str, ICloudCheckCallback iCloudCheckCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iCloudCheckCallback != null ? iCloudCheckCallback.asBinder() : null);
                    this.mRemote.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public void unregisterCallback(String str) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public List<String> getUntreatedRiskApps() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createStringArrayList();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public void markTreatedRiskApps(List<String> list) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStringList(list);
                    this.mRemote.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public List<String> getUndeniedRiskApps() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createStringArrayList();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public void markDeniedRiskApps(List<String> list) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStringList(list);
                    this.mRemote.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public void downloadWeSecure() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public void removeAppInfos(List<String> list) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStringList(list);
                    this.mRemote.transact(11, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public int getRiskType(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public List<String> getAllRiskApps() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createStringArrayList();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public boolean isWeSecureInstalled() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public void gotoWeSecureVirusScan() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public List<String> getCloudCheckFailedAppsCache() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createStringArrayList();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public List<String> getAllUnknownApps() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createStringArrayList();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
            public List<CloudCheckLiteInfo> getAllRiskAppsLiteInfo() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(CloudCheckLiteInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
