package com.kingroot.kinguser;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import tmsdk.common.TMSDKContext;
/* loaded from: classes.dex */
public final class ced {
    private static volatile ced bXQ = null;
    private Context mContext;
    private HashMap<Class<? extends cdw>, cdw> bXR = new HashMap<>();
    private HashMap<Class<? extends cdw>, WeakReference<? extends cdw>> bXS = new HashMap<>();
    private final Object mLock = new Object();

    private ced(Context context) {
        this.mContext = context.getApplicationContext();
    }

    static ced akV() {
        if (bXQ == null) {
            synchronized (ced.class) {
                if (bXQ == null) {
                    bXQ = new ced(TMSDKContext.akS());
                }
            }
        }
        return bXQ;
    }

    /* renamed from: j */
    public static <T extends cec> T m4790j(Class<T> cls) {
        return (T) akV().m4789k(cls);
    }

    /* renamed from: k */
    private <T extends cec> T m4789k(Class<T> cls) {
        T cast;
        WeakReference<? extends cdw> weakReference;
        if (cls == null) {
            throw new NullPointerException("the param of getManager can't be null.");
        }
        synchronized (this.mLock) {
            cast = cls.cast(this.bXR.get(cls));
            if (cast == null && (weakReference = this.bXS.get(cls)) != null) {
                cast = cls.cast(weakReference.get());
            }
            if (cast == null) {
                try {
                    cast = cls.newInstance();
                    cast.mo4351I(this.mContext);
                    if (cast.aka() == 1) {
                        this.bXR.put(cls, cast);
                    } else if (cast.aka() == 0) {
                        this.bXS.put(cls, new WeakReference<>(cast));
                    }
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return cast;
    }
}
