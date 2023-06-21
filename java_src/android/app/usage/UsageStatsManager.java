package android.app.usage;

import android.content.Context;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class UsageStatsManager {
    public static final int INTERVAL_BEST = 4;
    public static final int INTERVAL_COUNT = 4;
    public static final int INTERVAL_DAILY = 0;
    public static final int INTERVAL_MONTHLY = 2;
    public static final int INTERVAL_WEEKLY = 1;
    public static final int INTERVAL_YEARLY = 3;
    private static final UsageEvents sEmptyResults = new UsageEvents();
    private final Context mContext;

    public UsageStatsManager(Context context, IUsageStatsManager iUsageStatsManager) {
        this.mContext = context;
    }

    public List<UsageStats> queryUsageStats(int i, long j, long j2) {
        return Collections.emptyList();
    }

    public List<ConfigurationStats> queryConfigurations(int i, long j, long j2) {
        return Collections.emptyList();
    }

    public UsageEvents queryEvents(long j, long j2) {
        return sEmptyResults;
    }

    public Map<String, UsageStats> queryAndAggregateUsageStats(long j, long j2) {
        return null;
    }
}
