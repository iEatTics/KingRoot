package com.kingroot.common.framework.task;

import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.common.framework.task.IKTaskMainCallback;
import java.util.List;
/* loaded from: classes.dex */
public interface IKTaskServiceManager extends IInterface {
    int cancelTask(int i, String str, boolean z);

    List<String> getTaskIds(int i);

    Bundle getTaskInfo(int i, String str, Bundle bundle);

    void registerCallback(int i, IKTaskMainCallback iKTaskMainCallback);

    int submitTask(int i, String str, Intent intent, boolean z);

    void unregisterCallback(IKTaskMainCallback iKTaskMainCallback);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IKTaskServiceManager {
        private static final String DESCRIPTOR = "com.kingroot.common.framework.task.IKTaskServiceManager";
        static final int TRANSACTION_cancelTask = 2;
        static final int TRANSACTION_getTaskIds = 3;
        static final int TRANSACTION_getTaskInfo = 4;
        static final int TRANSACTION_registerCallback = 5;
        static final int TRANSACTION_submitTask = 1;
        static final int TRANSACTION_unregisterCallback = 6;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IKTaskServiceManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IKTaskServiceManager)) {
                return (IKTaskServiceManager) queryLocalInterface;
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
                    int submitTask = submitTask(parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(submitTask);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int cancelTask = cancelTask(parcel.readInt(), parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(cancelTask);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> taskIds = getTaskIds(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStringList(taskIds);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    Bundle taskInfo = getTaskInfo(parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (taskInfo != null) {
                        parcel2.writeInt(1);
                        taskInfo.writeToParcel(parcel2, 1);
                        return true;
                    }
                    parcel2.writeInt(0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCallback(parcel.readInt(), IKTaskMainCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCallback(IKTaskMainCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements IKTaskServiceManager {
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

            @Override // com.kingroot.common.framework.task.IKTaskServiceManager
            public int submitTask(int i, String str, Intent intent, boolean z) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.framework.task.IKTaskServiceManager
            public int cancelTask(int i, String str, boolean z) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.framework.task.IKTaskServiceManager
            public List<String> getTaskIds(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createStringArrayList();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.framework.task.IKTaskServiceManager
            public Bundle getTaskInfo(int i, String str, Bundle bundle) {
                Bundle bundle2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(obtain2);
                    } else {
                        bundle2 = null;
                    }
                    return bundle2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.framework.task.IKTaskServiceManager
            public void registerCallback(int i, IKTaskMainCallback iKTaskMainCallback) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(iKTaskMainCallback != null ? iKTaskMainCallback.asBinder() : null);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.framework.task.IKTaskServiceManager
            public void unregisterCallback(IKTaskMainCallback iKTaskMainCallback) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iKTaskMainCallback != null ? iKTaskMainCallback.asBinder() : null);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
