package com.kingroot.kinguser;

import java.io.Writer;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class bpz implements Iterable<String> {
    private ConcurrentLinkedQueue<String> bIg;
    private AtomicInteger bIh;

    public bpz() {
        this.bIg = null;
        this.bIh = null;
        this.bIg = new ConcurrentLinkedQueue<>();
        this.bIh = new AtomicInteger(0);
    }

    /* renamed from: a */
    public int m5837a(String str) {
        int length = str.length();
        this.bIg.add(str);
        return this.bIh.addAndGet(length);
    }

    /* renamed from: a */
    public void m5838a(Writer writer, char[] cArr) {
        if (writer != null && cArr != null && cArr.length != 0) {
            int length = cArr.length;
            Iterator<String> it = iterator();
            int i = 0;
            int i2 = length;
            while (it.hasNext()) {
                String next = it.next();
                int length2 = next.length();
                int i3 = 0;
                while (length2 > 0) {
                    int i4 = i2 > length2 ? length2 : i2;
                    next.getChars(i3, i3 + i4, cArr, i);
                    i2 -= i4;
                    i += i4;
                    length2 -= i4;
                    int i5 = i4 + i3;
                    if (i2 == 0) {
                        writer.write(cArr, 0, length);
                        i = 0;
                        i2 = length;
                        i3 = i5;
                    } else {
                        i3 = i5;
                    }
                }
            }
            if (i > 0) {
                writer.write(cArr, 0, i);
            }
            writer.flush();
        }
    }

    /* renamed from: a */
    public int m5839a() {
        return this.bIh.get();
    }

    /* renamed from: b */
    public void m5836b() {
        this.bIg.clear();
        this.bIh.set(0);
    }

    @Override // java.lang.Iterable
    public Iterator<String> iterator() {
        return this.bIg.iterator();
    }
}
