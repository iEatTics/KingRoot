package com.kingroot.kinguser.examination.service;

import android.os.Bundle;
import com.kingroot.kinguser.examination.service.ICloudCheckCallback;
import com.tencent.securemodule.api.AppInfo;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes.dex */
public abstract class CloudCheckCallback extends ICloudCheckCallback.Stub {
    public static final String RISK_APP_INFO_KEY = "risk";
    public static final String UNKNOWN_APP_INFO_KEY = "unknown";

    public abstract void onRiskFound(List<AppInfo> list, List<AppInfo> list2);

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckCallback
    public void onRiskFound(Bundle bundle) {
        if (bundle != null) {
            Serializable serializable = bundle.getSerializable(RISK_APP_INFO_KEY);
            Serializable serializable2 = bundle.getSerializable("unknown");
            if ((serializable instanceof List) && (serializable2 instanceof List)) {
                List<AppInfo> list = (List) serializable;
                List<AppInfo> list2 = (List) serializable2;
                if ((list.size() != 0 || list2.size() != 0) && (list.get(0) instanceof AppInfo) && (list2.get(0) instanceof AppInfo)) {
                    onRiskFound(list, list2);
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckCallback
    public void onFinish(int i) {
    }
}
