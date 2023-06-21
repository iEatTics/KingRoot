package com.kingroot.kinguser.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.Map;
/* loaded from: classes.dex */
public interface IKingrootAppList extends IInterface {
    public static final int ALLOW_ROOT_LIST = 1;
    public static final int DENY_ROOT_LIST = 0;

    int addItem(String str, int i, String str2, long j);

    int delelteItem(String str);

    Map<String, KingrootAppItem> getAllAppList();

    Map<String, KingrootAppItem> getAllowAppList();

    Map<String, KingrootAppItem> getDenyAppList();

    int modifyItem(String str, int i, String str2, long j);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IKingrootAppList {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.service.IKingrootAppList";
        static final int TRANSACTION_addItem = 1;
        static final int TRANSACTION_delelteItem = 3;
        static final int TRANSACTION_getAllAppList = 4;
        static final int TRANSACTION_getAllowAppList = 5;
        static final int TRANSACTION_getDenyAppList = 6;
        static final int TRANSACTION_modifyItem = 2;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IKingrootAppList asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IKingrootAppList)) {
                return (IKingrootAppList) queryLocalInterface;
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
                    int addItem = addItem(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(addItem);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int modifyItem = modifyItem(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(modifyItem);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int delelteItem = delelteItem(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(delelteItem);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    Map<String, KingrootAppItem> allAppList = getAllAppList();
                    parcel2.writeNoException();
                    parcel2.writeMap(allAppList);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    Map<String, KingrootAppItem> allowAppList = getAllowAppList();
                    parcel2.writeNoException();
                    parcel2.writeMap(allowAppList);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    Map<String, KingrootAppItem> denyAppList = getDenyAppList();
                    parcel2.writeNoException();
                    parcel2.writeMap(denyAppList);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements IKingrootAppList {
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

            @Override // com.kingroot.kinguser.service.IKingrootAppList
            public int addItem(String str, int i, String str2, long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    obtain.writeLong(j);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.service.IKingrootAppList
            public int modifyItem(String str, int i, String str2, long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    obtain.writeLong(j);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.service.IKingrootAppList
            public int delelteItem(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.service.IKingrootAppList
            public Map<String, KingrootAppItem> getAllAppList() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readHashMap(getClass().getClassLoader());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.service.IKingrootAppList
            public Map<String, KingrootAppItem> getAllowAppList() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readHashMap(getClass().getClassLoader());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.service.IKingrootAppList
            public Map<String, KingrootAppItem> getDenyAppList() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readHashMap(getClass().getClassLoader());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
