package com.kingroot.kinguser;

import java.util.Iterator;
import java.util.LinkedHashSet;
/* loaded from: classes.dex */
public class cfs<T> {
    private LinkedHashSet<T> cdA = new LinkedHashSet<>();
    private int cdz;

    public cfs(int i) {
        this.cdz = -1;
        this.cdz = i;
    }

    public synchronized void push(T t) {
        if (this.cdA.size() >= this.cdz) {
            poll();
        }
        this.cdA.add(t);
    }

    /* renamed from: x */
    public synchronized boolean m4395x(T t) {
        return this.cdA.contains(t);
    }

    public synchronized T poll() {
        T t;
        Iterator<T> it;
        if (this.cdA == null || (it = this.cdA.iterator()) == null || !it.hasNext()) {
            t = null;
        } else {
            t = it.next();
            this.cdA.remove(t);
        }
        return t;
    }
}
