package com.kingroot.kinguser;

import andhook.lib.xposed.ClassUtils;
import android.text.format.Time;
import android.util.Log;
import com.kingroot.loader.common.KlConst;
/* loaded from: classes.dex */
public final class bqa {
    public static final bqa bIi = new bqa();

    /* renamed from: a */
    public final String m5835a(int i) {
        switch (i) {
            case 1:
                return "V";
            case 2:
                return "D";
            case 4:
                return "I";
            case 8:
                return "W";
            case 16:
                return "E";
            case 32:
                return "A";
            default:
                return KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR;
        }
    }

    /* renamed from: b */
    public String m5834b(int i, Thread thread, long j, String str, String str2, Throwable th) {
        long j2 = j % 1000;
        Time time = new Time();
        time.set(j);
        StringBuilder sb = new StringBuilder();
        sb.append(m5835a(i)).append('/').append(time.format("%Y-%m-%d %H:%M:%S")).append(ClassUtils.PACKAGE_SEPARATOR_CHAR);
        if (j2 < 10) {
            sb.append("00");
        } else if (j2 < 100) {
            sb.append('0');
        }
        sb.append(j2).append(' ').append('[');
        if (thread == null) {
            sb.append("N/A");
        } else {
            sb.append(thread.getName());
        }
        sb.append(']').append('[').append(str).append(']').append(' ').append(str2).append('\n');
        if (th != null) {
            sb.append("* Exception : \n").append(Log.getStackTraceString(th)).append('\n');
        }
        return sb.toString();
    }
}
