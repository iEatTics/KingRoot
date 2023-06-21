package tmsdk.common.exception;
/* loaded from: classes.dex */
public class NetWorkException extends Exception {
    private int errCode;

    public NetWorkException(int i, String str) {
        super(str);
        this.errCode = i;
    }
}
