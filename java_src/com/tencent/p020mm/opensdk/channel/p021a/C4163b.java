package com.tencent.p020mm.opensdk.channel.p021a;

import com.tencent.p020mm.opensdk.utils.C4174b;
/* renamed from: com.tencent.mm.opensdk.channel.a.b */
/* loaded from: classes.dex */
public final class C4163b {
    /* renamed from: a */
    public static byte[] m509a(String str, int i, String str2) {
        StringBuffer stringBuffer = new StringBuffer();
        if (str != null) {
            stringBuffer.append(str);
        }
        stringBuffer.append(i);
        stringBuffer.append(str2);
        stringBuffer.append("mMcShCsTr");
        return C4174b.m489c(stringBuffer.toString().substring(1, 9).getBytes()).getBytes();
    }
}
