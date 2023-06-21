package com.kingroot.kinguser;

import android.content.Context;
import android.view.WindowManager;
import com.kingroot.kinguser.atw;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class atx {
    private WindowManager.LayoutParams aQK;
    private atw aQL;
    private C3637tk anQ;
    private Context mContext;
    private WindowManager mWindowManager;

    public atx(Context context) {
        this.mContext = context;
    }

    /* renamed from: jh */
    public void m9111jh(String str) {
        this.anQ = C3637tk.m2167cS("addStartGameMaskView");
        this.mWindowManager = (WindowManager) this.mContext.getSystemService("window");
        this.aQK = new WindowManager.LayoutParams();
        this.aQK.format = 1;
        this.aQK.flags |= 264;
        this.aQK.type = 2003;
        this.aQK.width = -1;
        this.aQK.height = -1;
        this.aQK.alpha = 1.0f;
        this.aQL = new atw(this.mContext);
        this.aQL.setStartGameMaskViewControllerListener(new atw.InterfaceC1597a() { // from class: com.kingroot.kinguser.atx.1
            @Override // com.kingroot.kinguser.atw.InterfaceC1597a
            /* renamed from: PC */
            public void mo9110PC() {
                C3954zj.m1310b(C3953zi.m1311pr().getString(R.string.gamebox_booster_finished));
                atx.this.mWindowManager.removeView(atx.this.aQL);
                if (atx.this.anQ != null) {
                    atx.this.anQ.release();
                }
            }
        });
        if (this.anQ != null) {
            this.anQ.m2161s(10000L);
        }
        try {
            this.mWindowManager.addView(this.aQL, this.aQK);
            this.aQL.m9115jh(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
