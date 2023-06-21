package oicq.wlogin_sdk.p027b;

import java.nio.ByteBuffer;
/* renamed from: oicq.wlogin_sdk.b.cp */
/* loaded from: classes.dex */
public class C4275cp extends C4232b {

    /* renamed from: a */
    public static boolean f5069a = true;

    /* renamed from: i */
    public static int f5070i = 1000;

    /* renamed from: j */
    public static byte[] f5071j = new byte[0];

    public C4275cp() {
        this.f5028h = 1288;
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        try {
            try {
                ByteBuffer wrap = ByteBuffer.wrap(this.f5027g);
                wrap.position(this.f5025e);
                f5069a = wrap.get() == 1;
                f5070i = wrap.getInt();
                f5071j = new byte[wrap.getShort()];
                wrap.get(f5071j);
                if (f5070i == 0) {
                    f5070i = 1000;
                }
                if (f5071j == null) {
                    f5071j = new byte[0];
                }
                return true;
            } catch (Exception e) {
                if (f5070i == 0) {
                    f5070i = 1000;
                }
                if (f5071j == null) {
                    f5071j = new byte[0];
                    return false;
                }
                return false;
            }
        } catch (Throwable th) {
            if (f5070i == 0) {
                f5070i = 1000;
            }
            if (f5071j == null) {
                f5071j = new byte[0];
            }
            throw th;
        }
    }
}
