package com.kingroot.kinguser;

import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import com.kingroot.kinguser.cgy;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import shark.C4395a;
import tmsdk.common.TMSDKContext;
import tmsdk.common.exception.WifiApproveException;
/* loaded from: classes.dex */
public class cfd {
    public static boolean bZT = false;
    public static boolean bZU = false;
    private static Looper bZV = null;
    private static Looper bZW = null;
    private static boolean bZX = false;
    private static String bZY = null;
    private static boolean bZZ = false;
    private static boolean caa = false;
    private static cfi cab = null;
    private static ceu bYt = null;
    private static boolean cac = true;

    public static Looper getLooper() {
        if (bZV == null) {
            synchronized (cfd.class) {
                if (bZV == null) {
                    HandlerThread m5139nD = bze.ajZ().m5139nD("Shark-Looper");
                    m5139nD.start();
                    bZV = m5139nD.getLooper();
                }
            }
        }
        return bZV;
    }

    /* renamed from: nS */
    public static boolean m4641nS(String str) {
        if (C4395a.bXd != cgr.anb()) {
            return false;
        }
        String str2 = null;
        try {
            str2 = cgy.m4296a(new cgy.InterfaceC2813a() { // from class: com.kingroot.kinguser.cfd.1
                @Override // com.kingroot.kinguser.cgy.InterfaceC2813a
                /* renamed from: l */
                public final void mo4292l(boolean z, boolean z2) {
                }
            });
        } catch (WifiApproveException e) {
        }
        return !TextUtils.isEmpty(str2);
    }

    /* renamed from: nT */
    public static boolean m4640nT(String str) {
        Socket socket;
        InetSocketAddress inetSocketAddress;
        boolean z = false;
        System.currentTimeMillis();
        Socket socket2 = null;
        try {
            inetSocketAddress = new InetSocketAddress(InetAddress.getByName("www.qq.com"), 80);
            socket = new Socket();
        } catch (IOException e) {
            socket = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            socket.setSoLinger(false, 0);
            socket.connect(inetSocketAddress, 5000);
            z = true;
            try {
                if (socket.isConnected()) {
                    socket.close();
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        } catch (IOException e2) {
            if (socket != null) {
                try {
                    if (socket.isConnected()) {
                        socket.close();
                    }
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            }
            return z;
        } catch (Throwable th4) {
            th = th4;
            socket2 = socket;
            if (socket2 != null) {
                try {
                    if (socket2.isConnected()) {
                        socket2.close();
                    }
                } catch (Throwable th5) {
                    th5.printStackTrace();
                }
            }
            throw th;
        }
        return z;
    }

    /* renamed from: ag */
    public static boolean m4649ag(byte[] bArr) {
        return bArr != null && bArr.length == 1;
    }

    /* renamed from: lg */
    public static boolean m4643lg(int i) {
        return i == 152 || i == 1;
    }

    /* renamed from: lh */
    public static boolean m4642lh(int i) {
        return i == 997 || i == 999;
    }

    /* renamed from: eV */
    public static void m4648eV(boolean z) {
        bZX = z;
    }

    public static boolean alE() {
        return bZX;
    }

    /* renamed from: nU */
    public static void m4639nU(String str) {
        bZY = str;
    }

    public static String alF() {
        return bZY;
    }

    /* renamed from: eW */
    public static void m4647eW(boolean z) {
        bZZ = z;
    }

    /* renamed from: fI */
    public static boolean m4645fI() {
        return bZZ;
    }

    /* renamed from: eX */
    public static void m4646eX(boolean z) {
        caa = z;
    }

    public static boolean alG() {
        return caa;
    }

    /* renamed from: a */
    public static void m4650a(cfi cfiVar) {
        cab = cfiVar;
    }

    public static cfi alH() {
        if (cab == null) {
            synchronized (cfj.class) {
                cab = new cfj(m4644fs());
            }
        }
        return cab;
    }

    /* renamed from: fs */
    private static long m4644fs() {
        int i = 1;
        if (1 != TMSDKContext.akT()) {
            i = 2 == TMSDKContext.akT() ? 2 : 3;
        }
        return cdx.m4793p(i, 4294967296L);
    }
}
