package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes.dex */
public final class aho {
    private static final List<Class<? extends ahp>> are = new LinkedList();
    private static ahp arf;
    private static ComponentName arg;

    static {
        are.add(ahx.class);
        are.add(aia.class);
        are.add(ahu.class);
        are.add(ahz.class);
        are.add(ahv.class);
        are.add(ahw.class);
        are.add(ahy.class);
        are.add(ahr.class);
        are.add(ahq.class);
        are.add(ahs.class);
    }

    /* renamed from: k */
    public static void m11708k(Context context, int i) {
        if (context != null) {
            if (arf == null || arg == null) {
                m11710aP(context);
            }
            if (arg != null) {
                arf.mo11678a(context, arg, i);
            }
        }
    }

    /* renamed from: aO */
    public static void m11711aO(Context context) {
        m11708k(context, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0069, code lost:
        com.kingroot.kinguser.aho.arf = r0;
     */
    /* renamed from: aP */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void m11710aP(Context context) {
        try {
            if (arg == null) {
                arg = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName()).getComponent();
                if (arg == null) {
                    arg = new ComponentName(context.getPackageName(), context.getClass().getName());
                }
            }
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.HOME");
            String str = context.getPackageManager().resolveActivity(intent, 65536).activityInfo.packageName;
            Iterator<Class<? extends ahp>> it = are.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ahp newInstance = it.next().newInstance();
                if (newInstance.mo11677xv().contains(str)) {
                    break;
                }
            }
        } catch (Exception e) {
        }
        if (arf == null) {
            arf = new aht();
        }
    }

    /* renamed from: e */
    public static void m11709e(Cursor cursor) {
        if (cursor != null && !cursor.isClosed()) {
            cursor.close();
        }
    }
}
