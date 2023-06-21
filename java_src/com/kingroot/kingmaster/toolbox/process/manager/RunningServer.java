package com.kingroot.kingmaster.toolbox.process.manager;

import java.util.ArrayList;
/* loaded from: classes.dex */
public class RunningServer {

    /* loaded from: classes.dex */
    public static class PackageRunningInfo extends PackageInfoBase {
        private static final long serialVersionUID = -4889174274956550781L;
        protected long mCpuTime;
        protected ArrayList<Object> mProcesses;
        protected long mPss;
        protected ArrayList<String> mServices;
        protected long mStartTime;
        protected int mType;
        protected long mWakeLockCount;
        protected long mWakeLockTime;
    }
}
