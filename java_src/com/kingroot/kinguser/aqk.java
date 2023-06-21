package com.kingroot.kinguser;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.activitys.ExaminationRecommendAppActivity;
import com.kingroot.kinguser.distribution.examination.entity.ExamRecommendAppInfo;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class aqk extends aql {
    private final ExamRecommendAppInfo aLl;
    private final Map<String, Bitmap> aLm = new HashMap();
    private boolean aLn = false;

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MG */
    protected boolean mo9578MG() {
        return C3952zh.m1312pq().m1314du(this.aLl.pkgName);
    }

    public aqk(@NonNull ExamRecommendAppInfo examRecommendAppInfo, @NonNull Map<String, Bitmap> map) {
        C3948zd.m1327k(examRecommendAppInfo);
        this.aLl = examRecommendAppInfo;
        this.aLm.putAll(map);
    }

    /* renamed from: KM */
    public String m9584KM() {
        return this.aLl.pkgName;
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: ME */
    public String mo9580ME() {
        return this.aLl.mainTitle;
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MF */
    public String mo9579MF() {
        return this.aLl.describe;
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: MH */
    protected boolean mo9577MH() {
        Activity m12026vt = aft.m12026vt();
        if (m12026vt != null) {
            ExaminationRecommendAppActivity.m12620a(m12026vt, this.aLl, "Optimi");
            return true;
        }
        return true;
    }

    @Override // com.kingroot.kinguser.aqh
    public void ignore() {
        super.ignore();
        if (!this.aLn) {
            this.aLn = true;
        }
        aop.m9905Kq().m9904hH(this.aLl.pkgName);
    }

    @Override // com.kingroot.kinguser.aqh
    /* renamed from: vs */
    public boolean mo9575vs() {
        if (this.aLn) {
            return false;
        }
        return this.aLl.m4105Km();
    }

    @Override // com.kingroot.kinguser.aqh
    public Drawable getIconDrawable() {
        Bitmap bitmap = this.aLm.get(this.aLl.iconUrl);
        if (bitmap == null || bitmap.isRecycled()) {
            return null;
        }
        return new BitmapDrawable(C3953zi.m1311pr(), bitmap);
    }

    @Override // com.kingroot.kinguser.aql
    @NonNull
    /* renamed from: MM */
    protected String mo9583MM() {
        return this.aLl.pkgName;
    }

    @Override // com.kingroot.kinguser.aqh
    public int getPriority() {
        return 151;
    }

    @Override // com.kingroot.kinguser.aql
    /* renamed from: MN */
    public int mo9582MN() {
        return this.aLl.position;
    }
}
