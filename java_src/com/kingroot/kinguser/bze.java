package com.kingroot.kinguser;

import android.os.MemoryFile;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.List;
import tmsdk.common.TMSDKContext;
/* loaded from: classes.dex */
public class bze {
    private static bzf bVb;
    private static MemoryFile bVd;
    private static boolean bVe;
    private static List<WeakReference<Object>> bVa = new LinkedList();
    public static volatile cgh bVc = null;
    private static cgg bVf = null;
    private static cem bVg = null;

    public static void ajX() {
        byte[] bytes = TMSDKContext.class.getName().getBytes("utf-8");
        byte[] bArr = {(byte) bytes.length};
        MemoryFile memoryFile = new MemoryFile("tmsdk2-jni-context", 512);
        bVd = memoryFile;
        memoryFile.writeBytes(bArr, 0, 0, 1);
        bVd.writeBytes(bytes, 0, 1, bytes.length);
        ajY();
    }

    public static void ajY() {
        if (!bVe) {
            cek.m4773Z(TMSDKContext.akS(), TMSDKContext.m13nG("sdk_libname"));
            bVe = true;
        }
    }

    public static bzf ajZ() {
        if (bVb == null) {
            synchronized (bze.class) {
                if (bVb == null) {
                    bVb = new bzf(m5143fs(), "com.tmsdk.common");
                }
            }
        }
        return bVb;
    }

    /* renamed from: fs */
    private static long m5143fs() {
        int i = 1;
        if (1 != TMSDKContext.akT()) {
            i = 2 == TMSDKContext.akT() ? 2 : 3;
        }
        return cdx.m4793p(i, 4294967296L);
    }
}
