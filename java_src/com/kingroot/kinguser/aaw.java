package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class aaw {

    /* renamed from: Yx */
    private static final HashMap<String, Integer> f1288Yx = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.aaw$a */
    /* loaded from: classes.dex */
    public static class C0623a {
        private C0623a() {
        }

        /* renamed from: dW */
        int mo12886dW(@NonNull String str) {
            throw new RuntimeException("Stub!");
        }
    }

    /* renamed from: a */
    private static void m12896a(String str, C0623a c0623a) {
        m12895a(str, c0623a, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static void m12895a(String str, C0623a c0623a, boolean z) {
        FileReader fileReader;
        Closeable closeable;
        String readLine;
        FileReader fileReader2 = null;
        if (c0623a == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (z) {
            VTCmdResult m12846el = abc.m12845qK().m12846el("cat " + str);
            if (!m12846el.success() || TextUtils.isEmpty(m12846el.mStdOut)) {
                return;
            }
            String[] split = m12846el.mStdOut.split("\n");
            int length = split.length;
            for (int i = 0; i < length && c0623a.mo12886dW(split[i]) != 1; i++) {
            }
            return;
        }
        try {
            fileReader = new FileReader(str);
            try {
                BufferedReader bufferedReader = new BufferedReader(fileReader);
                do {
                    try {
                        readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                    } catch (Exception e) {
                        fileReader2 = fileReader;
                        closeable = bufferedReader;
                        C3945za.m1340c(closeable);
                        C3945za.m1340c(fileReader2);
                        return;
                    } catch (Throwable th) {
                        fileReader2 = bufferedReader;
                        th = th;
                        C3945za.m1340c(fileReader2);
                        C3945za.m1340c(fileReader);
                        throw th;
                    }
                } while (c0623a.mo12886dW(readLine) != 1);
                C3945za.m1340c(bufferedReader);
                C3945za.m1340c(fileReader);
            } catch (Exception e2) {
                closeable = null;
                fileReader2 = fileReader;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            closeable = null;
        } catch (Throwable th3) {
            th = th3;
            fileReader = null;
        }
    }

    /* renamed from: dR */
    private static boolean m12894dR(final String str) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        m12896a("/proc/mounts", new C0623a() { // from class: com.kingroot.kinguser.aaw.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.kingroot.kinguser.aaw.C0623a
            /* renamed from: dW */
            public int mo12886dW(@NonNull String str2) {
                String trim = str2.trim();
                if (!trim.startsWith("#") && trim.startsWith("/dev/block/dm-") && trim.contains(" " + str + " ")) {
                    atomicBoolean.set(true);
                    return 1;
                }
                return 0;
            }
        });
        return atomicBoolean.get();
    }

    /* renamed from: qu */
    private static String m12889qu() {
        String[] list = new File("/").list();
        if (list == null) {
            return null;
        }
        for (String str : list) {
            if (str.startsWith("fstab.")) {
                String lowerCase = str.toLowerCase();
                if (!lowerCase.contains("goldfish") && !lowerCase.contains(".fwup") && !lowerCase.contains(".krbak")) {
                    return "/" + str;
                }
            }
        }
        return null;
    }

    /* renamed from: dS */
    private static boolean m12893dS(final String str) {
        String m12889qu = m12889qu();
        if (TextUtils.isEmpty(m12889qu)) {
            return false;
        }
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        m12895a(m12889qu, new C0623a() { // from class: com.kingroot.kinguser.aaw.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.kingroot.kinguser.aaw.C0623a
            /* renamed from: dW */
            public int mo12886dW(@NonNull String str2) {
                String trim = str2.trim();
                if (!trim.startsWith("#") && trim.contains("verify") && trim.contains(str)) {
                    atomicBoolean.set(true);
                    return 1;
                }
                return 0;
            }
        }, true);
        return atomicBoolean.get();
    }

    /* renamed from: dT */
    private static boolean m12892dT(String str) {
        return abc.m12845qK().m12846el(aba.m12855qF() + " dm_num " + str).success();
    }

    @WorkerThread
    /* renamed from: dU */
    public static synchronized int m12891dU(String str) {
        int m12887s;
        synchronized (aaw.class) {
            m12887s = m12887s(str, true);
        }
        return m12887s;
    }

    /* renamed from: s */
    private static synchronized int m12887s(String str, boolean z) {
        int intValue;
        synchronized (aaw.class) {
            synchronized (f1288Yx) {
                Integer num = f1288Yx.get(str);
                if (num != null) {
                    intValue = num.intValue();
                } else {
                    boolean m12894dR = m12894dR(str);
                    if (!m12894dR && z) {
                        m12894dR = m12893dS(str) && m12892dT(str);
                    }
                    Integer valueOf = Integer.valueOf(m12894dR ? 1 : 2);
                    f1288Yx.put(str, valueOf);
                    intValue = valueOf.intValue();
                }
            }
        }
        return intValue;
    }

    @WorkerThread
    /* renamed from: dV */
    public static synchronized boolean m12890dV(String str) {
        boolean z = true;
        synchronized (aaw.class) {
            if (1 == m12891dU(str)) {
                if (aav.m12908qi()) {
                    z = false;
                }
            }
        }
        return z;
    }

    /* renamed from: qv */
    public static boolean m12888qv() {
        return 1 == m12891dU("/system");
    }
}
