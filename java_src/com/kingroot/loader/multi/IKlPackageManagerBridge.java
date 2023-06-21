package com.kingroot.loader.multi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.kingroot.loader.multi.IKlPostRestartUpdateObserverBridge;
import com.kingroot.loader.sdk.KlInfo;
import com.kingroot.loader.sdk.KlPackage;
import java.util.List;
/* loaded from: classes.dex */
public interface IKlPackageManagerBridge extends IInterface {
    List<KlInfo> getInstalledKlInfos();

    KlPackage getInstalledKlPackage(int i);

    int installPlugin(String str);

    int installPluginEx(String str, KlInfo klInfo, boolean z);

    void markPluginRunning(int i, int i2);

    void postRestartUpdate(String str, IKlPostRestartUpdateObserverBridge iKlPostRestartUpdateObserverBridge);

    boolean setEnabledSetting(int i, boolean z);

    void uninstallPlugin(int i);

    /* renamed from: com.kingroot.loader.multi.IKlPackageManagerBridge$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC3995a extends Binder implements IKlPackageManagerBridge {
        public AbstractBinderC3995a() {
            attachInterface(this, "com.kingroot.loader.multi.IKlPackageManagerBridge");
        }

        /* renamed from: a */
        public static IKlPackageManagerBridge m1218a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.kingroot.loader.multi.IKlPackageManagerBridge");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IKlPackageManagerBridge)) {
                return (IKlPackageManagerBridge) queryLocalInterface;
            }
            return new C3996a(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            KlInfo klInfo;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.kingroot.loader.multi.IKlPackageManagerBridge");
                    markPluginRunning(parcel.readInt(), parcel.readInt());
                    return true;
                case 2:
                    parcel.enforceInterface("com.kingroot.loader.multi.IKlPackageManagerBridge");
                    KlPackage installedKlPackage = getInstalledKlPackage(parcel.readInt());
                    parcel2.writeNoException();
                    if (installedKlPackage != null) {
                        parcel2.writeInt(1);
                        installedKlPackage.writeToParcel(parcel2, 1);
                        return true;
                    }
                    parcel2.writeInt(0);
                    return true;
                case 3:
                    parcel.enforceInterface("com.kingroot.loader.multi.IKlPackageManagerBridge");
                    List<KlInfo> installedKlInfos = getInstalledKlInfos();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(installedKlInfos);
                    return true;
                case 4:
                    parcel.enforceInterface("com.kingroot.loader.multi.IKlPackageManagerBridge");
                    uninstallPlugin(parcel.readInt());
                    return true;
                case 5:
                    parcel.enforceInterface("com.kingroot.loader.multi.IKlPackageManagerBridge");
                    int installPlugin = installPlugin(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(installPlugin);
                    return true;
                case 6:
                    parcel.enforceInterface("com.kingroot.loader.multi.IKlPackageManagerBridge");
                    String readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        klInfo = KlInfo.CREATOR.createFromParcel(parcel);
                    } else {
                        klInfo = null;
                    }
                    int installPluginEx = installPluginEx(readString, klInfo, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(installPluginEx);
                    return true;
                case 7:
                    parcel.enforceInterface("com.kingroot.loader.multi.IKlPackageManagerBridge");
                    boolean enabledSetting = setEnabledSetting(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(enabledSetting ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface("com.kingroot.loader.multi.IKlPackageManagerBridge");
                    postRestartUpdate(parcel.readString(), IKlPostRestartUpdateObserverBridge.AbstractBinderC3997a.m1217a(parcel.readStrongBinder()));
                    return true;
                case 1598968902:
                    parcel2.writeString("com.kingroot.loader.multi.IKlPackageManagerBridge");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* renamed from: com.kingroot.loader.multi.IKlPackageManagerBridge$a$a */
        /* loaded from: classes.dex */
        static class C3996a implements IKlPackageManagerBridge {

            /* renamed from: a */
            private IBinder f4121a;

            C3996a(IBinder iBinder) {
                this.f4121a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4121a;
            }

            @Override // com.kingroot.loader.multi.IKlPackageManagerBridge
            public void markPluginRunning(int i, int i2) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.kingroot.loader.multi.IKlPackageManagerBridge");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.f4121a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.loader.multi.IKlPackageManagerBridge
            public KlPackage getInstalledKlPackage(int i) {
                KlPackage klPackage;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.kingroot.loader.multi.IKlPackageManagerBridge");
                    obtain.writeInt(i);
                    this.f4121a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        klPackage = KlPackage.CREATOR.createFromParcel(obtain2);
                    } else {
                        klPackage = null;
                    }
                    return klPackage;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.loader.multi.IKlPackageManagerBridge
            public List<KlInfo> getInstalledKlInfos() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.kingroot.loader.multi.IKlPackageManagerBridge");
                    this.f4121a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(KlInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.loader.multi.IKlPackageManagerBridge
            public void uninstallPlugin(int i) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.kingroot.loader.multi.IKlPackageManagerBridge");
                    obtain.writeInt(i);
                    this.f4121a.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.loader.multi.IKlPackageManagerBridge
            public int installPlugin(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.kingroot.loader.multi.IKlPackageManagerBridge");
                    obtain.writeString(str);
                    this.f4121a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.loader.multi.IKlPackageManagerBridge
            public int installPluginEx(String str, KlInfo klInfo, boolean z) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.kingroot.loader.multi.IKlPackageManagerBridge");
                    obtain.writeString(str);
                    if (klInfo != null) {
                        obtain.writeInt(1);
                        klInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(z ? 1 : 0);
                    this.f4121a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.loader.multi.IKlPackageManagerBridge
            public boolean setEnabledSetting(int i, boolean z) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.kingroot.loader.multi.IKlPackageManagerBridge");
                    obtain.writeInt(i);
                    obtain.writeInt(z ? 1 : 0);
                    this.f4121a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.kingroot.loader.multi.IKlPackageManagerBridge
            public void postRestartUpdate(String str, IKlPostRestartUpdateObserverBridge iKlPostRestartUpdateObserverBridge) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.kingroot.loader.multi.IKlPackageManagerBridge");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iKlPostRestartUpdateObserverBridge != null ? iKlPostRestartUpdateObserverBridge.asBinder() : null);
                    this.f4121a.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
