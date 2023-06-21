package com.kingroot.kinguser.common.check;

import android.content.pm.ApplicationInfo;
import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.AbstractC3976zt;
import com.kingroot.kinguser.C3563rs;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.C3966zn;
import com.kingroot.kinguser.abc;
import com.kingroot.kinguser.abd;
import com.kingroot.loader.common.KlConst;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class DataFileCheckUnit extends BaseSuCheckUnit {
    private boolean atu = false;
    private final Map<String, C3966zn.C3968a> atv = new HashMap();
    private final Map<String, C3966zn.C3968a> atw = new HashMap();
    private static final Object sLock = new Object();
    public static final Parcelable.Creator<DataFileCheckUnit> CREATOR = new Parcelable.Creator<DataFileCheckUnit>() { // from class: com.kingroot.kinguser.common.check.DataFileCheckUnit.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: dN */
        public DataFileCheckUnit[] newArray(int i) {
            return new DataFileCheckUnit[i];
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: P */
        public DataFileCheckUnit createFromParcel(Parcel parcel) {
            return new DataFileCheckUnit();
        }
    };

    public DataFileCheckUnit() {
        init();
    }

    private void init() {
        int i;
        int i2 = -1;
        try {
            ApplicationInfo applicationInfo = C3952zh.m1312pq().getApplicationInfo(KUApplication.m13453ge().getPackageName(), 0);
            if (applicationInfo != null) {
                i = applicationInfo.uid;
                try {
                    i2 = applicationInfo.uid;
                } catch (Exception e) {
                }
            } else {
                i = -1;
            }
        } catch (Exception e2) {
            i = -1;
        }
        File filesDir = KUApplication.m13453ge().getFilesDir();
        File file = new File(filesDir.getParentFile(), "applib");
        C3966zn.C3968a c3968a = new C3966zn.C3968a();
        c3968a.f4097WN = i;
        c3968a.f4098WO = i2;
        c3968a.mode = 500;
        c3968a.f4099WP = "u:object_r:app_data_file:s0";
        this.atv.put(file.getAbsolutePath() + File.separator + AbstractC3976zt.get("fn5"), c3968a);
        this.atv.put(file.getAbsolutePath() + File.separator + AbstractC3976zt.get("fn7"), c3968a);
        this.atv.put(file.getAbsolutePath() + File.separator + (abd.m12840qO() ? AbstractC3976zt.get("fn6") : AbstractC3976zt.get("fn3")), c3968a);
        C3966zn.C3968a c3968a2 = new C3966zn.C3968a();
        c3968a2.f4097WN = i;
        c3968a2.f4098WO = i2;
        c3968a2.mode = 384;
        c3968a2.f4099WP = "u:object_r:app_data_file:s0";
        this.atv.put(filesDir.getAbsolutePath() + File.separator + "40372.dat", c3968a2);
        this.atv.put(filesDir.getAbsolutePath() + File.separator + "40251.dat", c3968a2);
        this.atv.put(filesDir.getAbsolutePath() + File.separator + "40305.dat", c3968a2);
        this.atv.put(filesDir.getAbsolutePath() + File.separator + "40351.dat", c3968a2);
        C3966zn.C3968a c3968a3 = new C3966zn.C3968a();
        c3968a3.f4097WN = i;
        c3968a3.f4098WO = i2;
        c3968a3.mode = 505;
        c3968a3.f4099WP = "u:object_r:app_data_file:s0";
        File file2 = new File(filesDir.getParentFile(), "databases");
        File file3 = new File(filesDir.getParentFile(), "app_workspace");
        File file4 = new File(filesDir.getParentFile(), KlConst.PLUGIN_CACHE_DIR_NAME);
        this.atv.put(filesDir.getAbsolutePath(), c3968a3);
        this.atv.put(file2.getAbsolutePath(), c3968a3);
        this.atv.put(file3.getAbsolutePath(), c3968a3);
        this.atv.put(file.getAbsolutePath(), c3968a3);
        this.atv.put(file4.getAbsolutePath(), c3968a3);
    }

    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: d */
    public boolean mo4231d(boolean z, boolean z2) {
        this.atu = false;
        if (this.atv == null || this.atv.isEmpty()) {
            return this.atu;
        }
        HashMap hashMap = new HashMap();
        for (String str : this.atv.keySet()) {
            if (C3966zn.m1277a(str, this.atv.get(str)) != 0) {
                hashMap.put(str, this.atv.get(str));
                this.atu = true;
            }
        }
        synchronized (sLock) {
            if (!hashMap.isEmpty()) {
                this.atw.clear();
                this.atw.putAll(hashMap);
            }
        }
        return !this.atu;
    }

    @Override // com.kingroot.kinguser.common.check.BaseSuCheckUnit
    /* renamed from: yQ */
    public boolean mo4227yQ() {
        if (!this.atu) {
            return false;
        }
        HashMap hashMap = new HashMap();
        synchronized (sLock) {
            hashMap.putAll(this.atw);
        }
        for (String str : hashMap.keySet()) {
            m4271c(str, (C3966zn.C3968a) hashMap.get(str));
        }
        return true;
    }

    @Override // com.kingroot.kinguser.ajf
    /* renamed from: ze */
    public boolean mo4226ze() {
        return true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
    }

    /* renamed from: c */
    public static void m4271c(String str, C3966zn.C3968a c3968a) {
        try {
            if (!C3563rs.m2344s(new File(str))) {
                C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.common.check.DataFileCheckUnit.2
                    @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                    public Object execute(List<Object> list) {
                        String str2 = (String) list.get(0);
                        C3966zn.C3968a c3968a2 = (C3966zn.C3968a) list.get(1);
                        abc m12845qK = abc.m12845qK();
                        if (m12845qK.isRootPermition(true)) {
                            ArrayList arrayList = new ArrayList();
                            if (c3968a2.f4097WN != -1 && c3968a2.f4098WO != -1) {
                                arrayList.add(String.format("chown %d.%d %s", Integer.valueOf(c3968a2.f4097WN), Integer.valueOf(c3968a2.f4098WO), str2));
                            }
                            if (c3968a2.mode != -1) {
                                arrayList.add(String.format("chmod 0%o %s", Integer.valueOf(c3968a2.mode), str2));
                            }
                            if (c3968a2.f4099WP != null) {
                                arrayList.add(String.format("chcon %1$s %2$s;/system/bin/toolbox chcon %1$s %2$s", c3968a2.f4099WP, str2));
                            }
                            m12845qK.runRootCommands(arrayList);
                            return null;
                        }
                        return null;
                    }
                }, str, c3968a);
            }
        } catch (IOException e) {
        }
    }
}
