package com.kingroot.kinguser.common.check;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.aar;
import com.kingroot.kinguser.aas;
import com.kingroot.kinguser.abc;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.bha;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class DummyAttrCheckUnit extends BaseSuCheckUnit {
    public static final Parcelable.Creator<DummyAttrCheckUnit> CREATOR = new Parcelable.Creator<DummyAttrCheckUnit>() { // from class: com.kingroot.kinguser.common.check.DummyAttrCheckUnit.2
        @Override // android.os.Parcelable.Creator
        /* renamed from: dO */
        public DummyAttrCheckUnit[] newArray(int i) {
            return new DummyAttrCheckUnit[i];
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: Q */
        public DummyAttrCheckUnit createFromParcel(Parcel parcel) {
            return new DummyAttrCheckUnit(parcel.readString());
        }
    };

    /* renamed from: Gx */
    private String f2379Gx;

    public DummyAttrCheckUnit(String str) {
        this.f2379Gx = str;
    }

    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: d */
    public boolean mo4231d(boolean z, boolean z2) {
        return false;
    }

    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: yQ */
    public boolean mo4227yQ() {
        if (TextUtils.isEmpty(this.f2379Gx)) {
            return false;
        }
        C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.common.check.DummyAttrCheckUnit.1
            @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
            public Object execute(List<Object> list) {
                abc m12845qK = abc.m12845qK();
                if (m12845qK.isRootPermition(true)) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(aas.f1256XR);
                    arrayList.addAll(aar.m12944r(DummyAttrCheckUnit.this.f2379Gx, false));
                    arrayList.add(aas.f1261XW + DummyAttrCheckUnit.this.f2379Gx);
                    if (!DummyAttrCheckUnit.this.f2379Gx.contentEquals(bha.bpv)) {
                        arrayList.add(aas.f1262XX + DummyAttrCheckUnit.this.f2379Gx);
                    } else {
                        arrayList.add(String.format("chmod 0%o %s", Integer.valueOf(aks.m11143BP().m11084Cw()), bha.bpv));
                    }
                    arrayList.add(String.format("chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s", DummyAttrCheckUnit.this.f2379Gx));
                    arrayList.addAll(aar.m12944r(DummyAttrCheckUnit.this.f2379Gx, true));
                    arrayList.add(aas.f1257XS);
                    m12845qK.runRootCommands(arrayList);
                    return null;
                }
                return null;
            }
        }, new Object[0]);
        return true;
    }

    @Override // com.kingroot.kinguser.ajf
    /* renamed from: ze */
    public boolean mo4226ze() {
        return (this.f2379Gx.startsWith("/data") || this.f2379Gx.startsWith("/mnt") || this.f2379Gx.startsWith("/dev")) ? false : true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2379Gx);
    }
}
