package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.fc */
/* loaded from: classes.dex */
public class C3051fc {
    /* renamed from: af */
    public static String m3867af() {
        C3057fi m3863Z = C3053fe.m3863Z("cat /proc/version");
        if (m3863Z == null || !m3863Z.m3849ah()) {
            return "";
        }
        return m3863Z.f2668ah.trim();
    }
}
