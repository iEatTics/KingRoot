package cloudsdk.ext.p008kr;

import android.os.Bundle;
/* renamed from: cloudsdk.ext.kr.RootExtInfo */
/* loaded from: classes.dex */
public class RootExtInfo {
    public int canRoot = 0;
    public int useTime = 0;
    public int succUsers = 0;
    public int succRate = 0;
    public long subitUsers = 0;

    public static RootExtInfo valueOf(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        RootExtInfo rootExtInfo = new RootExtInfo();
        rootExtInfo.canRoot = bundle.getInt("canRoot", 0);
        rootExtInfo.useTime = bundle.getInt("useTime", 0);
        rootExtInfo.succUsers = bundle.getInt("succUsers", 0);
        rootExtInfo.succRate = bundle.getInt("succRate", 0);
        rootExtInfo.subitUsers = bundle.getLong("subitUsers", 0L);
        return rootExtInfo;
    }

    public Bundle getBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt("canRoot", this.canRoot);
        bundle.putInt("useTime", this.useTime);
        bundle.putInt("succUsers", this.succUsers);
        bundle.putInt("succRate", this.succRate);
        bundle.putLong("subitUsers", this.subitUsers);
        return bundle;
    }
}
