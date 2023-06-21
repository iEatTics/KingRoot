package com.tencent.p020mm.opensdk.diffdev;

import com.tencent.p020mm.opensdk.diffdev.p022a.C4164a;
import com.tencent.p020mm.opensdk.utils.Log;
/* renamed from: com.tencent.mm.opensdk.diffdev.DiffDevOAuthFactory */
/* loaded from: classes.dex */
public class DiffDevOAuthFactory {
    public static final int MAX_SUPPORTED_VERSION = 1;
    private static final String TAG = "MicroMsg.SDK.DiffDevOAuthFactory";
    public static final int VERSION_1 = 1;
    private static IDiffDevOAuth v1Instance = null;

    private DiffDevOAuthFactory() {
    }

    public static IDiffDevOAuth getDiffDevOAuth() {
        return getDiffDevOAuth(1);
    }

    public static IDiffDevOAuth getDiffDevOAuth(int i) {
        Log.m493v(TAG, "getDiffDevOAuth, version = " + i);
        if (i > 1) {
            Log.m495e(TAG, "getDiffDevOAuth fail, unsupported version = " + i);
            return null;
        }
        switch (i) {
            case 1:
                if (v1Instance == null) {
                    v1Instance = new C4164a();
                }
                return v1Instance;
            default:
                return null;
        }
    }
}
