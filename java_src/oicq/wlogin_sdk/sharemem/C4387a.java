package oicq.wlogin_sdk.sharemem;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: oicq.wlogin_sdk.sharemem.a */
/* loaded from: classes.dex */
final class C4387a implements Parcelable.Creator<WloginLoginInfo> {
    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public WloginLoginInfo createFromParcel(Parcel parcel) {
        return new WloginLoginInfo(parcel, null);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public WloginLoginInfo[] newArray(int i) {
        return new WloginLoginInfo[i];
    }
}
