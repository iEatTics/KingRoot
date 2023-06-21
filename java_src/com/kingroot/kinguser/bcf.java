package com.kingroot.kinguser;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public abstract class bcf extends AbstractC3446py {
    protected Button bgh;

    /* renamed from: Xl */
    protected abstract String mo7663Xl();

    /* renamed from: Xm */
    protected abstract View mo7662Xm();

    public bcf(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.AbstractC3449qa
    /* renamed from: gy */
    protected View mo2612gy() {
        View a = m2614a(R.layout.root_base_bottom_with_onebtn, null);
        View mo7662Xm = mo7662Xm();
        if (mo7662Xm != null) {
            ((ViewGroup) a.findViewById(R.id.center_container)).addView(mo7662Xm);
        }
        this.bgh = (Button) a.findViewById(R.id.common_btn);
        this.bgh.setText(mo7663Xl());
        return a;
    }

    /* renamed from: d */
    public void m7707d(View.OnClickListener onClickListener) {
        if (this.bgh != null && onClickListener != null) {
            this.bgh.setOnClickListener(onClickListener);
        }
    }
}
