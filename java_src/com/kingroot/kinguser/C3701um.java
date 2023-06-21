package com.kingroot.kinguser;

import android.text.TextUtils;
/* renamed from: com.kingroot.kinguser.um */
/* loaded from: classes.dex */
public class C3701um {

    /* renamed from: IG */
    String f3633IG;

    /* renamed from: IH */
    String f3634IH;

    /* renamed from: II */
    String f3635II;

    /* renamed from: IJ */
    String f3636IJ;

    /* renamed from: IK */
    String f3637IK = "(ILjava/lang/String;)Ljava/lang/Object;";

    /* renamed from: IL */
    String f3638IL;

    /* renamed from: IM */
    String f3639IM;

    /* renamed from: IN */
    String f3640IN;
    String pkgName;
    String version;

    public C3701um(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        this.f3636IJ = "xx";
        this.f3638IL = "/data";
        this.f3639IM = "hello";
        this.f3633IG = str;
        this.f3634IH = str2;
        this.f3635II = str3;
        if (!TextUtils.isEmpty(str6)) {
            this.f3638IL = str6;
        }
        if (!TextUtils.isEmpty(str4)) {
            this.f3636IJ = str4;
        }
        if (!TextUtils.isEmpty(str5)) {
            this.f3639IM = str5;
        }
        if (!TextUtils.isEmpty(str7)) {
            this.pkgName = str7;
        }
        if (!TextUtils.isEmpty(str8)) {
            this.version = str8;
        }
        if (!TextUtils.isEmpty(str9)) {
            this.f3640IN = str9;
        }
    }

    public boolean isValid() {
        return (TextUtils.isEmpty(this.f3633IG) || TextUtils.isEmpty(this.f3634IH) || TextUtils.isEmpty(this.f3635II) || TextUtils.isEmpty(this.f3636IJ) || TextUtils.isEmpty(this.f3637IK) || TextUtils.isEmpty(this.f3639IM)) ? false : true;
    }
}
