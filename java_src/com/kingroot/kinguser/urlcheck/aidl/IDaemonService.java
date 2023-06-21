package com.kingroot.kinguser.urlcheck.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public interface IDaemonService extends IInterface {
    void addRule(UrlCheckRule urlCheckRule);

    void deleteRule(UrlCheckRule urlCheckRule);

    int enable(boolean z, Map map);

    int getProxyServerPort();

    String getSharkGuid();

    boolean isEnable();

    void syncCloudRuleList(List<UrlCheckRule> list);

    void syncUserRuleList(List<UrlCheckRule> list);

    void updateRule(UrlCheckRule urlCheckRule);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IDaemonService {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.urlcheck.aidl.IDaemonService";
        static final int TRANSACTION_addRule = 4;
        static final int TRANSACTION_deleteRule = 5;
        static final int TRANSACTION_enable = 1;
        static final int TRANSACTION_getProxyServerPort = 7;
        static final int TRANSACTION_getSharkGuid = 8;
        static final int TRANSACTION_isEnable = 2;
        static final int TRANSACTION_syncCloudRuleList = 3;
        static final int TRANSACTION_syncUserRuleList = 9;
        static final int TRANSACTION_updateRule = 6;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IDaemonService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
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
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    int enable = enable(parcel.readInt() != 0, parcel.readHashMap(getClass().getClassLoader()));
                    parcel2.writeNoException();
                    parcel2.writeInt(enable);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isEnable = isEnable();
                    parcel2.writeNoException();
                    parcel2.writeInt(isEnable ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    syncCloudRuleList(parcel.createTypedArrayList(UrlCheckRule.CREATOR));
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    addRule(parcel.readInt() != 0 ? UrlCheckRule.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteRule(parcel.readInt() != 0 ? UrlCheckRule.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateRule(parcel.readInt() != 0 ? UrlCheckRule.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int proxyServerPort = getProxyServerPort();
                    parcel2.writeNoException();
                    parcel2.writeInt(proxyServerPort);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    String sharkGuid = getSharkGuid();
                    parcel2.writeNoException();
                    parcel2.writeString(sharkGuid);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    syncUserRuleList(parcel.createTypedArrayList(UrlCheckRule.CREATOR));
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements IDaemonService {
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

            @Override // com.kingroot.kinguser.urlcheck.aidl.IDaemonService
            public int enable(boolean z, Map map) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeMap(map);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.urlcheck.aidl.IDaemonService
            public boolean isEnable() {
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

            @Override // com.kingroot.kinguser.urlcheck.aidl.IDaemonService
            public void syncCloudRuleList(List<UrlCheckRule> list) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeTypedList(list);
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.urlcheck.aidl.IDaemonService
            public void addRule(UrlCheckRule urlCheckRule) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (urlCheckRule != null) {
                        obtain.writeInt(1);
                        urlCheckRule.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.urlcheck.aidl.IDaemonService
            public void deleteRule(UrlCheckRule urlCheckRule) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (urlCheckRule != null) {
                        obtain.writeInt(1);
                        urlCheckRule.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.urlcheck.aidl.IDaemonService
            public void updateRule(UrlCheckRule urlCheckRule) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (urlCheckRule != null) {
                        obtain.writeInt(1);
                        urlCheckRule.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.urlcheck.aidl.IDaemonService
            public int getProxyServerPort() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.urlcheck.aidl.IDaemonService
            public String getSharkGuid() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.urlcheck.aidl.IDaemonService
            public void syncUserRuleList(List<UrlCheckRule> list) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeTypedList(list);
                    this.mRemote.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
