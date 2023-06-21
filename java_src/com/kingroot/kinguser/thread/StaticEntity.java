package com.kingroot.kinguser.thread;

import com.kingroot.kinguser.InterfaceC3562rr;
import com.kingroot.kinguser.bea;
/* loaded from: classes.dex */
public class StaticEntity implements InterfaceC3562rr {
    private static final long serialVersionUID = 0;
    public double mAverageJobWaitingTime;
    public float mAverageQueueSize;
    public int mCreateThreadCount;
    public int mJobFinishCount;
    public long mMaxJobWaitingTime;
    public int mMaxQueueSize;
    public String mProcessName;
    public long mTotalDataCountForAverageJobWaitingTime;
    public long mTotalDataCountForAverageQueueSize;
    bea.EnumC2115a mType;

    public StaticEntity(String str) {
        this.mProcessName = str;
    }
}
