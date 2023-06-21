package cloudsdk.ext.p008kr;

import cloudsdk.SdkConfig;
import java.util.Locale;
/* renamed from: cloudsdk.ext.kr.RootInitConfig */
/* loaded from: classes.dex */
public class RootInitConfig extends SdkConfig {

    /* renamed from: K */
    private String f138K;

    /* renamed from: L */
    private String f139L;

    /* renamed from: N */
    private String f141N;

    /* renamed from: M */
    private boolean f140M = false;

    /* renamed from: O */
    private int f142O = 0;

    @Override // cloudsdk.SdkConfig
    public final String toString() {
        return super.toString() + ", " + String.format(Locale.US, "channel = %s, kdPath = %s, willKinguserSdkCleanApp = %s, kinguserSdkCleanListPath = %s, kuBuildNo = %d", this.f138K, this.f139L, Boolean.valueOf(this.f140M), this.f141N, Integer.valueOf(this.f142O));
    }

    public void setChannel(String str) {
        this.f138K = str;
    }

    public String getChannel() {
        return this.f138K;
    }

    public void setKdPath(String str) {
        this.f139L = str;
    }

    public String getKdPath() {
        return this.f139L;
    }

    public void setWillKinguserSdkCleanApp(boolean z) {
        this.f140M = z;
    }

    public boolean willKinguserSdkCleanApp() {
        return this.f140M;
    }

    public void setKinguserSdkCleanListPath(String str) {
        this.f141N = str;
    }

    public String getKinguserSdkCleanListPath() {
        return this.f141N;
    }

    public void setKinguserBuildNo(int i) {
        this.f142O = i;
    }

    public int getKinguserBuildNo() {
        return this.f142O;
    }
}
