package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.tencent.feedback.eup.CrashReport;
import java.util.List;
/* loaded from: classes.dex */
public class alx implements amv {
    private static final cce<alx> sInstance = new cce<alx>() { // from class: com.kingroot.kinguser.alx.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: HF */
        public alx create() {
            return new alx();
        }
    };
    private amv azc;

    /* renamed from: HB */
    public static alx m10508HB() {
        return sInstance.get();
    }

    private alx() {
        this.azc = (amv) C3729uv.m1971kM().m1973a(aly.m10506HG(), amv.class);
    }

    @Override // com.kingroot.kinguser.amv
    @NonNull
    /* renamed from: fj */
    public List<AppBaseModel> mo10403fj(int i) {
        return this.azc.mo10403fj(i);
    }

    @Override // com.kingroot.kinguser.amv
    /* renamed from: HC */
    public void mo10408HC() {
        this.azc.mo10408HC();
    }

    @Override // com.kingroot.kinguser.amv
    /* renamed from: fk */
    public int mo10402fk(int i) {
        return this.azc.mo10402fk(i);
    }

    @Override // com.kingroot.kinguser.amv
    /* renamed from: ax */
    public void mo10405ax(List<AppDownLoadModel> list) {
        this.azc.mo10405ax(list);
    }

    @Override // com.kingroot.kinguser.amv
    /* renamed from: HD */
    public Integer mo10407HD() {
        Integer num;
        try {
            num = this.azc.mo10407HD();
        } catch (Throwable th) {
            CrashReport.handleCatchException(new Thread(), th, "getWhatTypeReadyShow crash " + th.getMessage(), null);
            num = null;
        }
        if (num == null) {
            return 0;
        }
        return num;
    }

    @Override // com.kingroot.kinguser.amv
    /* renamed from: fl */
    public void mo10401fl(int i) {
        this.azc.mo10401fl(i);
    }

    @Override // com.kingroot.kinguser.amv
    /* renamed from: cy */
    public void mo10404cy(boolean z) {
        this.azc.mo10404cy(z);
    }

    @Override // com.kingroot.kinguser.amv
    /* renamed from: fm */
    public void mo10400fm(int i) {
        this.azc.mo10400fm(i);
    }

    @Override // com.kingroot.kinguser.amv
    /* renamed from: HE */
    public void mo10406HE() {
        this.azc.mo10406HE();
    }
}
