package com.kingroot.kinguser;

import android.content.Context;
import com.king.uranus.C0389ac;
import com.kingroot.kinguser.AbstractC3238kc;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.kd */
/* loaded from: classes.dex */
public class C3240kd extends RunnableC3305mg {

    /* renamed from: tH */
    final /* synthetic */ AbstractC3238kc f2938tH;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3240kd(AbstractC3238kc abstractC3238kc) {
        this.f2938tH = abstractC3238kc;
    }

    @Override // com.kingroot.kinguser.RunnableC3305mg, java.lang.Runnable
    public void run() {
        HandlerC3243kg handlerC3243kg;
        HandlerC3243kg handlerC3243kg2;
        Context context;
        String str;
        List<C0389ac> mo3302cE = this.f2938tH.mo3302cE();
        if (mo3302cE != null && mo3302cE.size() > 0) {
            handlerC3243kg = this.f2938tH.f2935tF;
            if (handlerC3243kg == null) {
                C3241ke c3241ke = new C3241ke(this);
                AbstractC3238kc abstractC3238kc = this.f2938tH;
                context = this.f2938tH.mContext;
                str = this.f2938tH.f2934tE;
                abstractC3238kc.f2935tF = new HandlerC3243kg(context, str, c3241ke);
            }
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= mo3302cE.size()) {
                    handlerC3243kg2 = this.f2938tH.f2935tF;
                    handlerC3243kg2.m3297n(arrayList);
                    return;
                }
                arrayList.add(new AbstractC3238kc.C3239a(mo3302cE.get(i2).f226cS, mo3302cE.get(i2).url));
                i = i2 + 1;
            }
        }
    }
}
