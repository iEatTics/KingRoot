package com.kingroot.kinguser;

import android.content.pm.ApplicationInfo;
import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.text.TextUtils;
import com.kingroot.kinguser.model.SuRequestCmdModel;
import com.kingroot.master.app.KUApplication;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
/* loaded from: classes.dex */
public class bbd {
    /* renamed from: aJ */
    public static void m7855aJ(String str, String str2) {
        LocalSocket localSocket;
        Throwable th;
        OutputStream outputStream;
        LocalSocket localSocket2;
        if (str == null || str.length() == 0) {
            return;
        }
        if (!m7853kn(str)) {
        }
        try {
            LocalSocketAddress localSocketAddress = new LocalSocketAddress(str, LocalSocketAddress.Namespace.FILESYSTEM);
            localSocket2 = new LocalSocket();
            try {
                try {
                    localSocket2.connect(localSocketAddress);
                    byte[] bytes = str2.getBytes("UTF-8");
                    OutputStream outputStream2 = localSocket2.getOutputStream();
                    try {
                        outputStream2.write(bytes);
                        aks.m11143BP().m11091Cp();
                        C3945za.m1340c(outputStream2);
                        if (localSocket2 != null) {
                            try {
                                localSocket2.close();
                            } catch (Exception e) {
                            }
                        }
                    } catch (Throwable th2) {
                        localSocket = localSocket2;
                        outputStream = outputStream2;
                        th = th2;
                        C3945za.m1340c(outputStream);
                        if (localSocket != null) {
                            try {
                                localSocket.close();
                            } catch (Exception e2) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    C3945za.m1340c((Closeable) null);
                    if (localSocket2 != null) {
                        try {
                            localSocket2.close();
                        } catch (Exception e4) {
                        }
                    }
                }
            } catch (Throwable th3) {
                localSocket = localSocket2;
                outputStream = null;
                th = th3;
            }
        } catch (IOException e5) {
            localSocket2 = null;
        } catch (Throwable th4) {
            localSocket = null;
            th = th4;
            outputStream = null;
        }
    }

    /* renamed from: km */
    public static LocalSocket m7854km(String str) {
        LocalSocket localSocket;
        LocalSocketAddress localSocketAddress;
        if (str == null || str.length() == 0) {
            return null;
        }
        if (!m7853kn(str)) {
        }
        try {
            localSocketAddress = new LocalSocketAddress(str, LocalSocketAddress.Namespace.FILESYSTEM);
            localSocket = new LocalSocket();
        } catch (IOException e) {
            localSocket = null;
        }
        try {
            localSocket.connect(localSocketAddress);
            return localSocket;
        } catch (IOException e2) {
            try {
                localSocket.close();
            } catch (Exception e3) {
            }
            return null;
        }
    }

    /* renamed from: a */
    private static void m7857a(LocalSocket localSocket, String str) {
        OutputStream outputStream;
        Throwable th;
        if (localSocket == null) {
            return;
        }
        try {
            try {
                byte[] bytes = str.getBytes("UTF-8");
                OutputStream outputStream2 = localSocket.getOutputStream();
                try {
                    outputStream2.write(bytes);
                    aks.m11143BP().m11091Cp();
                    C3945za.m1340c(outputStream2);
                    try {
                        localSocket.close();
                    } catch (Exception e) {
                    }
                } catch (Throwable th2) {
                    outputStream = outputStream2;
                    th = th2;
                    C3945za.m1340c(outputStream);
                    try {
                        localSocket.close();
                    } catch (Exception e2) {
                    }
                    throw th;
                }
            } catch (IOException e3) {
                C3945za.m1340c((Closeable) null);
                try {
                    localSocket.close();
                } catch (Exception e4) {
                }
            }
        } catch (Throwable th3) {
            outputStream = null;
            th = th3;
        }
    }

    /* renamed from: kn */
    private static boolean m7853kn(String str) {
        File file = new File(str);
        if (file.canRead() && file.canWrite()) {
            return true;
        }
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition(true)) {
            ApplicationInfo applicationInfo = KUApplication.m13453ge().getApplicationInfo();
            m12845qK.m12846el("chown " + applicationInfo.uid + "." + applicationInfo.uid + " /data/data/com.kingroot.kinguser/cache");
            m12845qK.m12846el("chmod 0771 /data/data/com.kingroot.kinguser/cache");
        }
        File file2 = new File(str);
        return file2.canRead() && file2.canWrite();
    }

    /* renamed from: a */
    public static void m7856a(SuRequestCmdModel suRequestCmdModel, boolean z, String str) {
        int i;
        List<String> m7798M = bbn.m7798M(suRequestCmdModel.adZ, suRequestCmdModel.aRm);
        if (suRequestCmdModel.aRs != null) {
            m7857a(suRequestCmdModel.aRs, str);
        } else {
            m7855aJ(suRequestCmdModel.aRp, str);
        }
        if (TextUtils.equals(str, AbstractC3976zt.get("s2")) || TextUtils.equals(str, AbstractC3976zt.get("s1"))) {
            i = z ? 3 : 1;
            r0 = 0;
        } else {
            i = 2;
            if (z) {
                i = 4;
            }
        }
        ady.m12330a(suRequestCmdModel.adZ, i, r0, m7798M);
    }
}
