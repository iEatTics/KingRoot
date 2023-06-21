package com.tencent.feedback.anr;

import android.content.Context;
import android.os.FileObserver;
import android.os.Process;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.eup.CrashReport;
import com.tencent.feedback.eup.CrashStrategyBean;
/* renamed from: com.tencent.feedback.anr.c */
/* loaded from: classes.dex */
public class FileObserverC4062c extends FileObserver {

    /* renamed from: b */
    private static FileObserverC4062c f4401b = null;

    /* renamed from: a */
    private Context f4402a;

    private FileObserverC4062c(Context context) {
        super("/data/anr/", 8);
        Context applicationContext;
        C4071c.m1088a(context).m1101H();
        Process.myPid();
        if (context != null && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f4402a = context;
    }

    /* renamed from: a */
    public static synchronized FileObserverC4062c m1133a(Context context) {
        FileObserverC4062c fileObserverC4062c;
        Context applicationContext;
        synchronized (FileObserverC4062c.class) {
            if (f4401b == null) {
                if (context != null && (applicationContext = context.getApplicationContext()) != null) {
                    context = applicationContext;
                }
                f4401b = new FileObserverC4062c(context);
            }
            fileObserverC4062c = f4401b;
        }
        return fileObserverC4062c;
    }

    @Override // android.os.FileObserver
    public void startWatching() {
        super.startWatching();
        C4073e.m1017a("start watching", new Object[0]);
    }

    @Override // android.os.FileObserver
    public void stopWatching() {
        synchronized (FileObserverC4062c.class) {
            f4401b = null;
        }
        super.stopWatching();
        C4073e.m1017a("stop watching", new Object[0]);
    }

    @Override // android.os.FileObserver
    public void onEvent(int i, String str) {
        C4073e.m1013c("received event %d %s", Integer.valueOf(i), str);
        String str2 = "/data/anr/" + str;
        if (!str2.contains("trace")) {
            C4073e.m1013c("not anr file %s", str2);
            return;
        }
        CrashStrategyBean crashRuntimeStrategy = CrashReport.getCrashRuntimeStrategy();
        if (crashRuntimeStrategy == null) {
            C4073e.m1012d("magic! no crash stategy,no anr return ?", new Object[0]);
        } else if (!crashRuntimeStrategy.isOpenANR()) {
            C4073e.m1017a("close anr!", new Object[0]);
        } else {
            C4061b.m1138a(this.f4402a).m1135a(str2);
        }
    }
}
