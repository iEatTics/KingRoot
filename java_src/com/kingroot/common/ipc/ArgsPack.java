package com.kingroot.common.ipc;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class ArgsPack implements Parcelable {
    public static final Parcelable.Creator<ArgsPack> CREATOR = new Parcelable.Creator<ArgsPack>() { // from class: com.kingroot.common.ipc.ArgsPack.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: k */
        public ArgsPack createFromParcel(Parcel parcel) {
            return new ArgsPack(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: aZ */
        public ArgsPack[] newArray(int i) {
            return new ArgsPack[i];
        }
    };

    /* renamed from: IS */
    private List<Object> f814IS;
    private ClassLoader mClassLoader;
    private int mIndex;
    private int mSize;

    public ArgsPack(Object... objArr) {
        this.mIndex = 0;
        this.f814IS = new ArrayList();
        this.mClassLoader = getClass().getClassLoader();
        if (objArr != null) {
            Collections.addAll(this.f814IS, objArr);
        }
    }

    @Nullable
    public <T> T next() {
        if (this.mIndex >= this.f814IS.size()) {
            return null;
        }
        List<Object> list = this.f814IS;
        int i = this.mIndex;
        this.mIndex = i + 1;
        return (T) list.get(i);
    }

    @Nullable
    /* renamed from: kE */
    public Object[] m13384kE() {
        if (this.mIndex >= this.f814IS.size()) {
            return null;
        }
        return this.f814IS.subList(this.mIndex, this.f814IS.size()).toArray();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mIndex);
        parcel.writeInt(this.f814IS.size());
        for (Object obj : this.f814IS) {
            parcel.writeValue(obj);
        }
    }

    private ArgsPack(Parcel parcel) {
        this.mIndex = 0;
        this.mClassLoader = getClass().getClassLoader();
        this.f814IS = new ArrayList();
        this.mIndex = parcel.readInt();
        this.mSize = parcel.readInt();
        for (int i = 0; i < this.mSize; i++) {
            this.f814IS.add(parcel.readValue(this.mClassLoader));
        }
    }
}
