package com.kingroot.common.framework.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.text.TextUtils;
import com.kingroot.kinguser.C3664tr;
import com.kingroot.kinguser.C3665ts;
import com.kingroot.kinguser.InterfaceC3666tt;
import com.kingroot.kinguser.abh;
import com.kingroot.kinguser.bzt;
/* loaded from: classes.dex */
public class KSysService extends Service {

    /* renamed from: Hz */
    private static boolean f800Hz = false;

    /* renamed from: HA */
    private InterfaceC3666tt f801HA = null;

    /* renamed from: HB */
    private InterfaceC3666tt f802HB = null;

    /* renamed from: b */
    private InterfaceC3666tt m13395b(Intent intent) {
        int i = 0;
        if (intent == null) {
            return null;
        }
        try {
            i = intent.getIntExtra("extra_access_type", 0);
        } catch (Exception e) {
        }
        switch (i) {
            case 1:
                if (this.f801HA == null) {
                    this.f801HA = new C3665ts(this);
                }
                return this.f801HA;
            default:
                if (this.f802HB == null) {
                    this.f802HB = new C3664tr();
                }
                return this.f802HB;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        f800Hz = true;
        abh.m12834a(this, true);
    }

    @Override // android.app.Service
    public void onDestroy() {
        abh.m12834a(this, true);
        super.onDestroy();
        f800Hz = false;
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        super.onStart(intent, i);
        InterfaceC3666tt m13395b = m13395b(intent);
        if (m13395b != null) {
            try {
                m13395b.onStart(intent, i);
            } catch (Exception e) {
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        InterfaceC3666tt m13395b = m13395b(intent);
        if (m13395b == null) {
            return null;
        }
        try {
            return m13395b.onBind(intent);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public static void m13396a(ServiceConnection serviceConnection, int i) {
        try {
            Context m5101ge = bzt.m5101ge();
            Intent intent = new Intent();
            intent.setClass(m5101ge, KSysService.class);
            intent.putExtra("extra_access_type", 1);
            m5101ge.bindService(intent, serviceConnection, i);
        } catch (Exception e) {
        }
    }

    /* renamed from: jS */
    public static void m13394jS() {
        m13392o(0, "");
    }

    /* renamed from: o */
    public static void m13392o(int i, String str) {
        synchronized (KSysService.class) {
            try {
                Context m5101ge = bzt.m5101ge();
                Intent intent = new Intent();
                if (!TextUtils.isEmpty(str)) {
                    intent.setAction(str);
                }
                intent.putExtra("extra_start_type", i);
                intent.putExtra("extra_access_type", 1);
                intent.setClass(m5101ge, KSysService.class);
                m5101ge.startService(intent);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: jT */
    public static boolean m13393jT() {
        return f800Hz;
    }
}
