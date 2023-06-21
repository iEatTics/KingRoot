package com.kingroot.kinguser;

import android.content.Context;
import android.os.Environment;
import com.kingroot.common.app.KApplication;
import java.io.File;
import java.lang.ref.SoftReference;
import java.util.Properties;
/* renamed from: com.kingroot.kinguser.zy */
/* loaded from: classes.dex */
public class C3984zy extends AbstractC3970zp implements InterfaceC3985zz {

    /* renamed from: Xb */
    private static SoftReference<C3984zy> f4110Xb;

    /* renamed from: GA */
    private Properties f4111GA;

    /* renamed from: WY */
    private String f4113WY;

    /* renamed from: WZ */
    private byte[] f4114WZ = new byte[0];

    /* renamed from: Xa */
    private final String f4115Xa = Environment.getExternalStorageDirectory() + File.separator + C3636tj.getPackageName();
    private Context mContext = bzt.m5101ge();

    /* renamed from: WX */
    private String f4112WX = this.mContext.getFilesDir() + File.separator + getFileName();

    private C3984zy() {
        if (C3565ru.m2319iZ()) {
            File file = new File(this.f4115Xa);
            if (!file.exists()) {
                file.mkdirs();
            }
            this.f4113WY = this.f4115Xa + File.separator + getFileName();
        }
        if (new File(this.f4112WX).exists()) {
            this.f4111GA = m1268dC(this.f4112WX);
            if (this.f4113WY != null && !new File(this.f4113WY).exists()) {
                m1269a(this.f4113WY, this.f4111GA);
            }
        } else if (this.f4113WY != null && new File(this.f4113WY).exists()) {
            this.f4111GA = m1268dC(this.f4113WY);
            m1269a(this.f4112WX, this.f4111GA);
        }
        if (this.f4111GA == null) {
            this.f4111GA = new Properties();
        }
    }

    /* renamed from: pI */
    public static C3984zy m1231pI() {
        C3984zy c3984zy;
        if (f4110Xb == null || (c3984zy = f4110Xb.get()) == null) {
            synchronized (C3984zy.class) {
                if (f4110Xb == null || (c3984zy = f4110Xb.get()) == null) {
                    c3984zy = new C3984zy();
                    f4110Xb = new SoftReference<>(c3984zy);
                }
            }
        }
        return c3984zy;
    }

    private String getFileName() {
        try {
            return KApplication.m13426is() ? "e_config_test" : "e_config";
        } catch (Throwable th) {
            return "e_config";
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3985zz
    public String getProperty(String str) {
        String property;
        synchronized (this.f4114WZ) {
            property = this.f4111GA.getProperty(str);
            if (property == null) {
            }
            if (property == null) {
                property = "";
            }
        }
        return property;
    }

    @Override // com.kingroot.kinguser.InterfaceC3985zz
    public void setProperty(String str, String str2) {
        synchronized (this.f4114WZ) {
            this.f4111GA.setProperty(str, str2);
            m1269a(this.f4112WX, this.f4111GA);
            if (this.f4113WY == null && C3565ru.m2319iZ()) {
                File file = new File(this.f4115Xa);
                if (!file.exists()) {
                    file.mkdirs();
                }
                this.f4113WY = this.f4115Xa + File.separator + getFileName();
            }
            if (this.f4113WY != null) {
                m1269a(this.f4113WY, this.f4111GA);
            }
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3970zp
    /* renamed from: pB */
    protected String mo1232pB() {
        return C3974zr.m1262pD();
    }
}
