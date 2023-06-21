package com.kingroot.kinguser;

import android.annotation.TargetApi;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
@TargetApi(14)
/* loaded from: classes.dex */
public class bkg extends BaseDexClassLoader {
    private ClassLoader bzg;

    public bkg(String str, File file, String str2, ClassLoader classLoader) {
        super(str, file, str2, classLoader.getParent());
        this.bzg = classLoader;
    }

    @Override // java.lang.ClassLoader
    public Class<?> loadClass(String str, boolean z) {
        try {
            try {
                return super.loadClass(str, z);
            } catch (ClassNotFoundException e) {
                return this.bzg.loadClass(str);
            }
        } catch (IllegalAccessError e2) {
            bkq.m6550d(e2);
            throw e2;
        }
    }
}
