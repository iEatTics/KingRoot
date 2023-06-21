package com.kingroot.kinguser;

import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.util.Log;
import com.kingroot.kinguser.bsk;
import java.io.File;
/* loaded from: classes.dex */
public class bsh {
    private static bsh bLx;
    private static Handler bLy;
    private bsk bLz;

    /* renamed from: com.kingroot.kinguser.bsh$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2611a {
        void onFinish(int i);
    }

    public static bsh ahR() {
        if (bLx == null) {
            synchronized (bsh.class) {
                if (bLx == null) {
                    bLx = new bsh();
                }
            }
        }
        return bLx;
    }

    public bsh() {
        HandlerThread handlerThread = new HandlerThread(getClass().getName());
        handlerThread.start();
        bLy = new Handler(handlerThread.getLooper());
        this.bLz = new bsk(bre.ahy().getApplicationContext());
    }

    /* renamed from: a */
    public void m5575a(final String str, final String str2, final String str3, final String str4, final boolean z, final InterfaceC2611a interfaceC2611a) {
        bLy.post(new Runnable() { // from class: com.kingroot.kinguser.bsh.1
            @Override // java.lang.Runnable
            public void run() {
                bsh.this.m5574b(str, str2, str3, str4, z, interfaceC2611a);
            }
        });
    }

    /* renamed from: b */
    public void m5574b(String str, String str2, String str3, final String str4, boolean z, InterfaceC2611a interfaceC2611a) {
        try {
            if (!new File(String.valueOf(str) + File.separator + str2).exists()) {
                this.bLz.m5561hV(str);
                if (!TextUtils.isEmpty(str2)) {
                    this.bLz.m5560nc(str2);
                } else if (!TextUtils.isEmpty(str4)) {
                    this.bLz.m5560nc(str4);
                }
                bsk.InterfaceC2613a interfaceC2613a = null;
                if (!TextUtils.isEmpty(str4)) {
                    interfaceC2613a = new bsk.InterfaceC2613a() { // from class: com.kingroot.kinguser.bsh.2
                        @Override // com.kingroot.kinguser.bsk.InterfaceC2613a
                        /* renamed from: na */
                        public boolean mo5558na(String str5) {
                            String fileMD5 = bsi.getFileMD5(new File(str5));
                            return !TextUtils.isEmpty(fileMD5) && fileMD5.equalsIgnoreCase(str4);
                        }
                    };
                }
                int m5564a = this.bLz.m5564a(str4, str3, z, interfaceC2613a);
                if (interfaceC2611a != null) {
                    interfaceC2611a.onFinish(m5564a);
                }
            }
        } catch (Throwable th) {
            Log.e("FileDownloaderImpl", "[downloadSplashImage]" + th.getMessage());
        }
    }
}
