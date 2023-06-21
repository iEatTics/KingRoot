package com.kingroot.common.utils.system.root.handler.qqsecurityservice;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class RootServiceProxy implements IRootService {
    private IBinder mRemote;

    public RootServiceProxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.mRemote;
    }

    @Override // com.kingroot.common.utils.system.root.handler.qqsecurityservice.IRootService
    public void shareRootRunCmd(String str) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IRootService.INTERFACE);
            obtain.writeString(str);
            this.mRemote.transact(1, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // com.kingroot.common.utils.system.root.handler.qqsecurityservice.IRootService
    public boolean checkVersion(int i) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IRootService.INTERFACE);
            obtain.writeInt(i);
            this.mRemote.transact(2, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readByte() == 0;
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }
}
