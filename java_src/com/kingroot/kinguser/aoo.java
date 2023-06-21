package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import com.kingroot.kinguser.distribution.examination.entity.ExamRecommendAppInfo;
import com.kingroot.kinguser.distribution.examination.net.ReqAppCallback;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aoo extends aol {
    private static final String TAG = aiq.arY + "_ExaminationAppDistEngine";
    private static final cce<aoo> aGq = new cce<aoo>() { // from class: com.kingroot.kinguser.aoo.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Kp */
        public aoo create() {
            return new aoo();
        }
    };

    private aoo() {
        m9915b((ReqAppCallback) null);
    }

    /* renamed from: Ko */
    public static aoo m9907Ko() {
        return aGq.get();
    }

    @Override // com.kingroot.kinguser.aol
    /* renamed from: Ke */
    protected String mo9752Ke() {
        return aii.m11642xL().m11641xM() ? "5010011" : "5010012";
    }

    @Override // com.kingroot.kinguser.aol
    /* renamed from: Kf */
    protected String mo9751Kf() {
        return "examination_app_dist";
    }

    @Override // com.kingroot.kinguser.aol
    protected String getFileName() {
        return "examination_app_dist_info";
    }

    @Override // com.kingroot.kinguser.aol, com.kingroot.kinguser.aor
    @NonNull
    /* renamed from: JX */
    public List<ExamRecommendAppInfo> mo9844JX() {
        return super.mo9844JX();
    }
}
