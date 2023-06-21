package com.kingroot.kinguser;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.kingroot.kinguser.deletereport.interfaces.IDeleteReportService;
import java.util.List;
/* loaded from: classes.dex */
public interface agq {
    /* renamed from: af */
    boolean mo11920af(List<String> list);

    @Deprecated
    boolean removeProtectedPackage(String str);

    void setServiceEnable(boolean z);

    boolean syncMonitorPackages(List<String> list);

    boolean syncProtectPackages(List<String> list);

    /* renamed from: com.kingroot.kinguser.agq$b */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0909b extends agn implements agq {
        /* renamed from: i */
        public static agq m11918i(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            return C0908a.m11919b(iBinder, "ku.pService.dr");
        }
    }

    /* renamed from: com.kingroot.kinguser.agq$a */
    /* loaded from: classes.dex */
    public static class C0908a implements agq {
        private ago amV;
        private String mInterface;

        /* renamed from: b */
        public static agq m11919b(IBinder iBinder, String str) {
            if (iBinder != null) {
                try {
                    return new C0908a(iBinder, str);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            return null;
        }

        private C0908a(IBinder iBinder, String str) {
            this.amV = new ago(iBinder);
            this.mInterface = str;
        }

        @Override // com.kingroot.kinguser.agq
        public void setServiceEnable(boolean z) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDeleteReportService.MAGIC_NUMBER);
                obtain.writeInterfaceToken(this.mInterface);
                obtain.writeInt(z ? 1 : 0);
                this.amV.m11927a(1, this.mInterface, obtain, obtain2, 1);
                obtain2.readException();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.kingroot.kinguser.agq
        public boolean removeProtectedPackage(String str) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDeleteReportService.MAGIC_NUMBER);
                obtain.writeInterfaceToken(this.mInterface);
                obtain.writeString(str);
                this.amV.m11927a(6, this.mInterface, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() == 1;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.kingroot.kinguser.agq
        public boolean syncProtectPackages(List<String> list) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDeleteReportService.MAGIC_NUMBER);
                obtain.writeInterfaceToken(this.mInterface);
                obtain.writeStringList(list);
                this.amV.m11927a(9, this.mInterface, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() == 1;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.kingroot.kinguser.agq
        public boolean syncMonitorPackages(List<String> list) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDeleteReportService.MAGIC_NUMBER);
                obtain.writeInterfaceToken(this.mInterface);
                obtain.writeStringList(list);
                this.amV.m11927a(10, this.mInterface, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() == 1;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.kingroot.kinguser.agq
        /* renamed from: af */
        public boolean mo11920af(List<String> list) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(IDeleteReportService.MAGIC_NUMBER);
                obtain.writeInterfaceToken(this.mInterface);
                obtain.writeStringList(list);
                this.amV.m11927a(11, this.mInterface, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() == 1;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }
}
