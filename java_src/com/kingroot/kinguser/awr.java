package com.kingroot.kinguser;

import com.kingroot.kinguser.net.clcmd.CloudGuideEntity;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class awr implements cbh {
    private static final String TAG = aiq.arV + "_ExternalConchExecutor";

    @Override // com.kingroot.kinguser.InterfaceC3442pu
    /* renamed from: a */
    public void mo2619a(C3871x c3871x, int i, int i2, int i3, JceStruct jceStruct) {
        cay.akw().m5028a(c3871x, i, jceStruct, new cbf() { // from class: com.kingroot.kinguser.awr.1
            @Override // com.kingroot.kinguser.cbf
            /* renamed from: b */
            public void mo5009b(long j, long j2, C3683u c3683u, List<String> list) {
                C3498r c3498r = new C3498r();
                c3498r.f3460ge = new ArrayList<>();
                switch (c3683u.f3608gh) {
                    case 20:
                        C2996dk c2996dk = new C2996dk();
                        c2996dk.f2459gH = Integer.valueOf(list.get(0)).intValue();
                        c2996dk.f2460no = Byte.valueOf(list.get(1)).byteValue();
                        c3498r.f3460ge.add(awq.m8613a(j, j2, c3683u, c2996dk));
                        cay.akw().m5029a(c3498r, null);
                        return;
                    case C3298m.f3081fL /* 53 */:
                        avh.m8843Ru().m8842a(j, list);
                        c3498r.f3460ge.add(cba.m5025a(j, j2, 0, c3683u.conchSeqno, c3683u.f3608gh, 3, 0, 1));
                        cay.akw().m5029a(c3498r, null);
                        return;
                    case 532:
                        int i4 = 1;
                        try {
                            avd.m8853Rq().mo8849f(CloudGuideEntity.m2899a(j, c3683u.conchSeqno, list));
                        } catch (Exception e) {
                            i4 = 3;
                        }
                        c3498r.f3460ge.add(cba.m5025a(j, j2, 0, c3683u.conchSeqno, c3683u.f3608gh, 3, 0, i4));
                        cay.akw().m5029a(c3498r, null);
                        return;
                    case 1589:
                        awj.m8642bF(list);
                        c3498r.f3460ge.add(cba.m5025a(j, j2, 0, c3683u.conchSeqno, c3683u.f3608gh, 3, 0, 1));
                        cay.akw().m5029a(c3498r, null);
                        return;
                    default:
                        return;
                }
            }
        });
    }
}
