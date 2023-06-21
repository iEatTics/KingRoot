package com.kingroot.common.framework.task.provider;

import com.kingroot.common.app.KApplication;
import com.kingroot.common.framework.provider.KBaseProvider;
import com.kingroot.kinguser.AbstractC3639tl;
import com.kingroot.kinguser.AbstractC3695ui;
import com.kingroot.kinguser.C3690uf;
import com.kingroot.kinguser.C3693ug;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class KTaskProvider extends KBaseProvider {

    /* renamed from: Iq */
    private static AbstractC3695ui.InterfaceC3696a f805Iq;

    /* renamed from: Ip */
    private static int f804Ip = 0;

    /* renamed from: Ir */
    private static volatile boolean f806Ir = false;

    @Override // com.kingroot.common.framework.provider.KBaseProvider, android.content.ContentProvider
    public boolean onCreate() {
        f806Ir = true;
        C3690uf.m2045J(getContext());
        return super.onCreate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.common.framework.provider.KBaseProvider
    /* renamed from: jb */
    public List<? extends AbstractC3639tl> mo13387jb() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C3693ug());
        m13385x(arrayList);
        return arrayList;
    }

    /* renamed from: x */
    private void m13385x(List<AbstractC3695ui> list) {
        if (f805Iq == null) {
            f805Iq = new AbstractC3695ui.InterfaceC3696a() { // from class: com.kingroot.common.framework.task.provider.KTaskProvider.1
                @Override // com.kingroot.kinguser.AbstractC3695ui.InterfaceC3696a
                /* renamed from: O */
                public void mo2033O(boolean z) {
                    KTaskProvider.m13389M(z);
                }
            };
        }
        for (AbstractC3695ui abstractC3695ui : list) {
            abstractC3695ui.mo2034a(f805Iq);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.common.framework.provider.KBaseProvider
    public String getAuthority() {
        return KApplication.m13428iq();
    }

    public static synchronized boolean isRunning() {
        boolean z;
        synchronized (KTaskProvider.class) {
            z = f804Ip > 0;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M */
    public static synchronized void m13389M(boolean z) {
        synchronized (KTaskProvider.class) {
            if (z) {
                f804Ip++;
            } else {
                f804Ip--;
            }
        }
    }

    /* renamed from: kz */
    public static boolean m13386kz() {
        return f806Ir;
    }
}
