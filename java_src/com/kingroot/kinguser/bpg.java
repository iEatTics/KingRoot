package com.kingroot.kinguser;
/* loaded from: classes.dex */
public final class bpg {
    private static EnumC2551a[] bGy = {EnumC2551a.Type_CDN_Ip_App_Input, EnumC2551a.Type_CDN_Domain, EnumC2551a.Type_CDN_Ip_Socket_Schedule, EnumC2551a.Type_CDN_Ip_Http_Header, EnumC2551a.Type_CDN_Ip_Socket_Schedule_Https, EnumC2551a.Type_CDN_Ip_Jumped, EnumC2551a.Type_Src_Ip_App_Input, EnumC2551a.Type_Src_Ip_Jumped, EnumC2551a.Type_Src_Domain};
    private static EnumC2551a[] bGz = {EnumC2551a.Type_CDN_Ip_Socket_Schedule, EnumC2551a.Type_CDN_Ip_App_Input, EnumC2551a.Type_CDN_Ip_Http_Header, EnumC2551a.Type_CDN_Ip_Jumped, EnumC2551a.Type_CDN_Ip_Socket_Schedule_Https, EnumC2551a.Type_CDN_Domain, EnumC2551a.Type_Src_Ip_App_Input, EnumC2551a.Type_Src_Ip_Jumped, EnumC2551a.Type_Src_Domain};

    /* renamed from: a */
    public String f1920a;
    public EnumC2551a bGA;

    /* renamed from: c */
    public int f1921c = 0;

    /* renamed from: com.kingroot.kinguser.bpg$a */
    /* loaded from: classes.dex */
    public enum EnumC2551a {
        Type_Outer,
        Type_CDN_Domain,
        Type_CDN_Ip_App_Input,
        Type_CDN_Ip_Jumped,
        Type_CDN_Ip_Http_Header,
        Type_CDN_Ip_Socket_Schedule,
        Type_Src_Domain,
        Type_Src_Ip_App_Input,
        Type_Src_Ip_Jumped,
        Type_CDN_Ip_Socket_Schedule_Https
    }

    public bpg(String str, EnumC2551a enumC2551a) {
        this.f1920a = str;
        this.bGA = enumC2551a;
        if (enumC2551a == EnumC2551a.Type_CDN_Ip_Http_Header || enumC2551a == EnumC2551a.Type_CDN_Ip_Socket_Schedule || enumC2551a == EnumC2551a.Type_CDN_Ip_Socket_Schedule_Https) {
        }
    }

    /* renamed from: a */
    public static EnumC2551a m5979a(EnumC2551a enumC2551a, boolean z) {
        EnumC2551a[] enumC2551aArr = z ? bGy : bGz;
        EnumC2551a enumC2551a2 = enumC2551aArr[0];
        if (enumC2551a != null) {
            for (int i = 0; i < enumC2551aArr.length; i++) {
                if (enumC2551a == enumC2551aArr[i] && i != enumC2551aArr.length - 1) {
                    return enumC2551aArr[i + 1];
                }
            }
        }
        return enumC2551a2;
    }

    /* renamed from: a */
    public static boolean m5980a(EnumC2551a enumC2551a) {
        return enumC2551a == EnumC2551a.Type_CDN_Ip_App_Input || enumC2551a == EnumC2551a.Type_CDN_Ip_Jumped || enumC2551a == EnumC2551a.Type_CDN_Ip_Http_Header || enumC2551a == EnumC2551a.Type_CDN_Ip_Socket_Schedule || enumC2551a == EnumC2551a.Type_Src_Ip_App_Input || enumC2551a == EnumC2551a.Type_Src_Ip_Jumped || enumC2551a == EnumC2551a.Type_CDN_Ip_Socket_Schedule_Https;
    }

    /* renamed from: b */
    public static boolean m5978b(EnumC2551a enumC2551a) {
        return enumC2551a == EnumC2551a.Type_CDN_Ip_App_Input || enumC2551a == EnumC2551a.Type_CDN_Ip_Http_Header || enumC2551a == EnumC2551a.Type_CDN_Ip_Socket_Schedule || enumC2551a == EnumC2551a.Type_Src_Ip_App_Input || enumC2551a == EnumC2551a.Type_CDN_Ip_Socket_Schedule_Https;
    }

    /* renamed from: a */
    public final void m5981a(int i) {
        this.f1921c = i;
    }

    public final String toString() {
        boolean z = false;
        return this.f1921c + ":" + this.bGA.ordinal() + ":" + bok.m6072J(this.f1920a, (this.bGA == EnumC2551a.Type_CDN_Ip_Http_Header || this.bGA == EnumC2551a.Type_CDN_Ip_Socket_Schedule || this.bGA == EnumC2551a.Type_CDN_Ip_Socket_Schedule_Https || this.bGA == EnumC2551a.Type_CDN_Ip_App_Input || this.bGA == EnumC2551a.Type_Src_Ip_App_Input) ? true : true);
    }
}
