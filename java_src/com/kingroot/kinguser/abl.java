package com.kingroot.kinguser;

import android.app.usage.UsageStats;
import android.app.usage.UsageStatsManager;
import android.os.Build;
import com.kingroot.common.app.KApplication;
import java.util.List;
/* loaded from: classes.dex */
public class abl {
    public static List<UsageStats> queryUsageStats(int i, long j, long j2) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return ((UsageStatsManager) KApplication.m13453ge().getSystemService("usagestats")).queryUsageStats(i, j, j2);
            } catch (Exception e) {
                return null;
            }
        }
        return null;
    }
}
