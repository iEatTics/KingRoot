package cloudsdk.ext.p008kr;

import android.os.Bundle;
import com.kingroot.kinguser.bmc;
/* renamed from: cloudsdk.ext.kr.RootInfo */
/* loaded from: classes.dex */
public class RootInfo extends bmc {

    /* renamed from: q */
    private int f135q;

    /* renamed from: s */
    private RootExtInfo f136s;

    /* renamed from: t */
    private RootExtInfo f137t;

    public RootInfo(int i, int i2, String str, Bundle bundle) {
        super(i, i2, str, bundle);
    }

    public RootExtInfo getMobileRootInfo() {
        return this.f136s;
    }

    public void setMobileRootInfo(RootExtInfo rootExtInfo) {
        this.f136s = rootExtInfo;
    }

    public RootExtInfo getPcRootInfo() {
        return this.f137t;
    }

    public void setPcRootInfo(RootExtInfo rootExtInfo) {
        this.f137t = rootExtInfo;
    }

    public int getSolutionCount() {
        return this.f135q;
    }

    public void setSolutionCount(int i) {
        this.f135q = i;
    }
}
