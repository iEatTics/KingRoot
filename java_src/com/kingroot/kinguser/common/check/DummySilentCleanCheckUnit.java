package com.kingroot.kinguser.common.check;

import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.ajr;
import java.util.List;
/* loaded from: classes.dex */
public class DummySilentCleanCheckUnit extends BaseSuCheckUnit {
    public static final Parcelable.Creator<DummySilentCleanCheckUnit> CREATOR = new Parcelable.Creator<DummySilentCleanCheckUnit>() { // from class: com.kingroot.kinguser.common.check.DummySilentCleanCheckUnit.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: dP */
        public DummySilentCleanCheckUnit[] newArray(int i) {
            return new DummySilentCleanCheckUnit[i];
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: R */
        public DummySilentCleanCheckUnit createFromParcel(Parcel parcel) {
            return new DummySilentCleanCheckUnit(parcel.readByte() == 1);
        }
    };
    private boolean aty;
    private List<String> atz = null;
    private boolean atA = false;

    public DummySilentCleanCheckUnit(boolean z) {
        this.aty = true;
        this.aty = z;
    }

    @Override // com.kingroot.kinguser.ajf
    /* renamed from: ze */
    public boolean mo4226ze() {
        if (this.atA) {
            return true;
        }
        if (this.atz != null && this.atz.size() > 0) {
            for (String str : this.atz) {
                if (!str.startsWith("/data") && !str.startsWith("/mnt") && !str.startsWith("/dev")) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: d */
    public boolean mo4231d(boolean z, boolean z2) {
        this.atz = ajr.m11430zt().m11428zv();
        this.atA = ajr.m11430zt().m11427zw();
        return false;
    }

    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: yQ */
    public boolean mo4227yQ() {
        ajr.m11430zt().m11432b(this.aty, this.atz);
        return true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte((byte) (this.aty ? 1 : 0));
    }
}
