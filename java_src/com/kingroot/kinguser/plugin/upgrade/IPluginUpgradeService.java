package com.kingroot.kinguser.plugin.upgrade;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.kinguser.plugin.upgrade.PluginDownloadCallback;
import java.util.List;
/* loaded from: classes.dex */
public interface IPluginUpgradeService extends IInterface {
    void deleteUpgradeInfo(int i);

    PluginUpgradeInfo getUpgradeInfo(int i);

    List<PluginUpgradeInfo> getUpgradeInfoList();

    int processLocalOrderSync(int i);

    void pullPluginOrderAsync(boolean z);

    int pullPluginOrderSync(boolean z);

    void setUpgradeInfoFlag(int i, int i2);

    boolean startDownload(int i, PluginDownloadCallback pluginDownloadCallback);

    void stopDownload(int i);

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IPluginUpgradeService {
        private static final String DESCRIPTOR = "com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService";
        static final int TRANSACTION_deleteUpgradeInfo = 6;
        static final int TRANSACTION_getUpgradeInfo = 1;
        static final int TRANSACTION_getUpgradeInfoList = 9;
        static final int TRANSACTION_processLocalOrderSync = 3;
        static final int TRANSACTION_pullPluginOrderAsync = 2;
        static final int TRANSACTION_pullPluginOrderSync = 4;
        static final int TRANSACTION_setUpgradeInfoFlag = 7;
        static final int TRANSACTION_startDownload = 5;
        static final int TRANSACTION_stopDownload = 8;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPluginUpgradeService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IPluginUpgradeService)) {
                return (IPluginUpgradeService) queryLocalInterface;
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
                    PluginUpgradeInfo upgradeInfo = getUpgradeInfo(parcel.readInt());
                    parcel2.writeNoException();
                    if (upgradeInfo != null) {
                        parcel2.writeInt(1);
                        upgradeInfo.writeToParcel(parcel2, 1);
                        return true;
                    }
                    parcel2.writeInt(0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    pullPluginOrderAsync(parcel.readInt() != 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int processLocalOrderSync = processLocalOrderSync(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(processLocalOrderSync);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int pullPluginOrderSync = pullPluginOrderSync(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(pullPluginOrderSync);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean startDownload = startDownload(parcel.readInt(), PluginDownloadCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(startDownload ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteUpgradeInfo(parcel.readInt());
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    setUpgradeInfoFlag(parcel.readInt(), parcel.readInt());
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopDownload(parcel.readInt());
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<PluginUpgradeInfo> upgradeInfoList = getUpgradeInfoList();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(upgradeInfoList);
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        static class Proxy implements IPluginUpgradeService {
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

            @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
            public PluginUpgradeInfo getUpgradeInfo(int i) {
                PluginUpgradeInfo pluginUpgradeInfo;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        pluginUpgradeInfo = PluginUpgradeInfo.CREATOR.createFromParcel(obtain2);
                    } else {
                        pluginUpgradeInfo = null;
                    }
                    return pluginUpgradeInfo;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
            public void pullPluginOrderAsync(boolean z) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
            public int processLocalOrderSync(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
            public int pullPluginOrderSync(boolean z) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
            public boolean startDownload(int i, PluginDownloadCallback pluginDownloadCallback) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(pluginDownloadCallback != null ? pluginDownloadCallback.asBinder() : null);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
            public void deleteUpgradeInfo(int i) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
            public void setUpgradeInfoFlag(int i, int i2) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
            public void stopDownload(int i) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
            public List<PluginUpgradeInfo> getUpgradeInfoList() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(PluginUpgradeInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
