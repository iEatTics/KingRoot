package com.kingroot.kinguser;

import java.io.Closeable;
import java.io.IOException;
/* renamed from: com.kingroot.kinguser.gx */
/* loaded from: classes.dex */
public class C3141gx {
    /* renamed from: a */
    public static void m3645a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }
}
