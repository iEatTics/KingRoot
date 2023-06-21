package com.kingroot.kinguser;

import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ami implements amm {

    /* renamed from: Tn */
    List<AppBaseModel> f1484Tn;

    /* renamed from: It */
    public List<AppBaseModel> m10440It() {
        return this.f1484Tn;
    }

    public ami(List<AppBaseModel> list) {
        this.f1484Tn = new ArrayList();
        this.f1484Tn = list;
    }

    @Override // com.kingroot.kinguser.amm
    public int getType() {
        return 1;
    }
}
