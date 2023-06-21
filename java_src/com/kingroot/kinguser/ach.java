package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.text.TextUtils;
import com.kingroot.common.utils.system.root.handler.qqsecurityservice.RootServiceStub;
import com.kingroot.kinguser.aci;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ach extends abw {
    private static IBinder aad = null;
    private static final Object mLock = new Object();

    @Override // com.kingroot.kinguser.abw
    /* renamed from: rA */
    protected abm mo12729rA() {
        m12739ao(bzt.m5101ge());
        return this.f1382ZZ.aaa;
    }

    @Override // com.kingroot.kinguser.abw
    /* renamed from: rB */
    protected aci.EnumC0652a mo12728rB() {
        return aci.EnumC0652a.TYPE_ROOT_QQSECURITY;
    }

    /* renamed from: ao */
    public void m12739ao(Context context) {
        String m12735rC = m12735rC();
        if (!TextUtils.isEmpty(m12735rC)) {
            m12736r(context, m12735rC);
        }
    }

    /* renamed from: r */
    private void m12736r(final Context context, final String str) {
        if (aad != null && aad.isBinderAlive()) {
            m12738ex(str);
            return;
        }
        try {
            synchronized (mLock) {
                new Thread(new Runnable() { // from class: com.kingroot.kinguser.ach.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            Thread.sleep(300L);
                        } catch (InterruptedException e) {
                        }
                        Intent intent = new Intent("com.tencent.qqpimsecure.TMS_LITE_SERVICE");
                        intent.setPackage("com.tencent.qqpimsecure");
                        intent.putExtra("service_type", 5);
                        try {
                            context.bindService(intent, new ServiceConnection() { // from class: com.kingroot.kinguser.ach.1.1
                                @Override // android.content.ServiceConnection
                                public void onServiceDisconnected(ComponentName componentName) {
                                }

                                @Override // android.content.ServiceConnection
                                public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                                    synchronized (ach.mLock) {
                                        IBinder unused = ach.aad = iBinder;
                                        ach.this.m12738ex(str);
                                        ach.mLock.notify();
                                    }
                                }
                            }, 1);
                        } catch (Exception e2) {
                        }
                    }
                }).start();
                long currentTimeMillis = System.currentTimeMillis();
                mLock.wait(2000L);
                abw m12731rE = new aci(new aci.EnumC0652a[]{aci.EnumC0652a.TYPE_ROOT_SELF_DAEMON}).m12731rE();
                if (m12731rE != null) {
                    this.f1382ZZ.aaa = m12731rE.m12743rr();
                }
                aco.m12707a(System.currentTimeMillis() - currentTimeMillis, this.f1382ZZ.m12742rs(), 7);
            }
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ex */
    public void m12738ex(String str) {
        if (str != null) {
            try {
                RootServiceStub.asInterface(aad).shareRootRunCmd(str);
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: rC */
    public String m12735rC() {
        String absolutePath = aco.m12702rS().getAbsolutePath();
        return TextUtils.isEmpty(absolutePath) ? "" : absolutePath + " -d";
    }
}
