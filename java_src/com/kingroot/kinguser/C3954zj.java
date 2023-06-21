package com.kingroot.kinguser;

import android.text.TextUtils;
import android.widget.Toast;
import com.kingroot.common.app.KApplication;
/* renamed from: com.kingroot.kinguser.zj */
/* loaded from: classes.dex */
public class C3954zj {

    /* renamed from: Ww */
    private static Toast f4079Ww;

    /* renamed from: Wx */
    private static Boolean f4080Wx = null;

    public static void show(int i) {
        m1307c(C3953zi.m1311pr().getText(i), 0);
    }

    /* renamed from: b */
    public static void m1310b(CharSequence charSequence) {
        m1307c(charSequence, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m1309b(CharSequence charSequence, int i) {
        if (!TextUtils.isEmpty(charSequence)) {
            try {
                if (f4079Ww == null) {
                    f4079Ww = Toast.makeText(bzt.m5101ge(), charSequence, i);
                } else {
                    f4079Ww.setText(charSequence);
                    f4079Ww.setDuration(i);
                }
                if (f4079Ww != null) {
                    f4079Ww.show();
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: c */
    public static void m1307c(final CharSequence charSequence, final int i) {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.zj.1
            @Override // java.lang.Runnable
            public void run() {
                C3954zj.m1309b(charSequence, i);
            }
        });
    }

    /* renamed from: ps */
    private static boolean m1305ps() {
        if (f4080Wx == null) {
            try {
                f4080Wx = Boolean.valueOf((bzt.m5101ge().getApplicationInfo().flags & 2) != 0);
                return f4080Wx.booleanValue();
            } catch (Exception e) {
                return false;
            }
        }
        return f4080Wx.booleanValue();
    }

    /* renamed from: pt */
    public static boolean m1304pt() {
        return KApplication.m13437ih() && m1305ps();
    }

    /* renamed from: c */
    public static void m1308c(CharSequence charSequence) {
        if (m1304pt()) {
            m1307c("# " + ((Object) charSequence), 1);
        }
    }
}
