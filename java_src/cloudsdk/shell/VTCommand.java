package cloudsdk.shell;
/* loaded from: classes.dex */
public class VTCommand {
    public static final long TIMEOUT_DEFAULT = 40000;
    public static final long TIMEOUT_NONE = 0;
    public final String mCmdFlag;
    public final String mCmdValue;
    public final long mTimeout;

    public VTCommand(String str, String str2) {
        this.mCmdFlag = str;
        this.mCmdValue = str2;
        this.mTimeout = TIMEOUT_DEFAULT;
    }

    public VTCommand(String str, String str2, long j) {
        this.mCmdFlag = str;
        this.mCmdValue = str2;
        this.mTimeout = j;
    }

    public boolean isEmpty() {
        return this.mCmdFlag == null || this.mCmdFlag.length() <= 0 || this.mCmdValue == null || this.mCmdValue.length() <= 0;
    }
}
