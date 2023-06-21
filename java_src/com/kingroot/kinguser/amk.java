package com.kingroot.kinguser;

import android.view.View;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class amk implements amm {

    /* renamed from: Tn */
    private List<AppBaseModel> f1485Tn;
    View.OnClickListener ahN;
    private String mTitle;

    public amk(List<AppBaseModel> list, String str, View.OnClickListener onClickListener) {
        this.f1485Tn = new ArrayList();
        this.f1485Tn = list;
        this.mTitle = str;
        this.ahN = onClickListener;
    }

    public String getTitle() {
        return this.mTitle;
    }

    /* renamed from: Iw */
    public View.OnClickListener m10438Iw() {
        return this.ahN;
    }

    /* renamed from: It */
    public List<AppBaseModel> m10439It() {
        return this.f1485Tn;
    }

    @Override // com.kingroot.kinguser.amm
    public int getType() {
        return 2;
    }
}
