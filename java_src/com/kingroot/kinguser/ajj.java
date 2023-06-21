package com.kingroot.kinguser;

import android.p003os.FileUtils;
import com.kingroot.kinguses.R;
import java.io.File;
import java.util.Locale;
/* loaded from: classes.dex */
public class ajj {
    private static final String asE = AbstractC3976zt.get("fn1");

    /* renamed from: zl */
    public static String m11467zl() {
        File file;
        String str;
        synchronized (asE) {
            File file2 = new File(C3958zl.m1295pw(), asE);
            if (file2.exists()) {
                file = file2;
            } else {
                try {
                    C3563rs.m2348n(R.raw.su, asE);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                file = new File(C3958zl.m1295pw(), asE);
            }
            if (!file.exists()) {
                str = null;
            } else {
                str = file.getAbsolutePath();
                if (!file.setExecutable(true)) {
                    abi.m12831em(String.format(Locale.US, "chmod 0%o %s", Integer.valueOf((int) FileUtils.S_IRWXU), str));
                }
            }
        }
        return str;
    }
}
