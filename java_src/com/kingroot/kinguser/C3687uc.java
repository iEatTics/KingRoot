package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.framework.task.KTaskSysService;
import com.kingroot.loader.common.KlConst;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.kingroot.kinguser.uc */
/* loaded from: classes.dex */
public final class C3687uc {

    /* renamed from: If */
    private static AtomicInteger f3614If = new AtomicInteger(0);

    /* renamed from: a */
    public static String m2060a(String str, Class<?> cls, Bundle bundle, int i) {
        if (cls == null) {
            return null;
        }
        try {
            Context m5101ge = bzt.m5101ge();
            Intent intent = new Intent(m5101ge, KTaskSysService.class);
            intent.putExtra("task_key_action", 1);
            intent.putExtra("task_key_class_name", cls.getName());
            String m2059kt = TextUtils.isEmpty(str) ? m2059kt() : str;
            intent.putExtra("task_key_id", m2059kt);
            intent.putExtra("key_action_on_same_id", i);
            if (bundle != null) {
                intent.putExtra("task_key_data", bundle);
            }
            m5101ge.startService(intent);
            return m2059kt;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: p */
    public static void m2058p(String str, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            try {
                Context m5101ge = bzt.m5101ge();
                Intent intent = new Intent(m5101ge, KTaskSysService.class);
                intent.putExtra("task_key_action", 2);
                intent.putExtra("key_is_force_cancel", z);
                m5101ge.startService(intent);
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: kt */
    private static String m2059kt() {
        return KApplication.m13450hT() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + f3614If.getAndIncrement() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + System.currentTimeMillis();
    }
}
