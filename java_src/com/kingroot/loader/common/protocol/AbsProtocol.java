package com.kingroot.loader.common.protocol;

import android.os.Bundle;
import android.support.annotation.NonNull;
/* loaded from: classes.dex */
public abstract class AbsProtocol {
    public static final int BASE_CMD_ID = 0;
    public static final int INVALID_CMD_ID = -1;
    private static final String KEY_CMD_ARGV = "com.kingroot.loader.cmd_argv";
    private static final String KEY_CMD_ID = "com.kingroot.loader.cmd_id";
    protected int mCmdId;

    public abstract int getCmdId();

    public abstract void readArgvFromBundle(@NonNull Bundle bundle);

    public abstract void writeArgvToBundle(@NonNull Bundle bundle);

    public AbsProtocol() {
        this.mCmdId = 0;
        this.mCmdId = getCmdId();
    }

    public final Bundle transferToBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(KEY_CMD_ID, this.mCmdId);
        Bundle bundle2 = new Bundle();
        writeArgvToBundle(bundle2);
        bundle.putBundle(KEY_CMD_ARGV, bundle2);
        return bundle;
    }

    public final boolean readFromBundle(Bundle bundle) {
        Bundle bundle2;
        if (bundle != null && bundle.containsKey(KEY_CMD_ID)) {
            this.mCmdId = bundle.getInt(KEY_CMD_ID, -1);
            if (this.mCmdId == -1 || (bundle2 = bundle.getBundle(KEY_CMD_ARGV)) == null) {
                return false;
            }
            readArgvFromBundle(bundle2);
            return true;
        }
        return false;
    }

    public static int getCmdId(Bundle bundle) {
        return bundle.getInt(KEY_CMD_ID, -1);
    }
}
