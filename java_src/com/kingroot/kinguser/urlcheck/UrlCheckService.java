package com.kingroot.kinguser.urlcheck;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.kinguser.acu;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.bfs;
import com.kingroot.kinguser.bfw;
import com.kingroot.kinguser.urlcheck.p016db.UrlCheckLog;
import com.kingroot.kinguser.urlcheck.p017ui.UrlCheckDialogActivity;
import java.net.URL;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class UrlCheckService extends Service {
    private HandlerC3710a bnm;

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    /* renamed from: com.kingroot.kinguser.urlcheck.UrlCheckService$a */
    /* loaded from: classes.dex */
    class HandlerC3710a extends Handler {
        public HandlerC3710a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 1:
                    String str = (String) message.obj;
                    int i = message.arg1;
                    if (!TextUtils.isEmpty(str)) {
                        try {
                            URL url = new URL(URLDecoder.decode(str, "UTF-8"));
                            UrlCheckService.this.m2002a(new UrlCheckLog(i, url.toString(), url.getHost()));
                            return;
                        } catch (Exception e) {
                            return;
                        }
                    }
                    return;
                case 2:
                    String str2 = (String) message.obj;
                    int i2 = message.arg1;
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            URL url2 = new URL(URLDecoder.decode(str2, "UTF-8"));
                            UrlCheckService.this.m2000b(new UrlCheckLog(i2, url2.toString(), url2.getHost()));
                            return;
                        } catch (Exception e2) {
                            return;
                        }
                    }
                    return;
                case 3:
                    int i3 = message.arg1;
                    if (i3 > 0) {
                        ady.m12308tK().mo1733w(100674, i3);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        HandlerThread handlerThread = new HandlerThread("urlcheck_worker");
        handlerThread.start();
        this.bnm = new HandlerC3710a(handlerThread.getLooper());
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (!bfw.aaS().aaU()) {
            return super.onStartCommand(intent, i, i2);
        }
        if (intent != null) {
            try {
                Message.obtain(this.bnm, intent.getIntExtra("KEY_URL_CLOUD_CHECK_NOTIFY_TYPE", 0), intent.getIntExtra("KEY_URL_CLOUD_CHECK_ARG1", -1), 0, intent.getStringExtra("KEY_URL_CLOUD_CHECK_OBJ1")).sendToTarget();
            } catch (Exception e) {
            }
        }
        return super.onStartCommand(intent, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m2002a(UrlCheckLog urlCheckLog) {
        boolean z;
        List<UrlCheckLog> m7235a = bfs.aaI().m7235a(false, 7776000000L);
        Iterator<UrlCheckLog> it = m7235a.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            UrlCheckLog next = it.next();
            if (next != null && TextUtils.equals(next.f3653GY, urlCheckLog.f3653GY)) {
                z = true;
                break;
            }
        }
        if (!z) {
            urlCheckLog.bnx = false;
            urlCheckLog.bnu = 1;
            urlCheckLog.bnv = System.currentTimeMillis();
            bfs.aaI().m7234c(urlCheckLog);
            m7235a.add(urlCheckLog);
        }
        if (acu.m12571g(bfw.aaS().aaT(), 3600000L)) {
            bfw.aaS().m7210cu(System.currentTimeMillis());
            UrlCheckDialogActivity.m1991u((ArrayList) m7235a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m2000b(UrlCheckLog urlCheckLog) {
        urlCheckLog.bnx = true;
        urlCheckLog.bnu = 1;
        urlCheckLog.bnv = System.currentTimeMillis();
        bfs.aaI().m7231e(urlCheckLog);
    }
}
