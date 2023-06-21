package com.kingroot.kinguser;

import android.content.Context;
import com.king.uranus.C0389ac;
import com.kingroot.kinguser.HandlerC3243kg;
import java.util.List;
/* renamed from: com.kingroot.kinguser.kc */
/* loaded from: classes.dex */
public abstract class AbstractC3238kc {
    private Context mContext;

    /* renamed from: tF */
    private HandlerC3243kg f2935tF;

    /* renamed from: tG */
    private RunnableC3305mg f2936tG = new C3240kd(this);

    /* renamed from: tE */
    private String f2934tE = C3183ih.m3497bW().m3552bG();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract void mo3307a(C3242kf c3242kf);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public abstract void mo3305b(C3242kf c3242kf);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: cE */
    public abstract List<C0389ac> mo3302cE();

    public AbstractC3238kc(Context context) {
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Context getContext() {
        return this.mContext;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: cT */
    public String m3301cT() {
        return this.f2934tE;
    }

    /* renamed from: cC */
    public void mo3303cC() {
        this.f2936tG.m3080n(true);
    }

    /* renamed from: com.kingroot.kinguser.kc$a */
    /* loaded from: classes.dex */
    static class C3239a implements HandlerC3243kg.InterfaceC3245b {

        /* renamed from: cS */
        private String f2937cS;
        private String url;

        public C3239a(String str, String str2) {
            this.f2937cS = str;
            this.url = str2;
        }

        @Override // com.kingroot.kinguser.HandlerC3243kg.InterfaceC3245b
        public String getLocalName() {
            return this.f2937cS;
        }

        @Override // com.kingroot.kinguser.HandlerC3243kg.InterfaceC3245b
        public String getUrl() {
            return this.url;
        }
    }
}
