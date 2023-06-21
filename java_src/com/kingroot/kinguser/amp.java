package com.kingroot.kinguser;

import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class amp implements amm {
    List<AppBaseModel> azN = new ArrayList();

    @Override // com.kingroot.kinguser.amm
    public int getType() {
        return 9;
    }

    public amp(List<AppBaseModel> list) {
        this.azN.addAll(list);
    }

    /* renamed from: It */
    public List<AppBaseModel> m10437It() {
        return this.azN;
    }
}
