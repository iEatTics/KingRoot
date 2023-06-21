package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class bww {
    public int bSN = 0;
    public int bSO = 0;
    public int bSP = 0;
    public int bSQ = 0;

    /* renamed from: bW */
    public void m5277bW(Context context) {
        m5275bY(context);
        ajd();
        m5276bX(context);
    }

    /* renamed from: bX */
    private void m5276bX(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra("status", -1);
            if (!(intExtra == 2 || intExtra == 5)) {
                this.bSQ = 1;
                return;
            }
            int intExtra2 = registerReceiver.getIntExtra("plugged", -1);
            if (intExtra2 == 2) {
                this.bSQ = 3;
            } else if (intExtra2 == 1) {
                this.bSQ = 2;
            } else {
                this.bSQ = 0;
            }
        }
    }

    private void ajd() {
        if (Build.VERSION.SDK_INT < 24) {
            String m5169P = byy.m5169P(new File("/sys/class/android_usb/android0/state"));
            if (!TextUtils.isEmpty(m5169P)) {
                if ("CONFIGURED".equals(m5169P)) {
                    this.bSP = 1;
                } else if ("DISCONNECTED".equals(m5169P)) {
                    this.bSP = 2;
                } else if ("CONNECTED".equals(m5169P)) {
                    this.bSP = 3;
                }
            }
        }
    }

    /* renamed from: bY */
    private void m5275bY(Context context) {
        try {
            if (Build.VERSION.SDK_INT >= 20) {
                this.bSN = m5274bZ(context);
            } else {
                PowerManager powerManager = (PowerManager) context.getSystemService("power");
                if (powerManager != null) {
                    this.bSN = powerManager.isScreenOn() ? 1 : 2;
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: bZ */
    private int m5274bZ(Context context) {
        Method method;
        Class<?> cls = Class.forName("android.hardware.display.DisplayManager");
        Field field = context.getClass().getField("DISPLAY_SERVICE");
        field.setAccessible(true);
        Object systemService = context.getSystemService((String) field.get(context));
        if (systemService != null && (method = cls.getMethod("getDisplays", new Class[0])) != null) {
            method.setAccessible(true);
            Display[] displayArr = (Display[]) method.invoke(systemService, null);
            Method method2 = Display.class.getMethod("getState", new Class[0]);
            method2.setAccessible(true);
            Field field2 = Display.class.getField("STATE_OFF");
            field2.setAccessible(true);
            int length = displayArr.length;
            int i = 0;
            boolean z = false;
            while (i < length) {
                Display display = displayArr[i];
                i++;
                z = ((Integer) method2.invoke(display, null)).intValue() != field2.getInt(display) ? true : z;
            }
            this.bSN = z ? 1 : 2;
            return this.bSN;
        }
        return 0;
    }
}
