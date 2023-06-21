package com.kingroot.kinguser;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bcj extends AbstractC3446py {
    private Button bgk;
    private Button bgl;
    private TextView bgx;

    public bcj(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.AbstractC3449qa
    /* renamed from: gy */
    protected View mo2612gy() {
        View aA = m2613aA(R.layout.root_process_base_guide_bottom);
        this.bgk = (Button) aA.findViewById(R.id.first_btn);
        this.bgx = (TextView) aA.findViewById(R.id.first_btn_description);
        this.bgl = (Button) aA.findViewById(R.id.second_btn);
        return aA;
    }

    /* renamed from: Xp */
    public Button m7673Xp() {
        return this.bgk;
    }

    /* renamed from: Xq */
    public Button m7672Xq() {
        return this.bgl;
    }

    /* renamed from: Xr */
    public TextView m7671Xr() {
        return this.bgx;
    }
}
