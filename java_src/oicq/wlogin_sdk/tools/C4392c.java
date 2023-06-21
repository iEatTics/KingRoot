package oicq.wlogin_sdk.tools;

import java.util.Map;
import oicq.wlogin_sdk.p027b.C4232b;
/* renamed from: oicq.wlogin_sdk.tools.c */
/* loaded from: classes.dex */
public class C4392c {
    /* renamed from: a */
    public static int m25a(int i, byte[] bArr, int i2, int i3, Map<Integer, C4232b> map) {
        if (bArr.length != i2 + i3) {
            return -1;
        }
        for (int i4 = 0; i4 < i && i3 > 0; i4++) {
            int buf_to_int8 = C4393util.buf_to_int8(bArr, i2);
            int i5 = i2 + 1;
            int buf_to_int82 = C4393util.buf_to_int8(bArr, i5);
            int i6 = i5 + 1;
            int i7 = (i3 - 1) - 1;
            if (i7 < buf_to_int82) {
                return -2;
            }
            C4232b c4232b = new C4232b(buf_to_int8);
            c4232b.m326a(bArr, i6, buf_to_int82);
            map.put(new Integer(buf_to_int8), c4232b);
            i2 = i6 + buf_to_int82;
            i3 = i7 - buf_to_int82;
        }
        return 0;
    }
}
