package android.support.p004v4.p006os;

import android.os.Parcel;
/* renamed from: android.support.v4.os.ParcelableCompatCreatorCallbacks */
/* loaded from: classes.dex */
public interface ParcelableCompatCreatorCallbacks<T> {
    T createFromParcel(Parcel parcel, ClassLoader classLoader);

    T[] newArray(int i);
}
