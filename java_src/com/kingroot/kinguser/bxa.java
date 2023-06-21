package com.kingroot.kinguser;

import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class bxa<K, V> extends LinkedHashMap<K, V> implements Serializable {
    private final int MAX_CACHE_SIZE;

    public bxa(int i) {
        super(((int) Math.ceil(i / 0.75d)) + 1, 0.75f, true);
        this.MAX_CACHE_SIZE = i;
    }

    @Override // java.util.LinkedHashMap
    protected boolean removeEldestEntry(Map.Entry entry) {
        return size() > this.MAX_CACHE_SIZE;
    }
}
