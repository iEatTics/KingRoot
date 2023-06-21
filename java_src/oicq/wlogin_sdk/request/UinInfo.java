package oicq.wlogin_sdk.request;

import java.io.Serializable;
/* loaded from: classes.dex */
public class UinInfo implements Serializable {
    private static final long serialVersionUID = 1;
    public boolean _hasPassword;
    public Long _uin;
    private int pwdState;

    public UinInfo(Long l, boolean z) {
        this.pwdState = 0;
        this._uin = l;
        this._hasPassword = z;
        this.pwdState = z ? 1 : 2;
    }

    public boolean getHasPassword() {
        boolean z = true;
        if (!this._hasPassword && this.pwdState > 1) {
            z = false;
        }
        this._hasPassword = z;
        return this._hasPassword;
    }
}
