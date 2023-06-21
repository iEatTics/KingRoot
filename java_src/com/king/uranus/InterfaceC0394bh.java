package com.king.uranus;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.king.uranus.bh */
/* loaded from: classes.dex */
public interface InterfaceC0394bh extends IInterface {

    /* renamed from: com.king.uranus.bh$a */
    /* loaded from: classes.dex */
    public static class BinderC0395a extends Binder implements InterfaceC0394bh {

        /* renamed from: fr */
        private static final String f236fr = BinderC0395a.class.getName();

        public BinderC0395a() {
            attachInterface(this, f236fr);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 1:
                    parcel.enforceInterface(f236fr);
                    mo13662a(parcel.readString(), parcel.readInt(), parcel.readInt());
                    return true;
                case 2:
                    parcel.enforceInterface(f236fr);
                    mo13659b(parcel.readString(), parcel.readInt(), parcel.readInt());
                    return true;
                case 1598968902:
                    parcel2.writeString(f236fr);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* renamed from: a */
        public void mo13662a(String str, int i, int i2) {
        }

        /* renamed from: b */
        public void mo13659b(String str, int i, int i2) {
        }
    }
}
