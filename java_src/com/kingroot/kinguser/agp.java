package com.kingroot.kinguser;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface agp {
    /* renamed from: E */
    void mo11925E(int i, String str);

    /* renamed from: fz */
    boolean mo11923fz(String str);

    /* renamed from: vV */
    String mo11922vV();

    /* renamed from: com.kingroot.kinguser.agp$b */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0907b extends agn implements agp {
        /* renamed from: h */
        public static agp m11921h(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            return C0906a.m11924a(iBinder, "hk.config");
        }
    }

    /* renamed from: com.kingroot.kinguser.agp$a */
    /* loaded from: classes.dex */
    public static class C0906a implements agp {
        private ago amV;
        private String mInterface;

        /* renamed from: a */
        public static agp m11924a(IBinder iBinder, String str) {
            if (iBinder != null) {
                try {
                    return new C0906a(iBinder, str);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            return null;
        }

        private C0906a(IBinder iBinder, String str) {
            this.amV = new ago(iBinder);
            this.mInterface = str;
        }

        @Override // com.kingroot.kinguser.agp
        /* renamed from: E */
        public void mo11925E(int i, String str) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken(this.mInterface);
                obtain.writeInt(i);
                obtain.writeString(str);
                this.amV.m11927a(2, this.mInterface, obtain, obtain2, 1);
                obtain2.readException();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.kingroot.kinguser.agp
        /* renamed from: fz */
        public boolean mo11923fz(String str) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken(this.mInterface);
                obtain.writeString(str);
                this.amV.m11927a(4, this.mInterface, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() == 1;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.kingroot.kinguser.agp
        /* renamed from: vV */
        public String mo11922vV() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken(this.mInterface);
                this.amV.m11927a(3, this.mInterface, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }
}
