package oicq.wlogin_sdk.p027b;

import java.nio.ByteBuffer;
import java.util.List;
import oicq.wlogin_sdk.request.WtloginHelper;
/* renamed from: oicq.wlogin_sdk.b.cq */
/* loaded from: classes.dex */
public class C4276cq extends C4232b {
    public C4276cq() {
        this.f5028h = 1297;
    }

    /* renamed from: a */
    public byte[] m262a(List<String> list) {
        byte b;
        ByteBuffer allocate = ByteBuffer.allocate(1024);
        allocate.putShort((short) list.size());
        for (String str : list) {
            if (str != null && str.length() != 0) {
                int indexOf = str.indexOf(40);
                int indexOf2 = str.indexOf(41);
                if (indexOf != 0 || indexOf2 <= 0) {
                    b = 1;
                } else {
                    int intValue = Integer.valueOf(str.substring(indexOf + 1, indexOf2)).intValue();
                    boolean z = (1048576 & intValue) > 0;
                    boolean z2 = (intValue & WtloginHelper.SigType.WLOGIN_PT4Token) > 0;
                    b = z ? (byte) 1 : (byte) 0;
                    if (z2) {
                        b = (byte) (b | 2);
                    }
                    str = str.substring(indexOf2 + 1);
                }
                allocate.put(b);
                allocate.putShort((short) str.length());
                allocate.put(str.getBytes());
            }
        }
        m321b(this.f5028h);
        m317c(allocate.array(), allocate.position());
        m313e();
        return m322b();
    }
}
