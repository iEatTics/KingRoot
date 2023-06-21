package com.kingroot.common.report.autostart;

import android.os.Process;
import android.os.SystemClock;
import com.kingroot.kinguser.InterfaceC3562rr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class BootRecord implements InterfaceC3562rr {
    private static final long serialVersionUID = 0;
    private Map<String, AutoStartRecord> mAutoStartRecordMap;
    private int mCurrentPid;
    private long mCurrentSystemBootupTime;
    private boolean mHadReported;
    private long mID;
    private Map<String, Map<String, InjectResultRecord>> mInjectResultRecordMap;
    private Map<String, InjectTimeRecord> mInjectTimeRecordMap;
    private boolean mIsBeKilled;
    private boolean mIsDirtyRecord;
    private boolean mIsKmFirstRecord;
    private boolean mIsProcessAutoStartFinish;
    private boolean mIsProcessKmInjectFinish;
    private boolean mIsProcessOpponentInjectFinish;

    /* loaded from: classes.dex */
    public static abstract class BaseRecord implements InterfaceC3562rr {
        public long mID = 0;
        public String mPkg;
    }

    /* renamed from: mq */
    public void m13353mq() {
        this.mIsProcessOpponentInjectFinish = true;
    }

    /* renamed from: mr */
    public void m13352mr() {
        this.mIsProcessKmInjectFinish = true;
    }

    /* renamed from: ms */
    public void m13351ms() {
        this.mIsProcessAutoStartFinish = true;
    }

    private BootRecord() {
        this.mCurrentSystemBootupTime = 0L;
        this.mHadReported = false;
        this.mIsBeKilled = false;
        this.mID = 0L;
        this.mIsKmFirstRecord = false;
        this.mIsDirtyRecord = false;
        this.mAutoStartRecordMap = Collections.synchronizedMap(new HashMap());
        this.mInjectTimeRecordMap = Collections.synchronizedMap(new HashMap());
        this.mInjectResultRecordMap = Collections.synchronizedMap(new HashMap());
        this.mIsProcessAutoStartFinish = false;
        this.mIsProcessKmInjectFinish = false;
        this.mIsProcessOpponentInjectFinish = false;
    }

    private BootRecord(long j, long j2) {
        this.mCurrentSystemBootupTime = 0L;
        this.mHadReported = false;
        this.mIsBeKilled = false;
        this.mID = 0L;
        this.mIsKmFirstRecord = false;
        this.mIsDirtyRecord = false;
        this.mAutoStartRecordMap = Collections.synchronizedMap(new HashMap());
        this.mInjectTimeRecordMap = Collections.synchronizedMap(new HashMap());
        this.mInjectResultRecordMap = Collections.synchronizedMap(new HashMap());
        this.mIsProcessAutoStartFinish = false;
        this.mIsProcessKmInjectFinish = false;
        this.mIsProcessOpponentInjectFinish = false;
        this.mCurrentSystemBootupTime = j2;
        this.mID = j;
        this.mCurrentPid = Process.myPid();
    }

    /* renamed from: mt */
    public static BootRecord m13350mt() {
        return new BootRecord(System.currentTimeMillis(), (System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000);
    }

    /* renamed from: mu */
    public void m13349mu() {
        this.mIsDirtyRecord = true;
    }

    public boolean isDirty() {
        return this.mIsDirtyRecord;
    }

    /* renamed from: mv */
    public void m13348mv() {
        this.mHadReported = true;
    }

    /* renamed from: mw */
    public boolean m13347mw() {
        return this.mHadReported;
    }

    /* renamed from: mx */
    public boolean m13346mx() {
        if (!m13344mz() && this.mCurrentPid != Process.myPid()) {
            this.mIsBeKilled = true;
        }
        return this.mIsBeKilled;
    }

    /* renamed from: T */
    public void m13360T(boolean z) {
        this.mIsKmFirstRecord = z;
    }

    /* renamed from: my */
    public boolean m13345my() {
        return this.mIsKmFirstRecord;
    }

    /* renamed from: mz */
    public boolean m13344mz() {
        return this.mIsProcessAutoStartFinish && this.mIsProcessKmInjectFinish && this.mIsProcessOpponentInjectFinish;
    }

    /* renamed from: mA */
    public synchronized List<AutoStartRecord> m13356mA() {
        ArrayList arrayList;
        arrayList = new ArrayList(0);
        for (AutoStartRecord autoStartRecord : this.mAutoStartRecordMap.values()) {
            if (autoStartRecord != null) {
                arrayList.add(autoStartRecord);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: mB */
    public List<InjectTimeRecord> m13355mB() {
        ArrayList arrayList = new ArrayList(0);
        for (InjectTimeRecord injectTimeRecord : this.mInjectTimeRecordMap.values()) {
            if (injectTimeRecord != null) {
                arrayList.add(injectTimeRecord);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: mC */
    public List<InjectResultRecord> m13354mC() {
        ArrayList arrayList = new ArrayList(0);
        for (Map<String, InjectResultRecord> map : this.mInjectResultRecordMap.values()) {
            if (map != null) {
                for (InjectResultRecord injectResultRecord : map.values()) {
                    if (injectResultRecord != null) {
                        arrayList.add(injectResultRecord);
                    }
                }
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public void m13359a(BaseRecord baseRecord) {
        synchronized (this) {
            if (baseRecord instanceof AutoStartRecord) {
                AutoStartRecord autoStartRecord = (AutoStartRecord) baseRecord;
                baseRecord.mID = this.mID;
                this.mAutoStartRecordMap.put(autoStartRecord.mPkg, autoStartRecord);
            } else if (baseRecord instanceof InjectTimeRecord) {
                InjectTimeRecord injectTimeRecord = (InjectTimeRecord) baseRecord;
                baseRecord.mID = this.mID;
                this.mInjectTimeRecordMap.put(injectTimeRecord.mPkg, injectTimeRecord);
            } else if (baseRecord instanceof InjectResultRecord) {
                InjectResultRecord injectResultRecord = (InjectResultRecord) baseRecord;
                baseRecord.mID = this.mID;
                Map<String, InjectResultRecord> map = this.mInjectResultRecordMap.get(injectResultRecord.mTargetProc2Inject);
                if (map == null) {
                    map = new HashMap<>();
                    this.mInjectResultRecordMap.put(injectResultRecord.mTargetProc2Inject, map);
                }
                map.put(injectResultRecord.mPkg, injectResultRecord);
            }
        }
    }

    /* renamed from: dj */
    public AutoStartRecord m13358dj(String str) {
        AutoStartRecord autoStartRecord;
        synchronized (this) {
            autoStartRecord = this.mAutoStartRecordMap.get(str);
        }
        return autoStartRecord;
    }

    /* renamed from: dk */
    public InjectTimeRecord m13357dk(String str) {
        InjectTimeRecord injectTimeRecord;
        synchronized (this) {
            if (this.mInjectTimeRecordMap == null) {
                this.mInjectTimeRecordMap = new HashMap();
                injectTimeRecord = null;
            } else {
                injectTimeRecord = this.mInjectTimeRecordMap.get(str);
            }
        }
        return injectTimeRecord;
    }

    /* renamed from: F */
    public InjectResultRecord m13361F(String str, String str2) {
        InjectResultRecord injectResultRecord;
        synchronized (this) {
            Map<String, InjectResultRecord> map = this.mInjectResultRecordMap.get(str2);
            injectResultRecord = map != null ? map.get(str) : null;
        }
        return injectResultRecord;
    }

    public String toString() {
        return "";
    }

    /* loaded from: classes.dex */
    public static class AutoStartRecord extends BaseRecord {
        public long mAppBootupTime;
        public long mSystemBootupTime;
        public String mVersionName;
        public int mBootupType = 0;
        public int mProcRanking = -1;
        public boolean mIsKilled = false;
        public boolean mIsKDEnable = true;

        public String toString() {
            return "";
        }

        /* renamed from: mD */
        public String[][] m13343mD() {
            String[][] strArr = new String[8];
            String[] strArr2 = new String[1];
            strArr2[0] = this.mID + "";
            strArr[0] = strArr2;
            String[] strArr3 = new String[1];
            strArr3[0] = this.mPkg;
            strArr[1] = strArr3;
            String[] strArr4 = new String[1];
            strArr4[0] = this.mVersionName + "";
            strArr[2] = strArr4;
            String[] strArr5 = new String[1];
            strArr5[0] = this.mAppBootupTime + "";
            strArr[3] = strArr5;
            String[] strArr6 = new String[1];
            strArr6[0] = this.mBootupType + "";
            strArr[4] = strArr6;
            String[] strArr7 = new String[1];
            strArr7[0] = this.mProcRanking + "";
            strArr[5] = strArr7;
            String[] strArr8 = new String[1];
            strArr8[0] = (this.mIsKilled ? 1 : 0) + "";
            strArr[6] = strArr8;
            String[] strArr9 = new String[1];
            strArr9[0] = (this.mIsKDEnable ? 1 : 0) + "";
            strArr[7] = strArr9;
            return strArr;
        }
    }

    /* loaded from: classes.dex */
    public static class InjectTimeRecord extends BaseRecord {
        public boolean mIsRoot;
        public boolean mIsSuccess;
        public long mInjectStartTime = 0;
        public long mInjectFinishTime = 0;
        public int mInjectTryCount = 0;
        public boolean mIsInjectSwitchOn = true;

        public String toString() {
            return "";
        }

        /* renamed from: mD */
        public String[][] m13341mD() {
            String[][] strArr = new String[7];
            String[] strArr2 = new String[1];
            strArr2[0] = this.mID + "";
            strArr[0] = strArr2;
            String[] strArr3 = new String[1];
            strArr3[0] = this.mPkg;
            strArr[1] = strArr3;
            String[] strArr4 = new String[1];
            strArr4[0] = (this.mIsRoot ? 1 : 0) + "";
            strArr[2] = strArr4;
            String[] strArr5 = new String[1];
            strArr5[0] = this.mInjectStartTime + "";
            strArr[3] = strArr5;
            String[] strArr6 = new String[1];
            strArr6[0] = this.mInjectFinishTime + "";
            strArr[4] = strArr6;
            String[] strArr7 = new String[1];
            strArr7[0] = this.mInjectTryCount + "";
            strArr[5] = strArr7;
            String[] strArr8 = new String[1];
            strArr8[0] = (this.mIsInjectSwitchOn ? 1 : 0) + "";
            strArr[6] = strArr8;
            return strArr;
        }
    }

    /* loaded from: classes.dex */
    public static class InjectResultRecord extends BaseRecord {
        public int mInjectRanking = 0;
        public boolean mInjectResult = false;
        public boolean mIsKilled = false;
        public String mTargetProc2Inject;
        public String mVersionName;

        public String toString() {
            return "";
        }

        /* renamed from: mD */
        public String[][] m13342mD() {
            String[][] strArr = new String[7];
            String[] strArr2 = new String[1];
            strArr2[0] = this.mID + "";
            strArr[0] = strArr2;
            String[] strArr3 = new String[1];
            strArr3[0] = this.mPkg;
            strArr[1] = strArr3;
            String[] strArr4 = new String[1];
            strArr4[0] = this.mVersionName + "";
            strArr[2] = strArr4;
            String[] strArr5 = new String[1];
            strArr5[0] = this.mTargetProc2Inject + "";
            strArr[3] = strArr5;
            String[] strArr6 = new String[1];
            strArr6[0] = this.mInjectRanking + "";
            strArr[4] = strArr6;
            String[] strArr7 = new String[1];
            strArr7[0] = (this.mInjectResult ? 1 : 0) + "";
            strArr[5] = strArr7;
            String[] strArr8 = new String[1];
            strArr8[0] = (this.mIsKilled ? 1 : 0) + "";
            strArr[6] = strArr8;
            return strArr;
        }
    }
}
