package com.kingroot.kinguser;

import android.content.Context;
import java.io.File;
import java.util.Properties;
/* renamed from: com.kingroot.kinguser.zu */
/* loaded from: classes.dex */
public class C3978zu extends AbstractC3970zp {

    /* renamed from: GA */
    private Properties f4106GA;

    /* renamed from: WV */
    private String f4107WV;
    private Context mContext = bzt.m5101ge();

    public C3978zu(String str, boolean z) {
        this.f4107WV = str;
        if (!z) {
            String str2 = this.mContext.getFilesDir() + File.separator + this.f4107WV;
            if (new File(str2).exists()) {
                this.f4106GA = m1268dC(str2);
                return;
            } else {
                this.f4106GA = new Properties();
                return;
            }
        }
        this.f4106GA = m1267dD(this.f4107WV);
    }

    public String getProperty(String str) {
        String property;
        synchronized (this.f4106GA) {
            property = this.f4106GA.getProperty(str);
            if (property == null) {
            }
            if (property == null) {
                property = "";
            }
        }
        return property;
    }

    public void setProperty(String str, String str2) {
        synchronized (this.f4106GA) {
            this.f4106GA.setProperty(str, str2);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3970zp
    /* renamed from: pB */
    protected String mo1232pB() {
        return C3974zr.m1262pD();
    }

    /* renamed from: pF */
    public void m1241pF() {
        String str = this.mContext.getFilesDir() + File.separator + this.f4107WV;
        synchronized (this.f4106GA) {
            m1269a(str, this.f4106GA);
        }
    }
}
