package com.kingroot.common.utils.system.root.handler.qqsecurityservice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class RootServiceStub extends Binder implements IRootService {
    public RootServiceStub() {
        attachInterface(this, IRootService.INTERFACE);
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    public static IRootService asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(IRootService.INTERFACE);
        if (queryLocalInterface != null && (queryLocalInterface instanceof IRootService)) {
            return (IRootService) queryLocalInterface;
        }
        return new RootServiceProxy(iBinder);
    }

    @Override // android.os.Binder
    protected boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                parcel.enforceInterface(IRootService.INTERFACE);
                shareRootRunCmd(parcel.readString());
                parcel2.writeNoException();
                return true;
            default:
                return true;
        }
    }

    @Override // com.kingroot.common.utils.system.root.handler.qqsecurityservice.IRootService
    public boolean checkVersion(int i) {
        return 1 >= i;
    }
}
