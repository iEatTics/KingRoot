package com.king.uranus;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.kingroot.kinguser.InterfaceC3280ll;
/* renamed from: com.king.uranus.aV */
/* loaded from: classes.dex */
public final class C0386aV {
    /* renamed from: f */
    public static InterfaceC0393bd m13680f(Parcel parcel) {
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            return null;
        }
        InterfaceC0393bd interfaceC0393bd = (InterfaceC0393bd) readStrongBinder.queryLocalInterface("com.king.uranus.client");
        return interfaceC0393bd == null ? new C0387a(readStrongBinder, parcel.readInt(), parcel.readInt(), parcel.readString()) : interfaceC0393bd;
    }

    /* renamed from: com.king.uranus.aV$a */
    /* loaded from: classes.dex */
    static class C0387a implements InterfaceC0393bd {

        /* renamed from: eE */
        private IBinder f219eE;

        /* renamed from: fd */
        private int f220fd;

        /* renamed from: fe */
        private int f221fe;

        /* renamed from: ff */
        private String f222ff;

        private C0387a(IBinder iBinder, int i, int i2, String str) {
            this.f219eE = iBinder;
            this.f220fd = i;
            this.f221fe = i2;
            this.f222ff = str;
        }

        @Override // com.king.uranus.InterfaceC0393bd
        /* renamed from: a */
        public int mo13673a(InterfaceC3280ll interfaceC3280ll) {
            int i = 0;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.king.uranus.client");
                interfaceC3280ll.mo3119d(obtain);
                this.f219eE.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                i = obtain2.readInt();
            } catch (RemoteException e) {
            } finally {
                obtain.recycle();
                obtain2.recycle();
            }
            return i;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f219eE;
        }

        @Override // com.king.uranus.InterfaceC0393bd
        public void sendMessage(Bundle bundle) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.king.uranus.client");
                bundle.writeToParcel(obtain, 0);
                this.f219eE.transact(5, obtain, obtain2, 1);
                obtain2.readException();
            } catch (RemoteException e) {
            } finally {
                obtain.recycle();
                obtain2.recycle();
            }
        }

        @Override // com.king.uranus.InterfaceC0393bd
        public int getUid() {
            return this.f220fd;
        }

        @Override // com.king.uranus.InterfaceC0393bd
        public String getName() {
            return this.f222ff;
        }
    }
}
