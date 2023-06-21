package com.kingroot.kingmaster.network.updatalist;

import com.kingroot.common.entity.BaseEntity;
import java.util.HashMap;
/* loaded from: classes.dex */
public class CommonList extends BaseEntity {
    private static final long serialVersionUID = 1;
    public HashMap<String, Integer> nameList = new HashMap<>();

    /* renamed from: com.kingroot.kingmaster.network.updatalist.CommonList$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0599a {
        /* renamed from: uA */
        void mo8829uA();
    }

    /* renamed from: eQ */
    public int m13063eQ(String str) {
        Integer num = this.nameList.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }
}
