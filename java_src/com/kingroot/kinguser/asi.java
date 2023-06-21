package com.kingroot.kinguser;

import android.content.p002pm.IPackageDataObserver;
import android.content.p002pm.IPackageStatsObserver;
import android.content.pm.PackageManager;
import android.content.pm.PackageStats;
import android.os.Environment;
import android.os.StatFs;
import com.kingroot.common.app.KApplication;
import java.io.File;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class asi {
    private static Method aMN;
    private static Method aMO;

    static {
        try {
            aMN = PackageManager.class.getDeclaredMethod("freeStorageAndNotify", Long.TYPE, IPackageDataObserver.class);
            aMN.setAccessible(true);
            aMO = PackageManager.class.getDeclaredMethod("getPackageSizeInfo", String.class, IPackageStatsObserver.class);
            aMO.setAccessible(true);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (SecurityException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: iq */
    public static PackageStats m9464iq(String str) {
        final Object obj = new Object();
        final AtomicReference atomicReference = new AtomicReference(null);
        IPackageStatsObserver.Stub stub = new IPackageStatsObserver.Stub() { // from class: com.kingroot.kinguser.examination.util.MemoryHelper$1
            @Override // android.content.p002pm.IPackageStatsObserver
            public void onGetStatsCompleted(PackageStats packageStats, boolean z) {
                atomicReference.set(packageStats);
                synchronized (obj) {
                    obj.notify();
                }
            }
        };
        if (aMO == null) {
            return (PackageStats) atomicReference.get();
        }
        try {
            aMO.invoke(KApplication.m13453ge().getPackageManager(), str, stub);
            synchronized (obj) {
                try {
                    obj.wait(5000L);
                } catch (InterruptedException e) {
                }
            }
        } catch (Exception e2) {
            atomicReference.set(null);
        }
        return (PackageStats) atomicReference.get();
    }

    /* renamed from: NR */
    private static long m9466NR() {
        File dataDirectory = Environment.getDataDirectory();
        if (dataDirectory == null) {
            return 1024888192L;
        }
        StatFs statFs = new StatFs(dataDirectory.getPath());
        long blockCount = statFs.getBlockCount() * statFs.getBlockSize();
        if (blockCount >= 1024) {
            return blockCount;
        }
        return 1024888192L;
    }

    /* renamed from: NS */
    public static boolean m9465NS() {
        final Object obj = new Object();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        long m9466NR = m9466NR();
        IPackageDataObserver.Stub stub = new IPackageDataObserver.Stub() { // from class: com.kingroot.kinguser.examination.util.MemoryHelper$2
            @Override // android.content.p002pm.IPackageDataObserver
            public void onRemoveCompleted(String str, boolean z) {
                atomicBoolean.set(z);
                synchronized (obj) {
                    obj.notify();
                }
            }
        };
        try {
            if (aMN == null) {
                throw new NullPointerException();
            }
            aMN.invoke(KApplication.m13453ge().getPackageManager(), Long.valueOf(m9466NR), stub);
            synchronized (obj) {
                try {
                    obj.wait(5000L);
                } catch (InterruptedException e) {
                }
            }
            return atomicBoolean.get();
        } catch (Exception e2) {
            e2.printStackTrace();
            atomicBoolean.set(false);
            return atomicBoolean.get();
        }
    }
}
