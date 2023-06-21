package com.kingroot.common.ipc;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.kingroot.kinguser.cbx;
import java.util.HashMap;
/* loaded from: classes.dex */
public class IpcResult implements Parcelable {

    /* renamed from: IV */
    private Object f817IV;
    private static final String TAG = cbx.bWU + IpcResult.class.getSimpleName();

    /* renamed from: IT */
    public static final IpcResult f815IT = new IpcResult(null);

    /* renamed from: IU */
    private static final ClassLoader f816IU = IpcResult.class.getClassLoader();
    public static final Parcelable.Creator<IpcResult> CREATOR = new Parcelable.Creator<IpcResult>() { // from class: com.kingroot.common.ipc.IpcResult.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: n */
        public IpcResult createFromParcel(Parcel parcel) {
            return IpcResult.m13374l(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: bb */
        public IpcResult[] newArray(int i) {
            return new IpcResult[i];
        }
    };

    public IpcResult(Object obj) {
        this.f817IV = obj;
    }

    /* renamed from: h */
    public void m13377h(Object obj) {
        this.f817IV = obj;
    }

    @Nullable
    public <T> T getResult() {
        if (this.f817IV == null) {
            return null;
        }
        try {
            return (T) this.f817IV;
        } catch (ClassCastException e) {
            m13380a("getResult", this.f817IV, "T", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public static IpcResult m13374l(Parcel parcel) {
        return new IpcResult(parcel.readValue(f816IU));
    }

    public final int readInt() {
        return m13378ba(0);
    }

    /* renamed from: ba */
    public final int m13378ba(int i) {
        Object result = getResult();
        if (result != null) {
            try {
                return ((Integer) result).intValue();
            } catch (ClassCastException e) {
                m13380a("readInt", result, "Integer", e);
                return i;
            }
        }
        return i;
    }

    public final boolean readBoolean() {
        return m13381P(false);
    }

    /* renamed from: P */
    public final boolean m13381P(boolean z) {
        Object result = getResult();
        if (result != null) {
            try {
                return ((Boolean) result).booleanValue();
            } catch (ClassCastException e) {
                m13380a("readBoolean", result, "Boolean", e);
                return z;
            }
        }
        return z;
    }

    public final String readString() {
        Object result = getResult();
        if (result == null) {
            return null;
        }
        try {
            return (String) result;
        } catch (ClassCastException e) {
            m13380a("readString", result, "String", e);
            return null;
        }
    }

    /* renamed from: kF */
    public final HashMap m13376kF() {
        Object result = getResult();
        if (result == null) {
            return null;
        }
        try {
            return (HashMap) result;
        } catch (ClassCastException e) {
            m13380a("readHashMap", result, "HashMap", e);
            return null;
        }
    }

    /* renamed from: kG */
    public final <T extends Parcelable> T m13375kG() {
        Object result = getResult();
        if (result == null) {
            return null;
        }
        try {
            return (T) result;
        } catch (ClassCastException e) {
            m13380a("readParcelable", result, "T extends Parcelable", e);
            return null;
        }
    }

    /* renamed from: a */
    private void m13379a(String str, Object obj, String str2, Object obj2, ClassCastException classCastException) {
        StringBuilder sb = new StringBuilder();
        sb.append("Method ");
        sb.append(str);
        sb.append(" expected ");
        sb.append(str2);
        sb.append(" but value was a ");
        sb.append(obj.getClass().getName());
        sb.append(".  The default value ");
        sb.append(obj2);
        sb.append(" was returned.");
    }

    /* renamed from: a */
    private void m13380a(String str, Object obj, String str2, ClassCastException classCastException) {
        m13379a(str, obj, str2, "<null>", classCastException);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.f817IV);
    }
}
