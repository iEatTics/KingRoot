package com.kingroot.kinguser;

import android.os.Environment;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.ProcessUtils;
import com.kingroot.kinguser.C3167hw;
import java.io.File;
import java.util.ArrayList;
/* renamed from: com.kingroot.kinguser.un */
/* loaded from: classes.dex */
public class C3702un {

    /* renamed from: IO */
    private static final String f3641IO;

    /* renamed from: IP */
    private static final String f3642IP;

    /* renamed from: IQ */
    private static final String f3643IQ;

    static {
        f3641IO = abd.m12839qb() >= 18 ? "ipme_44" : "ipme";
        f3642IP = abd.m12840qO() ? "solo64" : "solo";
        f3643IQ = Environment.getDataDirectory().getAbsolutePath() + File.separator + "data-lib" + File.separator + KApplication.m13453ge().getPackageName();
    }

    /* renamed from: k */
    public static String m2023k(String str, String str2, String str3) {
        String str4;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (!TextUtils.isEmpty(str2)) {
            str4 = str + str2 + str3;
        } else {
            str4 = str + str3;
        }
        String str5 = f3643IQ + File.separator + str4;
        File file = new File(str5);
        if (file.exists()) {
            abc.m12845qK().m12846el(aas.f1260XV + file);
        }
        String str6 = C3636tj.m2169ge().getFilesDir() + File.separator + str;
        File file2 = new File(str6);
        if (file2.exists()) {
            file2.delete();
        }
        try {
            C3563rs.m2352e(str, file2);
            ArrayList arrayList = new ArrayList();
            File file3 = new File(f3643IQ);
            if (!file3.exists()) {
                arrayList.add(aas.f1263XY + file3);
                arrayList.add(aas.f1262XX + " " + file3);
            }
            arrayList.add(String.format("cat %s > %s", str6, str5));
            arrayList.add(aas.f1262XX + " " + str5);
            arrayList.add(String.format("chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s", str5));
            abc.m12845qK().runRootCommands(arrayList);
            return str5;
        } catch (Throwable th) {
            return str5;
        }
    }

    @WorkerThread
    /* renamed from: a */
    public static InterfaceC3159ho m2024a(final C3701um c3701um) {
        if (c3701um == null || !c3701um.isValid()) {
            return null;
        }
        if (!TextUtils.isEmpty(c3701um.f3640IN)) {
            String m2023k = m2023k(c3701um.f3640IN, "." + c3701um.version, ".so");
            if (!TextUtils.isEmpty(m2023k)) {
                agm.m11931vR().m11933fw(m2023k);
                c3701um.f3639IM = agm.m11931vR().m11929vT();
            }
        }
        String m2023k2 = m2023k(c3701um.f3634IH, c3701um.version, ".jar");
        InterfaceC3152hh m3603d = C3166hv.m3603d(ProcessUtils.m13143ej("system_server"), "system_server");
        InterfaceC3161hq interfaceC3161hq = (InterfaceC3161hq) C3183ih.m3501a(InterfaceC3161hq.class);
        if (interfaceC3161hq.mo3267K(1) || interfaceC3161hq.start(1) == 0) {
            InterfaceC3157hm interfaceC3157hm = (InterfaceC3157hm) C3183ih.m3501a(InterfaceC3157hm.class);
            if (!TextUtils.isEmpty(c3701um.pkgName)) {
                interfaceC3157hm.mo3201h(new ArrayList<String>() { // from class: com.kingroot.kinguser.un.1
                    {
                        add(C3701um.this.pkgName);
                    }
                });
            }
            return interfaceC3161hq.mo3262a(new C3167hw.C3168a().m3600an("v3").m3594f(true).m3596b(m2023k2, 1).m3599ao(c3701um.f3635II).m3598ap(c3701um.f3636IJ).m3601a(m3603d).m3597aq(c3701um.f3639IM).m3595bg());
        }
        return null;
    }
}
