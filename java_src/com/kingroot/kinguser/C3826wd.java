package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
/* renamed from: com.kingroot.kinguser.wd */
/* loaded from: classes.dex */
public final class C3826wd {

    /* renamed from: Mu */
    public static C3827a f3855Mu = new C3827a();

    /* renamed from: Mv */
    private String f3856Mv;

    /* renamed from: Mw */
    private String f3857Mw;

    /* renamed from: Mx */
    private C3830wf f3858Mx;
    private Context mContext;

    /* renamed from: com.kingroot.kinguser.wd$a */
    /* loaded from: classes.dex */
    public static class C3827a {

        /* renamed from: MA */
        public String f3859MA;

        /* renamed from: MB */
        public int f3860MB;

        /* renamed from: My */
        public String f3861My;

        /* renamed from: Mz */
        public String f3862Mz;
    }

    public C3826wd(Context context) {
        this.mContext = context;
        this.f3856Mv = AbstractC3976zt.get("wx_id_release");
        this.f3857Mw = AbstractC3976zt.get("wx_secret_release");
        if (m1577X(context)) {
            this.f3856Mv = AbstractC3976zt.get("wx_id_debug");
            this.f3857Mw = AbstractC3976zt.get("wx_secret_debug");
        }
        try {
            this.f3858Mx = new C3830wf(context, this.f3856Mv);
        } catch (Throwable th) {
        }
    }

    public boolean isWXAppInstalled() {
        try {
            return this.f3858Mx.isWXAppInstalled();
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: nk */
    public void m1576nk() {
        this.f3858Mx.m1565no();
    }

    /* renamed from: X */
    private static boolean m1577X(Context context) {
        try {
            return "7CC749CFC0FB5677E6ABA342EDBDBA5A".equalsIgnoreCase(aah.m13005E(context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures[0].toByteArray()));
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: nl */
    public static boolean m1575nl() {
        return (TextUtils.isEmpty(f3855Mu.f3861My) && TextUtils.isEmpty(f3855Mu.f3862Mz)) ? false : true;
    }

    /* renamed from: nm */
    public String m1574nm() {
        return this.f3856Mv;
    }

    /* renamed from: nn */
    public String m1573nn() {
        return this.f3857Mw;
    }
}
