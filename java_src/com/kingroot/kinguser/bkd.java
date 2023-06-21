package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.support.annotation.Nullable;
import com.kingroot.loader.common.KlServiceManager;
import com.kingroot.loader.sdk.service.IKlApplicationManager;
import com.kingroot.loader.sdk.service.IKlConnectionManager;
import com.kingroot.loader.sdk.service.IKlFragmentManager;
import com.kingroot.loader.sdk.service.IKlNotificationManager;
import com.kingroot.loader.sdk.service.IKlPackageManager;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class bkd {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a */
    private static Context f1709a = null;
    private static bkc byW = null;

    /* renamed from: c */
    private static boolean f1710c = true;
    private static final AtomicBoolean byX = new AtomicBoolean(true);
    private static final AtomicBoolean byY = new AtomicBoolean(false);

    /* renamed from: el */
    public static void m6575el(boolean z) {
        f1710c = z;
    }

    public static boolean aeF() {
        return f1710c;
    }

    /* renamed from: a */
    public static void m6576a(Context context, bkc bkcVar) {
        bkq.m6546i("KlSdk init");
        f1709a = context;
        byW = bkcVar;
        m6577a();
        if (isCoreProcess()) {
            KlServiceManager.getKService(IKlPackageManager.class);
        }
    }

    /* renamed from: a */
    private static void m6577a() {
        KlServiceManager.registerService(IKlPackageManager.class, new KlServiceManager.AbstractC3986a() { // from class: com.kingroot.kinguser.bkd.1
            @Override // com.kingroot.loader.common.KlServiceManager.AbstractC3986a
            public Object aeB() {
                return new bjy();
            }
        });
        KlServiceManager.registerService(IKlApplicationManager.class, new KlServiceManager.AbstractC3986a() { // from class: com.kingroot.kinguser.bkd.2
            @Override // com.kingroot.loader.common.KlServiceManager.AbstractC3986a
            public Object aeB() {
                return new bju();
            }
        });
        KlServiceManager.registerService(IKlConnectionManager.class, new KlServiceManager.AbstractC3986a() { // from class: com.kingroot.kinguser.bkd.3
            @Override // com.kingroot.loader.common.KlServiceManager.AbstractC3986a
            public Object aeB() {
                return new bjv();
            }
        });
        KlServiceManager.registerService(IKlFragmentManager.class, new KlServiceManager.AbstractC3986a() { // from class: com.kingroot.kinguser.bkd.4
            @Override // com.kingroot.loader.common.KlServiceManager.AbstractC3986a
            public Object aeB() {
                return new bjw();
            }
        });
        KlServiceManager.registerService(IKlNotificationManager.class, new KlServiceManager.AbstractC3986a() { // from class: com.kingroot.kinguser.bkd.5
            @Override // com.kingroot.loader.common.KlServiceManager.AbstractC3986a
            public Object aeB() {
                return new bjx();
            }
        });
    }

    /* renamed from: em */
    public static void m6574em(boolean z) {
        byX.set(z);
    }

    public static boolean isCoreProcess() {
        return byX.get();
    }

    /* renamed from: en */
    public static void m6573en(boolean z) {
        byY.set(z);
    }

    public static Context aeG() {
        if (f1709a == null) {
            bkq.m6549e("Must set host application context first!");
            throw new RuntimeException("Must set host application context first!");
        }
        return f1709a;
    }

    public static bkc aeH() {
        return byW;
    }

    @Nullable
    /* renamed from: vt */
    public static Activity m6572vt() {
        Activity aeC = bjz.aeC();
        if (aeC != null) {
            return aeC;
        }
        if (byW == null) {
            return null;
        }
        return byW.mo6579US();
    }
}
