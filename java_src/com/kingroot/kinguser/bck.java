package com.kingroot.kinguser;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.widget.TextView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bck extends AbstractC3446py {
    private View baP;

    public bck(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.AbstractC3449qa
    /* renamed from: gy */
    protected View mo2612gy() {
        this.baP = m2613aA(R.layout.root_check_bottom);
        ((TextView) this.baP.findViewById(R.id.phone_brand_text)).setText(getString(R.string.kr4_brand) + bce.m7711Xk());
        ((TextView) this.baP.findViewById(R.id.android_version)).setText(getString(R.string.kr4_Android) + Build.VERSION.RELEASE);
        return this.baP;
    }
}
