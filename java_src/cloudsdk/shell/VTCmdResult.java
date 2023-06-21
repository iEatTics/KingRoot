package cloudsdk.shell;
/* loaded from: classes.dex */
public class VTCmdResult {
    public static final int RET_EOF = 2;
    public static final int RET_ERR = 1;
    public static final int RET_OK = 0;
    public static final int RET_TIMEOUT = 3;
    public final String mCmdFlag;
    public final Integer mExitValue;
    public final String mStdErr;
    public final String mStdOut;

    public VTCmdResult(String str, Integer num, String str2, String str3) {
        this.mCmdFlag = str;
        this.mExitValue = num;
        this.mStdOut = str2;
        this.mStdErr = str3;
    }

    public VTCmdResult(String str, Integer num) {
        this(str, num, null, null);
    }

    public boolean success() {
        return this.mExitValue != null && this.mExitValue.intValue() == 0;
    }
}
