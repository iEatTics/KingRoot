package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.C3948zd;
import com.kingroot.kinguser.axi;
import com.kingroot.kinguser.distribution.examination.entity.ExamRecommendAppInfo;
import java.io.Serializable;
/* loaded from: classes.dex */
public class ExaminationRecommendAppActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        Intent intent = getIntent();
        if (intent != null) {
            return new axi(this, (ExamRecommendAppInfo) intent.getParcelableExtra("extra_app_info"), intent.getStringExtra("extra_from_sence"));
        }
        finish();
        return null;
    }

    /* renamed from: a */
    public static void m12620a(Context context, @NonNull ExamRecommendAppInfo examRecommendAppInfo, @NonNull String str) {
        C3948zd.m1327k(examRecommendAppInfo);
        C3948zd.m1327k(context);
        Intent intent = new Intent(context, ExaminationRecommendAppActivity.class);
        intent.putExtra("extra_app_info", (Serializable) examRecommendAppInfo);
        intent.putExtra("extra_from_sence", str);
        context.startActivity(intent);
    }
}
