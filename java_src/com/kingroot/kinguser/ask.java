package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import java.io.File;
/* loaded from: classes.dex */
final class ask {
    private static final String TAG = aiq.ask + "_FileUploadHelper";

    /* renamed from: e */
    public static synchronized int m9460e(File file, int i) {
        int i2 = -1;
        synchronized (ask.class) {
            if (file != null) {
                if (file.exists() && file.isFile() && file.canRead()) {
                    String guid = C3736ux.m1945kT().getGuid();
                    if (!TextUtils.isEmpty(guid)) {
                        Context m13453ge = KApplication.m13453ge();
                        String m12881al = aay.m12881al(m13453ge);
                        if (m12881al == null) {
                            m12881al = "null";
                        }
                        C2845cs c2845cs = new C2845cs();
                        c2845cs.f2389my = "1";
                        c2845cs.f2388it = guid;
                        c2845cs.f2387iE = m12881al;
                        c2845cs.product = i;
                        c2845cs.f2390mz = file.getName().substring(5);
                        try {
                            byte[] m2355cy = C3563rs.m2355cy(file.getAbsolutePath());
                            C2846ct c2846ct = new C2846ct();
                            c2846ct.f2393mA = c2845cs;
                            c2846ct.data = m2355cy;
                            byte[] m12994c = aaj.m12994c(c2846ct.toByteArray(), "fPNH830HG23QQPIM*&S955(2NB@L*&GF".getBytes());
                            C3739uy m1934k = C3739uy.m1934k(m13453ge, "http://bh.3g.qq.com");
                            m1934k.setRequestMethod("POST");
                            m1934k.m1927z(m12994c);
                            m1934k.m1932kZ();
                            i2 = m1934k.getResponseCode() == 200 ? 0 : -4000;
                        } catch (Exception e) {
                            i2 = -7000;
                        }
                    }
                }
            }
        }
        return i2;
    }
}
