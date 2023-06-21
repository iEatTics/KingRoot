package com.kingroot.kinguser;

import java.util.Properties;
/* renamed from: com.kingroot.kinguser.np */
/* loaded from: classes.dex */
public class C3358np extends AbstractC3346nh {

    /* renamed from: xr */
    private final String f3206xr;

    /* renamed from: xs */
    private final Properties f3207xs;

    /* renamed from: g */
    public static C3358np m2830g(String str, boolean z) {
        Properties t;
        if (!z) {
            t = m2881s(str, "ps");
        } else {
            t = m2880t(str, "ps");
        }
        return new C3358np(str, t);
    }

    public C3358np(String str, Properties properties) {
        this.f3206xr = str;
        this.f3207xs = properties;
    }

    public String getProperty(String str) {
        String property;
        synchronized (this.f3207xs) {
            property = this.f3207xs.getProperty(str);
            if (property == null) {
            }
            if (property == null) {
                property = "";
            }
        }
        return property;
    }

    public void setProperty(String str, String str2) {
        synchronized (this.f3207xs) {
            this.f3207xs.setProperty(str, str2);
        }
    }

    /* renamed from: fm */
    public void m2831fm() {
        synchronized (this.f3207xs) {
            m2882a(this.f3206xr, this.f3207xs, "ps");
        }
    }
}
