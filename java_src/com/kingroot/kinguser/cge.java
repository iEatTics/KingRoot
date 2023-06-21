package com.kingroot.kinguser;

import java.util.LinkedHashMap;
import java.util.Set;
/* loaded from: classes.dex */
public class cge<K, V> {
    private int cdz;
    private LinkedHashMap<K, V> map = new LinkedHashMap<>();

    public cge(int i) {
        this.cdz = -1;
        this.cdz = i;
    }

    public V put(K k, V v) {
        Set<K> keySet;
        if (this.map.size() >= this.cdz && (keySet = this.map.keySet()) != null) {
            this.map.remove(keySet.iterator().next());
        }
        return this.map.put(k, v);
    }

    public V get(K k) {
        return this.map.get(k);
    }

    /* renamed from: z */
    public void m4343z(K k) {
        this.map.remove(k);
    }

    public int size() {
        return this.map.size();
    }

    public LinkedHashMap<K, V> amV() {
        return this.map;
    }
}
