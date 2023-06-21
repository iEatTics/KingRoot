package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.kingmaster.toolbox.cleaner.uninstall.data.TcPkgInfo;
import java.io.File;
import java.util.List;
/* loaded from: classes.dex */
public class afg {
    private static String fileName = "uninstall_snapshott.conf";

    /* renamed from: aa */
    public static void m12082aa(List<TcPkgInfo> list) {
        if (list != null && list.size() > 0) {
            C3604sq.m2245d(list, C3958zl.getCacheDir() + "/" + fileName);
        }
    }

    /* renamed from: aF */
    public static List<TcPkgInfo> m12084aF(Context context) {
        String str = C3958zl.getCacheDir() + "/" + fileName;
        if (new File(str).exists()) {
            Object m2247cK = C3604sq.m2247cK(str);
            if (m2247cK instanceof List) {
                return (List) m2247cK;
            }
        }
        return null;
    }

    /* renamed from: aG */
    public static List<TcPkgInfo> m12083aG(Context context) {
        final List<TcPkgInfo> m12109e = afd.m12109e(context, 0);
        if (m12109e != null) {
            beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.afg.1
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    afg.m12082aa(m12109e);
                }
            }));
            return m12109e;
        }
        return null;
    }

    /* renamed from: vc */
    public static boolean m12081vc() {
        File file = new File(C3958zl.getCacheDir() + "/" + fileName);
        if (file.exists()) {
            return file.delete();
        }
        return true;
    }
}
