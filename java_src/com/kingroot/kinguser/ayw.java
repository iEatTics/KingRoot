package com.kingroot.kinguser;

import com.kingplugin.qqpim.softdownload.download.task.obj.AppDownloadTask;
/* loaded from: classes.dex */
public class ayw {
    private static final cce<ayw> sInstance = new cce<ayw>() { // from class: com.kingroot.kinguser.ayw.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Vo */
        public ayw create() {
            return new ayw();
        }
    };

    /* renamed from: Vn */
    public static ayw m7978Vn() {
        return sInstance.get();
    }

    private ayw() {
    }

    /* renamed from: d */
    public void m7976d(AppDownloadTask appDownloadTask) {
        awf.m8664a(m7977a(appDownloadTask, (byte) 40));
    }

    /* renamed from: e */
    public void m7975e(AppDownloadTask appDownloadTask) {
        awf.m8664a(m7977a(appDownloadTask, (byte) 10));
    }

    /* renamed from: f */
    public void m7974f(AppDownloadTask appDownloadTask) {
        awf.m8664a(m7977a(appDownloadTask, (byte) 1));
    }

    /* renamed from: g */
    public void m7973g(AppDownloadTask appDownloadTask) {
        awf.m8664a(m7977a(appDownloadTask, (byte) 30));
    }

    /* renamed from: a */
    private C3005dt m7977a(AppDownloadTask appDownloadTask, byte b) {
        C3005dt c3005dt = new C3005dt();
        c3005dt.nSuccess = b;
        try {
            c3005dt.categoryid = Integer.valueOf(appDownloadTask.cmsCategoryId).intValue();
        } catch (NumberFormatException e) {
            c3005dt.categoryid = 0;
        }
        c3005dt.url = appDownloadTask.orignalUrl;
        c3005dt.channelId = appDownloadTask.channelId;
        c3005dt.ext_str = appDownloadTask.businessStream;
        C2859df c2859df = new C2859df();
        c2859df.softname = appDownloadTask.packageName;
        c2859df.version = appDownloadTask.versionName;
        c2859df.versioncode = appDownloadTask.versionCode;
        c2859df.name = appDownloadTask.appName;
        try {
            c2859df.category = Integer.valueOf(appDownloadTask.cmsCategoryId).intValue();
        } catch (NumberFormatException e2) {
            c2859df.category = 0;
        }
        c3005dt.softkey = c2859df;
        return c3005dt;
    }
}
