package tmsdk.common.module.software;

import java.util.HashMap;
import tmsdk.common.BaseEntity;
/* loaded from: classes.dex */
public class AppEntity extends BaseEntity {
    private HashMap<String, Object> mAppInfo = new HashMap<>();

    public void put(String str, Object obj) {
        this.mAppInfo.put(str, obj);
    }

    public Object get(String str) {
        return this.mAppInfo.get(str);
    }

    public boolean amR() {
        Object obj = this.mAppInfo.get("isSystem");
        if (obj != null) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }

    public String getVersion() {
        return m4y(this.mAppInfo.get("version"));
    }

    /* renamed from: y */
    private String m4y(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        return obj.toString();
    }
}
