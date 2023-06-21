package com.kingroot.common.utils.system.root.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.common.utils.system.VTCommand;
import com.kingroot.common.utils.system.root.service.IKRootCallBack;
import java.util.List;
/* loaded from: classes.dex */
public interface IKRootService extends IInterface {
    void closeShell();

    boolean isRootPermition(boolean z);

    boolean isRootPermitionInBackupSu();

    void registerCallBack(IKRootCallBack iKRootCallBack);

    void registerRootHolder(String str);

    VTCmdResult runRootCommand(String str, String str2, boolean z);

    VTCmdResult runRootCommandCustomTimeLimited(String str, String str2, long j);

    List<VTCmdResult> runRootCommands(List<String> list);

    List<VTCmdResult> runRootCommandsTimeOut(List<String> list, boolean z);

    List<VTCmdResult> runRootVTCommands(List<VTCommand> list);

    void unregisterCallBack(IKRootCallBack iKRootCallBack);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IKRootService {
        private static final String DESCRIPTOR = "com.kingroot.common.utils.system.root.service.IKRootService";
        static final int TRANSACTION_closeShell = 4;
        static final int TRANSACTION_isRootPermition = 5;
        static final int TRANSACTION_isRootPermitionInBackupSu = 6;
        static final int TRANSACTION_registerCallBack = 2;
        static final int TRANSACTION_registerRootHolder = 1;
        static final int TRANSACTION_runRootCommand = 7;
        static final int TRANSACTION_runRootCommandCustomTimeLimited = 8;
        static final int TRANSACTION_runRootCommands = 9;
        static final int TRANSACTION_runRootCommandsTimeOut = 11;
        static final int TRANSACTION_runRootVTCommands = 10;
        static final int TRANSACTION_unregisterCallBack = 3;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IKRootService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IKRootService)) {
                return (IKRootService) queryLocalInterface;
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
                    registerRootHolder(parcel.readString());
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCallBack(IKRootCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCallBack(IKRootCallBack.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    closeShell();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isRootPermition = isRootPermition(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(isRootPermition ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isRootPermitionInBackupSu = isRootPermitionInBackupSu();
                    parcel2.writeNoException();
                    parcel2.writeInt(isRootPermitionInBackupSu ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    VTCmdResult runRootCommand = runRootCommand(parcel.readString(), parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    if (runRootCommand != null) {
                        parcel2.writeInt(1);
                        runRootCommand.writeToParcel(parcel2, 1);
                        return true;
                    }
                    parcel2.writeInt(0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    VTCmdResult runRootCommandCustomTimeLimited = runRootCommandCustomTimeLimited(parcel.readString(), parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    if (runRootCommandCustomTimeLimited != null) {
                        parcel2.writeInt(1);
                        runRootCommandCustomTimeLimited.writeToParcel(parcel2, 1);
                        return true;
                    }
                    parcel2.writeInt(0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<VTCmdResult> runRootCommands = runRootCommands(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(runRootCommands);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<VTCmdResult> runRootVTCommands = runRootVTCommands(parcel.createTypedArrayList(VTCommand.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeTypedList(runRootVTCommands);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<VTCmdResult> runRootCommandsTimeOut = runRootCommandsTimeOut(parcel.createStringArrayList(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeTypedList(runRootCommandsTimeOut);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements IKRootService {
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

            @Override // com.kingroot.common.utils.system.root.service.IKRootService
            public void registerRootHolder(String str) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.utils.system.root.service.IKRootService
            public void registerCallBack(IKRootCallBack iKRootCallBack) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iKRootCallBack != null ? iKRootCallBack.asBinder() : null);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.utils.system.root.service.IKRootService
            public void unregisterCallBack(IKRootCallBack iKRootCallBack) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iKRootCallBack != null ? iKRootCallBack.asBinder() : null);
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.utils.system.root.service.IKRootService
            public void closeShell() {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.utils.system.root.service.IKRootService
            public boolean isRootPermition(boolean z) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.utils.system.root.service.IKRootService
            public boolean isRootPermitionInBackupSu() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.utils.system.root.service.IKRootService
            public VTCmdResult runRootCommand(String str, String str2, boolean z) {
                VTCmdResult vTCmdResult;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        vTCmdResult = VTCmdResult.CREATOR.createFromParcel(obtain2);
                    } else {
                        vTCmdResult = null;
                    }
                    return vTCmdResult;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.utils.system.root.service.IKRootService
            public VTCmdResult runRootCommandCustomTimeLimited(String str, String str2, long j) {
                VTCmdResult vTCmdResult;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeLong(j);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        vTCmdResult = VTCmdResult.CREATOR.createFromParcel(obtain2);
                    } else {
                        vTCmdResult = null;
                    }
                    return vTCmdResult;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.utils.system.root.service.IKRootService
            public List<VTCmdResult> runRootCommands(List<String> list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStringList(list);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(VTCmdResult.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.utils.system.root.service.IKRootService
            public List<VTCmdResult> runRootVTCommands(List<VTCommand> list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeTypedList(list);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(VTCmdResult.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.common.utils.system.root.service.IKRootService
            public List<VTCmdResult> runRootCommandsTimeOut(List<String> list, boolean z) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStringList(list);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(VTCmdResult.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
