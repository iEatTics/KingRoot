package com.kingroot.kinguser.deletereport.interfaces;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
@Deprecated
/* loaded from: classes.dex */
public interface IDeleteReportService extends IInterface {
    public static final int HOOK_FUNCTION_BLOCK_OR_DISABLE_PACKAGE = 2;
    public static final int HOOK_FUNCTION_DELETE_PACKAGE = 0;
    public static final int HOOK_FUNCTION_DISABLE_PACKAGE = 1;
    public static final int MAGIC_NUMBER = 20131218;
    @Deprecated
    public static final int TRANSACTION_addProtectedPackage = 5;
    public static final int TRANSACTION_hookFunction = 8;
    @Deprecated
    public static final int TRANSACTION_isProtectedPackage = 7;
    public static final int TRANSACTION_isServiceEnable = 2;
    @Deprecated
    public static final int TRANSACTION_onClientDeleted = 3;
    @Deprecated
    public static final int TRANSACTION_removeProtectedPackage = 6;
    public static final int TRANSACTION_setLogEnable = 4;
    public static final int TRANSACTION_setServiceEnable = 1;
    public static final int TRANSACTION_syncMonitorPackages = 10;
    public static final int TRANSACTION_syncProtectPackages = 9;

    @Deprecated
    boolean addProtectedPackage(String str);

    @Deprecated
    int hookFunction(int i, boolean z);

    @Deprecated
    boolean isProtectedPackage(String str);

    @Deprecated
    boolean isServiceEnable();

    @Deprecated
    void onClientPackageDeleted(int i, int i2, String str);

    @Deprecated
    boolean removeProtectedPackage(String str);

    @Deprecated
    void setLogEnable(boolean z);

    @Deprecated
    void setServiceEnable(boolean z);

    @Deprecated
    boolean syncMonitorPackages(List<String> list);

    @Deprecated
    boolean syncProtectPackages(List<String> list);

    @Deprecated
    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IDeleteReportService {
        private String mInterfaceName;

        public static IDeleteReportService asInterface(IBinder iBinder, String str) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(str);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IDeleteReportService)) {
                return (IDeleteReportService) queryLocalInterface;
            }
            return Proxy.asInterface(iBinder, str);
        }

        public Stub(String str) {
            this.mInterfaceName = str;
            attachInterface(this, this.mInterfaceName);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder, android.os.IBinder
        public String getInterfaceDescriptor() {
            return this.mInterfaceName;
        }

        @Override // android.os.Binder
        protected boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (parcel.readInt() == 20131218) {
                return handleMyTransact(i, parcel, parcel2, i2);
            }
            parcel.setDataPosition(0);
            return super.onTransact(i, parcel, parcel2, i2);
        }

        private boolean handleMyTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            parcel.enforceInterface(this.mInterfaceName);
            switch (i) {
                case 1:
                    setServiceEnable(parcel.readInt() == 1);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel2.writeNoException();
                    parcel2.writeInt(isServiceEnable() ? 1 : 0);
                    return true;
                case 3:
                    onClientPackageDeleted(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    setLogEnable(parcel.readByte() == 1);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel2.writeNoException();
                    parcel2.writeInt(addProtectedPackage(parcel.readString()) ? 1 : 0);
                    return true;
                case 6:
                    parcel2.writeNoException();
                    parcel2.writeInt(removeProtectedPackage(parcel.readString()) ? 1 : 0);
                    return true;
                case 7:
                    parcel2.writeNoException();
                    parcel2.writeInt(isProtectedPackage(parcel.readString()) ? 1 : 0);
                    return true;
                case 8:
                    parcel2.writeNoException();
                    parcel2.writeInt(hookFunction(parcel.readInt(), parcel.readInt() == 1));
                    return true;
                case 9:
                    parcel2.writeNoException();
                    parcel2.writeInt(syncProtectPackages(parcel.createStringArrayList()) ? 1 : 0);
                    return true;
                case 10:
                    parcel2.writeNoException();
                    parcel2.writeInt(syncMonitorPackages(parcel.createStringArrayList()) ? 1 : 0);
                    return true;
                default:
                    return false;
            }
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static class Proxy implements IDeleteReportService {
        private String mInterface;
        private IBinder mRemote;

        public static IDeleteReportService asInterface(IBinder iBinder, String str) {
            if (iBinder != null) {
                try {
                    return new Proxy(iBinder, str);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            return null;
        }

        private Proxy(IBinder iBinder, String str) {
            this.mRemote = iBinder;
            this.mInterface = str;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.mRemote;
        }

        public String getInterfaceDescriptor() {
            return this.mInterface;
        }

        @Override // com.kingroot.kinguser.deletereport.interfaces.IDeleteReportService
        public void setServiceEnable(boolean z) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDeleteReportService.MAGIC_NUMBER);
                obtain.writeInterfaceToken(this.mInterface);
                obtain.writeInt(z ? 1 : 0);
                this.mRemote.transact(1, obtain, obtain2, 1);
                obtain2.readException();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.kingroot.kinguser.deletereport.interfaces.IDeleteReportService
        public boolean isServiceEnable() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDeleteReportService.MAGIC_NUMBER);
                obtain.writeInterfaceToken(this.mInterface);
                this.mRemote.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() == 1;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.kingroot.kinguser.deletereport.interfaces.IDeleteReportService
        public void onClientPackageDeleted(int i, int i2, String str) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDeleteReportService.MAGIC_NUMBER);
                obtain.writeInterfaceToken(this.mInterface);
                obtain.writeInt(i);
                obtain.writeInt(i2);
                obtain.writeString(str);
                this.mRemote.transact(3, obtain, obtain2, 1);
                obtain2.readException();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.kingroot.kinguser.deletereport.interfaces.IDeleteReportService
        public void setLogEnable(boolean z) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDeleteReportService.MAGIC_NUMBER);
                obtain.writeInterfaceToken(this.mInterface);
                obtain.writeByte((byte) (z ? 1 : 0));
                this.mRemote.transact(4, obtain, obtain2, 1);
                obtain2.readException();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.kingroot.kinguser.deletereport.interfaces.IDeleteReportService
        public boolean addProtectedPackage(String str) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDeleteReportService.MAGIC_NUMBER);
                obtain.writeInterfaceToken(this.mInterface);
                obtain.writeString(str);
                this.mRemote.transact(5, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() == 1;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.kingroot.kinguser.deletereport.interfaces.IDeleteReportService
        public boolean removeProtectedPackage(String str) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDeleteReportService.MAGIC_NUMBER);
                obtain.writeInterfaceToken(this.mInterface);
                obtain.writeString(str);
                this.mRemote.transact(6, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() == 1;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.kingroot.kinguser.deletereport.interfaces.IDeleteReportService
        public boolean isProtectedPackage(String str) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDeleteReportService.MAGIC_NUMBER);
                obtain.writeInterfaceToken(this.mInterface);
                obtain.writeString(str);
                this.mRemote.transact(7, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() == 1;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.kingroot.kinguser.deletereport.interfaces.IDeleteReportService
        public int hookFunction(int i, boolean z) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDeleteReportService.MAGIC_NUMBER);
                obtain.writeInterfaceToken(this.mInterface);
                obtain.writeInt(i);
                obtain.writeInt(z ? 1 : 0);
                this.mRemote.transact(8, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.kingroot.kinguser.deletereport.interfaces.IDeleteReportService
        public boolean syncProtectPackages(List<String> list) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDeleteReportService.MAGIC_NUMBER);
                obtain.writeInterfaceToken(this.mInterface);
                obtain.writeStringList(list);
                this.mRemote.transact(9, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() == 1;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.kingroot.kinguser.deletereport.interfaces.IDeleteReportService
        public boolean syncMonitorPackages(List<String> list) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDeleteReportService.MAGIC_NUMBER);
                obtain.writeInterfaceToken(this.mInterface);
                obtain.writeStringList(list);
                this.mRemote.transact(10, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() == 1;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }
}
