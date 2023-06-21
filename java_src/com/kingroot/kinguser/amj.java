package com.kingroot.kinguser;

import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class amj implements amm {
    List<AppBaseModel> azL = new ArrayList();

    @Override // com.kingroot.kinguser.amm
    public int getType() {
        return 8;
    }

    public amj(List<AppBaseModel> list) {
        this.azL.addAll(list);
    }
}
