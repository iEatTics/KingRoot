package com.kingroot.kinguser;

import java.util.Comparator;
import java.util.LinkedList;
import java.util.TreeMap;
/* loaded from: classes.dex */
public class cfw<T> {
    private TreeMap<T, LinkedList<T>> cdK;

    public cfw(Comparator<T> comparator) {
        this.cdK = null;
        this.cdK = new TreeMap<>((Comparator<? super T>) comparator);
    }

    public synchronized void add(T t) {
        LinkedList<T> linkedList = this.cdK.get(t);
        if (linkedList == null) {
            linkedList = amF();
            this.cdK.put(t, linkedList);
        }
        linkedList.addLast(t);
    }

    public synchronized boolean isEmpty() {
        return this.cdK.isEmpty();
    }

    public synchronized void clear() {
        this.cdK.clear();
    }

    public synchronized T poll() {
        T t;
        if (isEmpty()) {
            t = null;
        } else {
            T firstKey = this.cdK.firstKey();
            LinkedList<T> linkedList = this.cdK.get(firstKey);
            T poll = linkedList.poll();
            if (linkedList.size() <= 0) {
                this.cdK.remove(firstKey);
            }
            t = poll;
        }
        return t;
    }

    private LinkedList<T> amF() {
        return new LinkedList<>();
    }
}
