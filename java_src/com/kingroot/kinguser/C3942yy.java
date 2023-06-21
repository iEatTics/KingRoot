package com.kingroot.kinguser;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
/* renamed from: com.kingroot.kinguser.yy */
/* loaded from: classes.dex */
public class C3942yy {

    /* renamed from: Wg */
    public static final Collection f4063Wg = Collections.unmodifiableCollection(new ArrayList());

    @Deprecated
    /* renamed from: c */
    public static boolean m1352c(Collection collection) {
        return m1351d(collection);
    }

    @Deprecated
    /* renamed from: e */
    public static boolean m1349e(Map map) {
        return m1348f(map);
    }

    /* renamed from: d */
    public static boolean m1351d(Collection collection) {
        return collection == null || collection.isEmpty();
    }

    /* renamed from: f */
    public static boolean m1348f(Map map) {
        return map == null || map.isEmpty();
    }

    /* renamed from: e */
    public static <T> Collection<T> m1350e(Collection<T> collection) {
        Collections.emptyList();
        return collection == null ? f4063Wg : collection;
    }
}
