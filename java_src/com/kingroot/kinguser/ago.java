package com.kingroot.kinguser;

import android.os.IBinder;
import android.os.Parcel;
import android.text.TextUtils;
/* loaded from: classes.dex */
public class ago {
    IBinder mRemote;

    public ago(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    /* renamed from: fy */
    public static String m11926fy(String str) {
        return !TextUtils.isEmpty(str) ? "hk_daemon" + str : "hk_daemon";
    }

    /* renamed from: a */
    public boolean m11927a(int i, String str, Parcel parcel, Parcel parcel2, int i2) {
        Parcel obtain = Parcel.obtain();
        parcel.setDataPosition(0);
        obtain.writeInt(i);
        obtain.writeString(str);
        obtain.appendFrom(parcel, 0, parcel.dataSize());
        return this.mRemote.transact(1024, obtain, parcel2, i2);
    }
}
