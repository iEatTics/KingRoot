package com.kingroot.kinguser;

import java.io.File;
import java.io.FileInputStream;
/* renamed from: com.kingroot.kinguser.iy */
/* loaded from: classes.dex */
public final class C3203iy {

    /* renamed from: sO */
    private static Boolean f2877sO = null;

    /* renamed from: cp */
    public static synchronized boolean m3446cp() {
        boolean booleanValue;
        Boolean bool;
        synchronized (C3203iy.class) {
            if (f2877sO == null) {
                if (C3304mf.m3091ev() < 17 || !new File("/sys/fs/selinux/enforce").exists()) {
                    bool = null;
                } else {
                    try {
                        try {
                            bool = Boolean.valueOf(new FileInputStream("/sys/fs/selinux/enforce").read() == 49);
                        } finally {
                        }
                    } catch (Exception e) {
                        bool = null;
                    }
                }
                if (bool == null) {
                    bool = false;
                }
                f2877sO = bool;
            }
            booleanValue = f2877sO.booleanValue();
        }
        return booleanValue;
    }
}
