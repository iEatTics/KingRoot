package com.king.uranus;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.kingroot.kinguser.C3256kr;
import com.kingroot.kinguser.C3357no;
import com.kingroot.kinguser.InterfaceC3283lo;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.king.uranus.bI */
/* loaded from: classes.dex */
public class C0392bI extends BroadcastReceiver {

    /* renamed from: uj */
    private static C0392bI f232uj = new C0392bI();

    /* renamed from: fX */
    private Set<InterfaceC3283lo> f233fX = new CopyOnWriteArraySet();

    /* renamed from: uk */
    private boolean f234uk = false;

    /* renamed from: ul */
    private long f235ul;

    /* renamed from: dg */
    public static C0392bI m13676dg() {
        return f232uj;
    }

    /* renamed from: u */
    public void m13674u(Context context) {
        if (!this.f234uk) {
            try {
                this.f235ul = System.currentTimeMillis();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
                intentFilter.addAction("android.intent.action.USER_PRESENT");
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                context.registerReceiver(this, intentFilter);
                this.f234uk = true;
            } catch (Throwable th) {
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (m13675dh()) {
            this.f235ul = System.currentTimeMillis();
            C3357no.m2832fl().m2834a(new C3256kr(this));
        }
    }

    /* renamed from: dh */
    private boolean m13675dh() {
        return Math.abs(this.f235ul - System.currentTimeMillis()) >= 300000;
    }

    /* renamed from: a */
    public void m13677a(InterfaceC3283lo interfaceC3283lo) {
        this.f233fX.add(interfaceC3283lo);
    }
}
