package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.view.View;
/* loaded from: classes.dex */
public class bfl {
    /* renamed from: a */
    public static void m7265a(final Handler handler, final int i, final View view) {
        beg.m7461Zj().m7451b(new bek() { // from class: com.kingroot.kinguser.bfl.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                try {
                    if (bfm.aah().mo7275ZV()) {
                        handler.post(new Runnable() { // from class: com.kingroot.kinguser.bfl.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                bwl.m5309c(i, view);
                            }
                        });
                    }
                } catch (Throwable th) {
                }
            }
        });
    }

    /* renamed from: a */
    public static void m7266a(final Context context, final Handler handler, final int i, final View view) {
        beg.m7461Zj().m7451b(new bek() { // from class: com.kingroot.kinguser.bfl.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                try {
                    if (bfm.aah().mo7275ZV()) {
                        handler.post(new Runnable() { // from class: com.kingroot.kinguser.bfl.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                bwl.m5321a(context, i, view);
                                bwl.m5309c(i, view);
                            }
                        });
                    }
                } catch (Throwable th) {
                }
            }
        });
    }
}
