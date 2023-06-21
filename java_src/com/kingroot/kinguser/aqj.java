package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.net.clcmd.CloudGuideEntity;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class aqj extends aql {
    private CloudGuideEntity aLi;
    private Drawable aLj;
    private String aLh = "";
    private AtomicBoolean aLk = new AtomicBoolean(false);

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MG */
    protected boolean mo9578MG() {
        return false;
    }

    /* renamed from: a */
    public static aqj m9585a(CloudGuideEntity cloudGuideEntity) {
        aqj aqjVar = new aqj();
        aqjVar.aLh = "" + cloudGuideEntity.taskID + cloudGuideEntity.seqNo;
        aqjVar.aLj = acs.m12658a(apv.m9735LO().m9718ic(cloudGuideEntity.picDownloadUrl), KApplication.m13453ge());
        aqjVar.aLi = cloudGuideEntity;
        return aqjVar;
    }

    private aqj() {
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: ME */
    public String mo9580ME() {
        return this.aLi.title;
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MF */
    public String mo9579MF() {
        return this.aLi.subTitle;
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MH */
    protected boolean mo9577MH() {
        return true;
    }

    @Override // com.kingroot.kinguser.aqh
    public void ignore() {
        super.ignore();
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: vs */
    public boolean mo9575vs() {
        return true;
    }

    @Override // com.kingroot.kinguser.aqh
    public Drawable getIconDrawable() {
        return null;
    }

    @Override // com.kingroot.kinguser.aql
    @NonNull
    /* renamed from: MM */
    protected String mo9583MM() {
        return this.aLh;
    }

    @Override // com.kingroot.kinguser.aqh
    public int getPriority() {
        return 0;
    }

    @Override // com.kingroot.kinguser.aql
    /* renamed from: MN */
    public int mo9582MN() {
        return 1;
    }

    /* renamed from: MO */
    public Drawable m9588MO() {
        return this.aLj;
    }

    @Override // com.kingroot.kinguser.aql, com.kingroot.kinguser.aqh, com.kingroot.kinguser.aqb
    public String getKey() {
        return this.aLh;
    }

    /* renamed from: MP */
    public void m9587MP() {
        CloudGuideEntity.m2898b(this.aLi);
    }

    /* renamed from: MQ */
    public void m9586MQ() {
        if (!this.aLk.getAndSet(true)) {
            avd.m8853Rq().mo8848g(this.aLi);
        }
    }
}
