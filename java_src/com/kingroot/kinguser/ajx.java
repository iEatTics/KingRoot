package com.kingroot.kinguser;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.kinguser.bed;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ajx {
    private bed auB = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ajx.1
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            List<Object> mo7445nF = interfaceC2117a.mo7445nF();
            if (mo7445nF != null && mo7445nF.size() > 1 && (mo7445nF.get(1) instanceof Integer)) {
                ajx.this.m11368v((String) mo7445nF.get(0), ((Integer) mo7445nF.get(1)).intValue());
            }
        }
    });

    /* renamed from: u */
    public void m11369u(String str, int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(Integer.valueOf(i));
        beg.m7461Zj().m7456a(this.auB, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public void m11368v(String str, int i) {
        if (!TextUtils.isEmpty(str)) {
            int m8886jn = auw.m8886jn(str);
            if (m8886jn == 4 || m8886jn == 3 || m8886jn == 1 || m8886jn == 5) {
                try {
                    PackageInfo packageInfo = C3952zh.m1312pq().getPackageInfo(str, 0);
                    if (packageInfo != null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(str);
                        arrayList.add(packageInfo.versionName);
                        arrayList.add(Integer.valueOf(packageInfo.versionCode));
                        arrayList.add(aaz.m12872dZ(str));
                        File file = new File(packageInfo.applicationInfo.publicSourceDir);
                        if (file != null && file.isFile()) {
                            arrayList.add(C3563rs.getFileMD5(file));
                            arrayList.add(Long.valueOf(file.length()));
                        } else {
                            arrayList.add("");
                            arrayList.add(0);
                        }
                        arrayList.add(Integer.valueOf(i));
                        ady.m12308tK().m12344V(arrayList);
                    }
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
        }
    }
}
