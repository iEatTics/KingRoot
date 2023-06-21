package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.kinguser.C3956zk;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ajg {
    private static final Object atC = new Object();
    private static bed atD = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ajg.1
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
            r0 = r3.getAbsolutePath();
         */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            BufferedReader bufferedReader;
            Throwable th;
            String str = null;
            super.run();
            ajg.m11474zg();
            try {
                bufferedReader = new BufferedReader(new FileReader("/data/system/tmp_init.rc"));
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        String trim = readLine.trim();
                        if (trim.startsWith("service")) {
                            String[] split = trim.split("\\s+");
                            if (split.length >= 3) {
                                File file = new File(split[2].trim());
                                String name = file.getName();
                                if (!TextUtils.isEmpty(name) && name.startsWith("install") && name.endsWith("recovery.sh")) {
                                    break;
                                }
                            } else {
                                continue;
                            }
                        }
                    } catch (IOException e) {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e2) {
                            }
                        }
                        if (TextUtils.isEmpty(str)) {
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e3) {
                            }
                        }
                        throw th;
                    }
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e4) {
                    }
                }
            } catch (IOException e5) {
                bufferedReader = null;
            } catch (Throwable th3) {
                bufferedReader = null;
                th = th3;
            }
            if (TextUtils.isEmpty(str)) {
                ajg.m11476gm(str);
            }
        }
    });
    private static String atE = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zg */
    public static void m11474zg() {
        C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.ajg.2
            @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
            public Object execute(List<Object> list) {
                abc m12845qK = abc.m12845qK();
                if (m12845qK.isRootPermition(true)) {
                    ArrayList arrayList = new ArrayList(5);
                    arrayList.addAll(aar.m12944r("/data/system/tmp_init.rc", false));
                    arrayList.add(aas.f1260XV + "/data/system/tmp_init.rc");
                    arrayList.add(String.format("cat %s > %s", "/init.rc", "/data/system/tmp_init.rc"));
                    arrayList.add(aas.f1262XX + "/data/system/tmp_init.rc");
                    m12845qK.runRootCommands(arrayList);
                    return null;
                }
                return null;
            }
        }, new Object[0]);
    }

    /* renamed from: zh */
    public static void m11473zh() {
        beg.m7461Zj().m7450c(atD);
    }

    /* renamed from: zi */
    public static String m11472zi() {
        String str;
        synchronized (atC) {
            if (atE == null) {
                atE = aks.m11143BP().m10714zi();
            }
            str = atE;
        }
        return str;
    }

    /* renamed from: gm */
    public static void m11476gm(String str) {
        synchronized (atC) {
            atE = str;
            aks.m11143BP().m10737gm(str);
        }
    }
}
