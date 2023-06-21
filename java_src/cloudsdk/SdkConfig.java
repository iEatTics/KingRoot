package cloudsdk;

import java.util.Locale;
/* loaded from: classes.dex */
public class SdkConfig {

    /* renamed from: g */
    private boolean f97g = false;

    /* renamed from: h */
    private boolean f98h = false;

    /* renamed from: i */
    private String f99i;

    public String toString() {
        return String.format(Locale.US, "useTestServer = %s, logSwitchOn = %s, workingDir = %s", Boolean.valueOf(this.f97g), Boolean.valueOf(this.f98h), this.f99i);
    }

    public void setUseTestServer(boolean z) {
        this.f97g = z;
    }

    public boolean isUseTestServer() {
        return this.f97g;
    }

    public void setLogSwitchOn(boolean z) {
        this.f98h = z;
    }

    public boolean isLogSwitchOn() {
        return this.f98h;
    }

    public void setWorkingDir(String str) {
        this.f99i = str;
    }

    public String getWorkingDir() {
        return this.f99i;
    }
}
