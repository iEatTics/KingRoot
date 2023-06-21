package com.kingroot.kinguser;

import android.content.Context;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kingcom.module.network.shark.conch.entity.SplashScreenEntity;
/* renamed from: com.kingroot.kinguser.ou */
/* loaded from: classes.dex */
public class C3393ou implements InterfaceC3442pu {

    /* renamed from: ym */
    private InterfaceC3443pv f3258ym;

    /* renamed from: yo */
    private cbe f3259yo;

    public C3393ou(@NonNull InterfaceC3443pv interfaceC3443pv, @NonNull cbe cbeVar) {
        this.f3258ym = null;
        this.f3259yo = null;
        this.f3258ym = interfaceC3443pv;
        this.f3259yo = cbeVar;
    }

    @Override // com.kingroot.kinguser.InterfaceC3442pu
    /* renamed from: a */
    public void mo2619a(@NonNull C3871x c3871x, int i, int i2, int i3, JceStruct jceStruct) {
        if (c3871x != null && (jceStruct instanceof C3683u)) {
            C3683u c3683u = (C3683u) jceStruct;
            JceInputStream jceInputStream = new JceInputStream(c3683u.f3609gn);
            jceInputStream.setServerEncoding("UTF-8");
            m2684a(bzu.m5098ge(), c3871x, c3683u, jceInputStream, new ArrayList());
        }
    }

    /* renamed from: a */
    private void m2684a(Context context, C3871x c3871x, C3683u c3683u, JceInputStream jceInputStream, List<String> list) {
        C0648ac c0648ac = new C0648ac();
        c0648ac.readFrom(jceInputStream);
        if (c0648ac.f1384gK != null && !c0648ac.f1384gK.isEmpty()) {
            Iterator<String> it = c0648ac.f1384gK.iterator();
            while (it.hasNext()) {
                list.add(it.next());
            }
            m2683a(context, c3871x, c3683u, list);
        }
    }

    /* renamed from: a */
    private void m2683a(Context context, C3871x c3871x, C3683u c3683u, List<String> list) {
        SplashScreenEntity splashScreenEntity;
        C3498r c3498r = new C3498r();
        c3498r.f3460ge = new ArrayList<>();
        switch (c3683u.f3608gh) {
            case 17:
                C3441pt c3441pt = new C3441pt();
                c3441pt.url = list.get(0);
                c3441pt.f3339zd = Integer.valueOf(list.get(1)).intValue();
                c3441pt.f3337mf = list.get(2);
                c3441pt.f3340ze = list.get(3);
                c3441pt.f3338pi = list.get(4);
                c3441pt.fileName = list.get(5);
                c3441pt.f3341zf = Integer.valueOf(list.get(6)).intValue();
                c3441pt.f3342zg = Integer.valueOf(list.get(7)).intValue();
                C3421pi.m2647a(c3871x, c3683u, c3441pt, this.f3258ym, this.f3259yo);
                return;
            case 19:
                if (this.f3259yo != null) {
                    c3498r.f3460ge.add(cba.m5025a(c3871x.f3936gt, c3871x.f3937gu, 0, c3683u.conchSeqno, c3683u.f3608gh, 3, 0, this.f3259yo.mo5011jQ(list.get(0))));
                    cay.akw().m5029a(c3498r, null);
                    return;
                }
                return;
            case 21:
                if (this.f3259yo != null) {
                    c3498r.f3460ge.add(cba.m5025a(c3871x.f3936gt, c3871x.f3937gu, 0, c3683u.conchSeqno, c3683u.f3608gh, 3, 0, this.f3259yo.mo5010jR(list.get(0))));
                    cay.akw().m5029a(c3498r, null);
                    return;
                }
                return;
            case 785:
                int i = 1;
                try {
                    SplashScreenEntity splashScreenEntity2 = new SplashScreenEntity();
                    splashScreenEntity2.language = Integer.valueOf(list.get(0)).intValue();
                    splashScreenEntity2.beginTime = Long.valueOf(list.get(1)).longValue();
                    splashScreenEntity2.endTime = Long.valueOf(list.get(2)).longValue();
                    splashScreenEntity2.picDownloadUrl = String.valueOf(list.get(3));
                    splashScreenEntity2.clickJumpUrl = String.valueOf(list.get(4));
                    splashScreenEntity2.showDuration = Integer.valueOf(list.get(5)).intValue();
                    splashScreenEntity2.timeInterval = Integer.valueOf(TextUtils.isEmpty(list.get(6)) ? "0" : list.get(6)).intValue();
                    splashScreenEntity2.priority = Integer.valueOf(list.get(7)).intValue();
                    splashScreenEntity2.extrasParam = String.valueOf(list.get(8));
                    splashScreenEntity2.expirationTime = c3683u.f3610go.f1439ga;
                    splashScreenEntity2.taskID = c3871x.f3936gt;
                    splashScreenEntity2.conchSeqno = c3683u.conchSeqno;
                    splashScreenEntity = splashScreenEntity2;
                } catch (Throwable th) {
                    i = 3;
                    splashScreenEntity = null;
                }
                this.f3259yo.mo5018a(splashScreenEntity);
                c3498r.f3460ge.add(cba.m5025a(c3871x.f3936gt, c3871x.f3937gu, 0, c3683u.conchSeqno, c3683u.f3608gh, 3, 0, i));
                cay.akw().m5029a(c3498r, null);
                return;
            case 1579:
                C0625ab c0625ab = new C0625ab();
                c0625ab.f1299gH = Integer.valueOf(list.get(0)).intValue();
                c0625ab.f1300gI = Integer.valueOf(list.get(1)).intValue();
                c0625ab.f1301gJ = list.get(2);
                c3498r.f3460ge.add(cba.m5025a(c3871x.f3936gt, c3871x.f3937gu, 0, c3683u.conchSeqno, c3683u.f3608gh, 3, 0, this.f3259yo.m5019a(c0625ab)));
                cay.akw().m5029a(c3498r, null);
                return;
            case 1606:
                C0708ad c0708ad = new C0708ad();
                c0708ad.f1388gM = list.get(0);
                c0708ad.type = Integer.valueOf(list.get(1)).intValue();
                c0708ad.content = list.get(2);
                c0708ad.f1389gN = Integer.valueOf(list.get(3)).intValue();
                c0708ad.f1390gO = list.get(4);
                C3421pi.m2648a(context, c3871x, c3683u, c0708ad, this.f3258ym, this.f3259yo);
                return;
            default:
                return;
        }
    }
}
