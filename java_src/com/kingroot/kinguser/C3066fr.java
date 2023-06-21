package com.kingroot.kinguser;

import java.io.Closeable;
import java.io.IOException;
/* renamed from: com.kingroot.kinguser.fr */
/* loaded from: classes.dex */
public class C3066fr {
    /* renamed from: a */
    public static void m3834a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: b */
    public static void m3833b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }
}
