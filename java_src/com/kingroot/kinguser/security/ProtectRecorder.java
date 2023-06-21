package com.kingroot.kinguser.security;

import android.support.p007v7.widget.helper.ItemTouchHelper;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3604sq;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.InterfaceC3562rr;
import com.kingroot.kinguser.aiq;
import com.kingroot.kinguser.cce;
import com.kingroot.loader.common.KlConst;
import java.io.File;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class ProtectRecorder implements InterfaceC3562rr {
    private static final String TAG = aiq.asc + "_ProtectRecorder";
    private static final cce<ProtectRecorder> sInstance = new cce<ProtectRecorder>() { // from class: com.kingroot.kinguser.security.ProtectRecorder.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Yb */
        public ProtectRecorder create() {
            return new ProtectRecorder();
        }
    };
    private static final long serialVersionUID = 1;
    private LRUCache mTrustRiskInfo;

    private ProtectRecorder() {
        this.mTrustRiskInfo = m2298O("s_p_trust_log.dat", 5);
    }

    /* renamed from: O */
    private LRUCache m2298O(String str, int i) {
        LRUCache lRUCache = (LRUCache) C3604sq.m2244u(new File(KApplication.m13453ge().getFilesDir(), str));
        if (lRUCache == null) {
            return new LRUCache(i);
        }
        return lRUCache;
    }

    /* renamed from: XX */
    public static ProtectRecorder m2296XX() {
        return sInstance.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class LRUCache<K, V> extends LinkedHashMap<K, V> implements InterfaceC3562rr {
        private static final long serialVersionUID = 1;
        private final int MAX_CACHE_SIZE;

        public LRUCache(int i) {
            super(((int) Math.ceil(i / 0.75d)) + 1, 0.75f, true);
            this.MAX_CACHE_SIZE = i;
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry entry) {
            return size() > this.MAX_CACHE_SIZE;
        }
    }

    /* loaded from: classes.dex */
    public abstract class Time implements InterfaceC3562rr {
        private static final long serialVersionUID = 1;
        public long when = System.currentTimeMillis();

        public Time() {
        }
    }

    /* loaded from: classes.dex */
    public class TrustRiskInfo extends Time {
        private static final long serialVersionUID = 1;
        public String name;
        public int type;

        public TrustRiskInfo(String str, int i) {
            super();
            this.name = str;
            this.type = i;
        }
    }

    /* loaded from: classes.dex */
    public class SafeApk extends Time {
        private static final long serialVersionUID = 1;
        public String pkgName;

        public SafeApk(String str) {
            super();
            this.pkgName = str;
        }
    }

    /* loaded from: classes.dex */
    public class RiskApkDeniedRootAuth extends Time {
        private static final long serialVersionUID = 1;
        public String pkgName;

        public RiskApkDeniedRootAuth(String str) {
            super();
            this.pkgName = str;
        }
    }

    /* renamed from: XY */
    public Set<TrustRiskInfo> m2295XY() {
        return new HashSet(this.mTrustRiskInfo.values());
    }

    /* renamed from: P */
    public void m2297P(String str, int i) {
        this.mTrustRiskInfo.put(str + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + i, new TrustRiskInfo(str, i));
        m2292a(this.mTrustRiskInfo, "s_p_trust_log.dat");
    }

    /* renamed from: XZ */
    public Set<SafeApk> m2294XZ() {
        return new HashSet(m2298O("s_p_safe_apk_log.dat", 5).values());
    }

    /* renamed from: kH */
    public void m2290kH(String str) {
        LRUCache m2298O = m2298O("s_p_safe_apk_log.dat", 5);
        m2298O.put(str, new SafeApk(str));
        m2292a(m2298O, "s_p_safe_apk_log.dat");
    }

    /* renamed from: Ya */
    public Set<RiskApkDeniedRootAuth> m2293Ya() {
        return new HashSet(m2298O("s_p_risk_auth_log.dat", ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION).values());
    }

    /* renamed from: j */
    public void m2291j(Set<String> set) {
        LRUCache m2298O = m2298O("s_p_risk_auth_log.dat", ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
        for (String str : set) {
            if (C3952zh.m1312pq().m1314du(str)) {
                m2298O.put(str, new RiskApkDeniedRootAuth(str));
            }
        }
        m2292a(m2298O, "s_p_risk_auth_log.dat");
    }

    /* renamed from: a */
    private synchronized void m2292a(LRUCache lRUCache, String str) {
        C3604sq.m2250a(lRUCache, new File(KApplication.m13453ge().getFilesDir(), str));
    }
}
