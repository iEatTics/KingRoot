package com.kingroot.kinguser;

import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bye {

    /* renamed from: Fq */
    private long f2158Fq;
    private long bTR = -1;
    private List<byb> bTS = new ArrayList();
    private final int scene;

    public bye(int i) {
        this.scene = i;
    }

    public long ajU() {
        return this.bTR;
    }

    /* renamed from: cM */
    public void m5175cM(long j) {
        this.bTR = j;
    }

    public long getDuration() {
        return this.f2158Fq;
    }

    public void setDuration(long j) {
        this.f2158Fq = j;
    }

    public List<byb> ajV() {
        return this.bTS;
    }

    public int ajW() {
        return this.scene;
    }

    public boolean isValid() {
        return this.bTR != -1;
    }

    public void reset() {
        this.bTR = -1L;
        this.f2158Fq = 0L;
        this.bTS.clear();
    }
}
