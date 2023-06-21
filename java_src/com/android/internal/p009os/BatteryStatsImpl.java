package com.android.internal.p009os;

import andhook.lib.xposed.callbacks.XCallback;
import android.os.BatteryStats;
import android.os.Handler;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.p003os.WorkSource;
import android.telephony.SignalStrength;
import android.util.Log;
import android.util.Printer;
import android.util.SparseArray;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.android.internal.os.BatteryStatsImpl */
/* loaded from: classes.dex */
public final class BatteryStatsImpl extends BatteryStats {
    private static final String BATCHED_WAKELOCK_NAME = "*overflow*";
    private static final int BATTERY_PLUGGED_NONE = 0;
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_HISTORY = false;
    static final long DELAY_UPDATE_WAKELOCKS = 5000;
    private static final int MAGIC = -1166707595;
    static final int MAX_HISTORY_BUFFER = 131072;
    private static final int MAX_HISTORY_ITEMS = 2000;
    static final int MAX_MAX_HISTORY_BUFFER = 147456;
    private static final int MAX_MAX_HISTORY_ITEMS = 3000;
    private static final int MAX_WAKELOCKS_PER_UID = 30;
    private static final int MAX_WAKELOCKS_PER_UID_IN_SYSTEM = 50;
    static final int MSG_REPORT_POWER_CHANGE = 2;
    static final int MSG_UPDATE_WAKELOCKS = 1;
    private static final String TAG = "BatteryStatsImpl";
    private static final boolean USE_OLD_HISTORY = false;
    private static final int VERSION = 61;
    private static int sNumSpeedSteps;
    boolean mAudioOn;
    StopwatchTimer mAudioOnTimer;
    long mBatteryLastRealtime;
    long mBatteryLastUptime;
    long mBatteryRealtime;
    long mBatteryUptime;
    boolean mBluetoothOn;
    StopwatchTimer mBluetoothOnTimer;
    private int mBluetoothPingCount;
    private int mBluetoothPingStart;
    private BatteryCallback mCallback;
    int mChangedBufferStates;
    int mChangedStates;
    int mDischargeAmountScreenOff;
    int mDischargeAmountScreenOffSinceCharge;
    int mDischargeAmountScreenOn;
    int mDischargeAmountScreenOnSinceCharge;
    int mDischargeCurrentLevel;
    int mDischargeScreenOffUnplugLevel;
    int mDischargeScreenOnUnplugLevel;
    int mDischargeStartLevel;
    int mDischargeUnplugLevel;
    final ArrayList<StopwatchTimer> mFullTimers;
    final ArrayList<StopwatchTimer> mFullWifiLockTimers;
    boolean mGlobalWifiRunning;
    StopwatchTimer mGlobalWifiRunningTimer;
    int mGpsNesting;
    private final MyHandler mHandler;
    boolean mHaveBatteryLevel;
    int mHighDischargeAmountSinceCharge;
    BatteryStats.HistoryItem mHistory;
    long mHistoryBaseTime;
    final Parcel mHistoryBuffer;
    int mHistoryBufferLastPos;
    BatteryStats.HistoryItem mHistoryCache;
    final BatteryStats.HistoryItem mHistoryCur;
    BatteryStats.HistoryItem mHistoryEnd;
    private BatteryStats.HistoryItem mHistoryIterator;
    BatteryStats.HistoryItem mHistoryLastEnd;
    final BatteryStats.HistoryItem mHistoryLastLastWritten;
    final BatteryStats.HistoryItem mHistoryLastWritten;
    boolean mHistoryOverflow;
    final BatteryStats.HistoryItem mHistoryReadTmp;
    Counter mInputEventCounter;
    private boolean mIteratingHistory;
    private final HashMap<String, SamplingTimer> mKernelWakelockStats;
    long mLastHistoryTime;
    final ArrayList<StopwatchTimer> mLastPartialTimers;
    long mLastRealtime;
    long mLastUptime;
    long mLastWriteTime;
    int mLowDischargeAmountSinceCharge;
    private long[] mMobileDataRx;
    private long[] mMobileDataTx;
    int mNumHistoryItems;
    boolean mOnBattery;
    boolean mOnBatteryInternal;
    final ArrayList<StopwatchTimer> mPartialTimers;
    Parcel mPendingWrite;
    int mPhoneDataConnectionType;
    final StopwatchTimer[] mPhoneDataConnectionsTimer;
    boolean mPhoneOn;
    StopwatchTimer mPhoneOnTimer;
    private int mPhoneServiceState;
    private int mPhoneServiceStateRaw;
    StopwatchTimer mPhoneSignalScanningTimer;
    int mPhoneSignalStrengthBin;
    int mPhoneSignalStrengthBinRaw;
    private int mPhoneSimStateRaw;
    private final Map<String, KernelWakelockStats> mProcWakelockFileStats;
    private final long[] mProcWakelocksData;
    private final String[] mProcWakelocksName;
    private long mRadioDataStart;
    private long mRadioDataUptime;
    private boolean mReadOverflow;
    long mRealtime;
    long mRealtimeStart;
    boolean mRecordingHistory;
    final ArrayList<StopwatchTimer> mScanWifiLockTimers;
    int mScreenBrightnessBin;
    final StopwatchTimer[] mScreenBrightnessTimer;
    boolean mScreenOn;
    StopwatchTimer mScreenOnTimer;
    int mSensorNesting;
    final SparseArray<ArrayList<StopwatchTimer>> mSensorTimers;
    boolean mShuttingDown;
    int mStartCount;
    private long[] mTotalDataRx;
    private long[] mTotalDataTx;
    long mTrackBatteryPastRealtime;
    long mTrackBatteryPastUptime;
    long mTrackBatteryRealtimeStart;
    long mTrackBatteryUptimeStart;
    private HashMap<String, Integer> mUidCache;
    final SparseArray<Uid> mUidStats;
    final ArrayList<Unpluggable> mUnpluggables;
    long mUnpluggedBatteryRealtime;
    long mUnpluggedBatteryUptime;
    long mUptime;
    long mUptimeStart;
    boolean mVideoOn;
    StopwatchTimer mVideoOnTimer;
    int mWakeLockNesting;
    int mWifiFullLockNesting;
    int mWifiMulticastNesting;
    final ArrayList<StopwatchTimer> mWifiMulticastTimers;
    boolean mWifiOn;
    StopwatchTimer mWifiOnTimer;
    int mWifiOnUid;
    final ArrayList<StopwatchTimer> mWifiRunningTimers;
    int mWifiScanLockNesting;
    final ArrayList<StopwatchTimer> mWindowTimers;
    final ReentrantLock mWriteLock;
    private static int sKernelWakelockUpdateVersion = 0;
    private static final int[] PROC_WAKELOCKS_FORMAT = new int[0];
    public static final Parcelable.Creator<BatteryStatsImpl> CREATOR = new Parcelable.Creator<BatteryStatsImpl>() { // from class: com.android.internal.os.BatteryStatsImpl.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BatteryStatsImpl createFromParcel(Parcel parcel) {
            return new BatteryStatsImpl(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BatteryStatsImpl[] newArray(int i) {
            return new BatteryStatsImpl[i];
        }
    };

    /* renamed from: com.android.internal.os.BatteryStatsImpl$BatteryCallback */
    /* loaded from: classes.dex */
    public interface BatteryCallback {
        void batteryNeedsCpuUpdate();

        void batteryPowerChanged(boolean z);
    }

    /* renamed from: com.android.internal.os.BatteryStatsImpl$Unpluggable */
    /* loaded from: classes.dex */
    public interface Unpluggable {
        void plug(long j, long j2);

        void unplug(long j, long j2);
    }

    /* renamed from: com.android.internal.os.BatteryStatsImpl$MyHandler */
    /* loaded from: classes.dex */
    final class MyHandler extends Handler {
        MyHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            BatteryCallback batteryCallback = BatteryStatsImpl.this.mCallback;
            switch (message.what) {
                case 1:
                    if (batteryCallback != null) {
                        batteryCallback.batteryNeedsCpuUpdate();
                        return;
                    }
                    return;
                case 2:
                    if (batteryCallback != null) {
                        batteryCallback.batteryPowerChanged(message.arg1 != 0);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public Map<String, ? extends SamplingTimer> getKernelWakelockStats() {
        return this.mKernelWakelockStats;
    }

    public BatteryStatsImpl() {
        this.mHandler = null;
        this.mUidStats = new SparseArray<>();
        this.mPartialTimers = new ArrayList<>();
        this.mFullTimers = new ArrayList<>();
        this.mWindowTimers = new ArrayList<>();
        this.mSensorTimers = new SparseArray<>();
        this.mWifiRunningTimers = new ArrayList<>();
        this.mFullWifiLockTimers = new ArrayList<>();
        this.mScanWifiLockTimers = new ArrayList<>();
        this.mWifiMulticastTimers = new ArrayList<>();
        this.mLastPartialTimers = new ArrayList<>();
        this.mUnpluggables = new ArrayList<>();
        this.mHaveBatteryLevel = false;
        this.mRecordingHistory = true;
        this.mHistoryBuffer = Parcel.obtain();
        this.mHistoryLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryLastLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryReadTmp = new BatteryStats.HistoryItem();
        this.mHistoryBufferLastPos = -1;
        this.mHistoryOverflow = false;
        this.mLastHistoryTime = 0L;
        this.mHistoryCur = new BatteryStats.HistoryItem();
        this.mScreenBrightnessBin = -1;
        this.mScreenBrightnessTimer = new StopwatchTimer[5];
        this.mPhoneSignalStrengthBin = -1;
        this.mPhoneSignalStrengthBinRaw = -1;
        this.mPhoneDataConnectionType = -1;
        this.mPhoneDataConnectionsTimer = new StopwatchTimer[16];
        this.mWifiOnUid = -1;
        this.mLastWriteTime = 0L;
        this.mMobileDataTx = new long[4];
        this.mMobileDataRx = new long[4];
        this.mTotalDataTx = new long[4];
        this.mTotalDataRx = new long[4];
        this.mBluetoothPingStart = -1;
        this.mPhoneServiceState = -1;
        this.mPhoneServiceStateRaw = -1;
        this.mPhoneSimStateRaw = -1;
        this.mKernelWakelockStats = new HashMap<>();
        this.mProcWakelocksName = new String[3];
        this.mProcWakelocksData = new long[3];
        this.mProcWakelockFileStats = new HashMap();
        this.mUidCache = new HashMap<>();
        this.mChangedBufferStates = 0;
        this.mChangedStates = 0;
        this.mWifiFullLockNesting = 0;
        this.mWifiScanLockNesting = 0;
        this.mWifiMulticastNesting = 0;
        this.mPendingWrite = null;
        this.mWriteLock = new ReentrantLock();
    }

    public BatteryStatsImpl(String str) {
        this.mHandler = null;
        this.mUidStats = new SparseArray<>();
        this.mPartialTimers = new ArrayList<>();
        this.mFullTimers = new ArrayList<>();
        this.mWindowTimers = new ArrayList<>();
        this.mSensorTimers = new SparseArray<>();
        this.mWifiRunningTimers = new ArrayList<>();
        this.mFullWifiLockTimers = new ArrayList<>();
        this.mScanWifiLockTimers = new ArrayList<>();
        this.mWifiMulticastTimers = new ArrayList<>();
        this.mLastPartialTimers = new ArrayList<>();
        this.mUnpluggables = new ArrayList<>();
        this.mHaveBatteryLevel = false;
        this.mRecordingHistory = true;
        this.mHistoryBuffer = Parcel.obtain();
        this.mHistoryLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryLastLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryReadTmp = new BatteryStats.HistoryItem();
        this.mHistoryBufferLastPos = -1;
        this.mHistoryOverflow = false;
        this.mLastHistoryTime = 0L;
        this.mHistoryCur = new BatteryStats.HistoryItem();
        this.mScreenBrightnessBin = -1;
        this.mScreenBrightnessTimer = new StopwatchTimer[5];
        this.mPhoneSignalStrengthBin = -1;
        this.mPhoneSignalStrengthBinRaw = -1;
        this.mPhoneDataConnectionType = -1;
        this.mPhoneDataConnectionsTimer = new StopwatchTimer[16];
        this.mWifiOnUid = -1;
        this.mLastWriteTime = 0L;
        this.mMobileDataTx = new long[4];
        this.mMobileDataRx = new long[4];
        this.mTotalDataTx = new long[4];
        this.mTotalDataRx = new long[4];
        this.mBluetoothPingStart = -1;
        this.mPhoneServiceState = -1;
        this.mPhoneServiceStateRaw = -1;
        this.mPhoneSimStateRaw = -1;
        this.mKernelWakelockStats = new HashMap<>();
        this.mProcWakelocksName = new String[3];
        this.mProcWakelocksData = new long[3];
        this.mProcWakelockFileStats = new HashMap();
        this.mUidCache = new HashMap<>();
        this.mChangedBufferStates = 0;
        this.mChangedStates = 0;
        this.mWifiFullLockNesting = 0;
        this.mWifiScanLockNesting = 0;
        this.mWifiMulticastNesting = 0;
        this.mPendingWrite = null;
        this.mWriteLock = new ReentrantLock();
    }

    public BatteryStatsImpl(Parcel parcel) {
        this.mHandler = null;
        this.mUidStats = new SparseArray<>();
        this.mPartialTimers = new ArrayList<>();
        this.mFullTimers = new ArrayList<>();
        this.mWindowTimers = new ArrayList<>();
        this.mSensorTimers = new SparseArray<>();
        this.mWifiRunningTimers = new ArrayList<>();
        this.mFullWifiLockTimers = new ArrayList<>();
        this.mScanWifiLockTimers = new ArrayList<>();
        this.mWifiMulticastTimers = new ArrayList<>();
        this.mLastPartialTimers = new ArrayList<>();
        this.mUnpluggables = new ArrayList<>();
        this.mHaveBatteryLevel = false;
        this.mRecordingHistory = true;
        this.mHistoryBuffer = Parcel.obtain();
        this.mHistoryLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryLastLastWritten = new BatteryStats.HistoryItem();
        this.mHistoryReadTmp = new BatteryStats.HistoryItem();
        this.mHistoryBufferLastPos = -1;
        this.mHistoryOverflow = false;
        this.mLastHistoryTime = 0L;
        this.mHistoryCur = new BatteryStats.HistoryItem();
        this.mScreenBrightnessBin = -1;
        this.mScreenBrightnessTimer = new StopwatchTimer[5];
        this.mPhoneSignalStrengthBin = -1;
        this.mPhoneSignalStrengthBinRaw = -1;
        this.mPhoneDataConnectionType = -1;
        this.mPhoneDataConnectionsTimer = new StopwatchTimer[16];
        this.mWifiOnUid = -1;
        this.mLastWriteTime = 0L;
        this.mMobileDataTx = new long[4];
        this.mMobileDataRx = new long[4];
        this.mTotalDataTx = new long[4];
        this.mTotalDataRx = new long[4];
        this.mBluetoothPingStart = -1;
        this.mPhoneServiceState = -1;
        this.mPhoneServiceStateRaw = -1;
        this.mPhoneSimStateRaw = -1;
        this.mKernelWakelockStats = new HashMap<>();
        this.mProcWakelocksName = new String[3];
        this.mProcWakelocksData = new long[3];
        this.mProcWakelockFileStats = new HashMap();
        this.mUidCache = new HashMap<>();
        this.mChangedBufferStates = 0;
        this.mChangedStates = 0;
        this.mWifiFullLockNesting = 0;
        this.mWifiScanLockNesting = 0;
        this.mWifiMulticastNesting = 0;
        this.mPendingWrite = null;
        this.mWriteLock = new ReentrantLock();
    }

    /* renamed from: com.android.internal.os.BatteryStatsImpl$Counter */
    /* loaded from: classes.dex */
    public static class Counter extends BatteryStats.Counter implements Unpluggable {
        final AtomicInteger mCount = new AtomicInteger();
        int mLastCount;
        int mLoadedCount;
        int mPluggedCount;
        final ArrayList<Unpluggable> mUnpluggables;
        int mUnpluggedCount;

        Counter(ArrayList<Unpluggable> arrayList, Parcel parcel) {
            this.mUnpluggables = arrayList;
            this.mPluggedCount = parcel.readInt();
            this.mCount.set(this.mPluggedCount);
            this.mLoadedCount = parcel.readInt();
            this.mLastCount = 0;
            this.mUnpluggedCount = parcel.readInt();
            arrayList.add(this);
        }

        Counter(ArrayList<Unpluggable> arrayList) {
            this.mUnpluggables = arrayList;
            arrayList.add(this);
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeInt(this.mCount.get());
            parcel.writeInt(this.mLoadedCount);
            parcel.writeInt(this.mUnpluggedCount);
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Unpluggable
        public void unplug(long j, long j2) {
            this.mUnpluggedCount = this.mPluggedCount;
            this.mCount.set(this.mPluggedCount);
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Unpluggable
        public void plug(long j, long j2) {
            this.mPluggedCount = this.mCount.get();
        }

        public static void writeCounterToParcel(Parcel parcel, Counter counter) {
            if (counter == null) {
                parcel.writeInt(0);
                return;
            }
            parcel.writeInt(1);
            counter.writeToParcel(parcel);
        }

        public int getCountLocked(int i) {
            if (i == 1) {
                return this.mLastCount;
            }
            int i2 = this.mCount.get();
            if (i == 3) {
                return i2 - this.mUnpluggedCount;
            }
            if (i != 0) {
                return i2 - this.mLoadedCount;
            }
            return i2;
        }

        public void logState(Printer printer, String str) {
            printer.println(String.valueOf(str) + "mCount=" + this.mCount.get() + " mLoadedCount=" + this.mLoadedCount + " mLastCount=" + this.mLastCount + " mUnpluggedCount=" + this.mUnpluggedCount + " mPluggedCount=" + this.mPluggedCount);
        }

        void stepAtomic() {
            this.mCount.incrementAndGet();
        }

        void reset(boolean z) {
            this.mCount.set(0);
            this.mUnpluggedCount = 0;
            this.mPluggedCount = 0;
            this.mLastCount = 0;
            this.mLoadedCount = 0;
            if (z) {
                detach();
            }
        }

        void detach() {
            this.mUnpluggables.remove(this);
        }

        void writeSummaryFromParcelLocked(Parcel parcel) {
            parcel.writeInt(this.mCount.get());
        }

        void readSummaryFromParcelLocked(Parcel parcel) {
            this.mLoadedCount = parcel.readInt();
            this.mCount.set(this.mLoadedCount);
            this.mLastCount = 0;
            int i = this.mLoadedCount;
            this.mPluggedCount = i;
            this.mUnpluggedCount = i;
        }
    }

    /* renamed from: com.android.internal.os.BatteryStatsImpl$SamplingCounter */
    /* loaded from: classes.dex */
    public static class SamplingCounter extends Counter {
        SamplingCounter(ArrayList<Unpluggable> arrayList, Parcel parcel) {
            super(arrayList, parcel);
        }

        SamplingCounter(ArrayList<Unpluggable> arrayList) {
            super(arrayList);
        }

        public void addCountAtomic(long j) {
            this.mCount.addAndGet((int) j);
        }
    }

    /* renamed from: com.android.internal.os.BatteryStatsImpl$Timer */
    /* loaded from: classes.dex */
    public static abstract class Timer extends BatteryStats.Timer implements Unpluggable {
        int mCount;
        int mLastCount;
        long mLastTime;
        int mLoadedCount;
        long mLoadedTime;
        long mTotalTime;
        final int mType;
        final ArrayList<Unpluggable> mUnpluggables;
        int mUnpluggedCount;
        long mUnpluggedTime;

        protected abstract int computeCurrentCountLocked();

        protected abstract long computeRunTimeLocked(long j);

        Timer(int i, ArrayList<Unpluggable> arrayList, Parcel parcel) {
            this.mType = i;
            this.mUnpluggables = arrayList;
            this.mCount = parcel.readInt();
            this.mLoadedCount = parcel.readInt();
            this.mLastCount = 0;
            this.mUnpluggedCount = parcel.readInt();
            this.mTotalTime = parcel.readLong();
            this.mLoadedTime = parcel.readLong();
            this.mLastTime = 0L;
            this.mUnpluggedTime = parcel.readLong();
            arrayList.add(this);
        }

        Timer(int i, ArrayList<Unpluggable> arrayList) {
            this.mType = i;
            this.mUnpluggables = arrayList;
            arrayList.add(this);
        }

        boolean reset(BatteryStatsImpl batteryStatsImpl, boolean z) {
            this.mLastTime = 0L;
            this.mLoadedTime = 0L;
            this.mTotalTime = 0L;
            this.mLastCount = 0;
            this.mLoadedCount = 0;
            this.mCount = 0;
            if (z) {
                detach();
                return true;
            }
            return true;
        }

        void detach() {
            this.mUnpluggables.remove(this);
        }

        public void writeToParcel(Parcel parcel, long j) {
            parcel.writeInt(this.mCount);
            parcel.writeInt(this.mLoadedCount);
            parcel.writeInt(this.mUnpluggedCount);
            parcel.writeLong(computeRunTimeLocked(j));
            parcel.writeLong(this.mLoadedTime);
            parcel.writeLong(this.mUnpluggedTime);
        }

        public void unplug(long j, long j2) {
            this.mUnpluggedTime = computeRunTimeLocked(j2);
            this.mUnpluggedCount = this.mCount;
        }

        public void plug(long j, long j2) {
            this.mTotalTime = computeRunTimeLocked(j2);
            this.mCount = computeCurrentCountLocked();
        }

        public static void writeTimerToParcel(Parcel parcel, Timer timer, long j) {
            if (timer == null) {
                parcel.writeInt(0);
                return;
            }
            parcel.writeInt(1);
            timer.writeToParcel(parcel, j);
        }

        public long getTotalTimeLocked(long j, int i) {
            if (i == 1) {
                return this.mLastTime;
            }
            long computeRunTimeLocked = computeRunTimeLocked(j);
            if (i == 3) {
                return computeRunTimeLocked - this.mUnpluggedTime;
            }
            if (i != 0) {
                return computeRunTimeLocked - this.mLoadedTime;
            }
            return computeRunTimeLocked;
        }

        public int getCountLocked(int i) {
            if (i == 1) {
                return this.mLastCount;
            }
            int computeCurrentCountLocked = computeCurrentCountLocked();
            if (i == 3) {
                return computeCurrentCountLocked - this.mUnpluggedCount;
            }
            if (i != 0) {
                return computeCurrentCountLocked - this.mLoadedCount;
            }
            return computeCurrentCountLocked;
        }

        public void logState(Printer printer, String str) {
            printer.println(String.valueOf(str) + " mCount=" + this.mCount + " mLoadedCount=" + this.mLoadedCount + " mLastCount=" + this.mLastCount + " mUnpluggedCount=" + this.mUnpluggedCount);
            printer.println(String.valueOf(str) + "mTotalTime=" + this.mTotalTime + " mLoadedTime=" + this.mLoadedTime);
            printer.println(String.valueOf(str) + "mLastTime=" + this.mLastTime + " mUnpluggedTime=" + this.mUnpluggedTime);
        }

        void writeSummaryFromParcelLocked(Parcel parcel, long j) {
            parcel.writeLong((computeRunTimeLocked(j) + 500) / 1000);
            parcel.writeInt(this.mCount);
        }

        void readSummaryFromParcelLocked(Parcel parcel) {
            long readLong = parcel.readLong() * 1000;
            this.mLoadedTime = readLong;
            this.mTotalTime = readLong;
            this.mLastTime = 0L;
            this.mUnpluggedTime = this.mTotalTime;
            int readInt = parcel.readInt();
            this.mLoadedCount = readInt;
            this.mCount = readInt;
            this.mLastCount = 0;
            this.mUnpluggedCount = this.mCount;
        }
    }

    /* renamed from: com.android.internal.os.BatteryStatsImpl$SamplingTimer */
    /* loaded from: classes.dex */
    public static final class SamplingTimer extends Timer {
        int mCurrentReportedCount;
        long mCurrentReportedTotalTime;
        boolean mInDischarge;
        boolean mTrackingReportedValues;
        int mUnpluggedReportedCount;
        long mUnpluggedReportedTotalTime;
        int mUpdateVersion;

        SamplingTimer(ArrayList<Unpluggable> arrayList, boolean z, Parcel parcel) {
            super(0, arrayList, parcel);
            this.mCurrentReportedCount = parcel.readInt();
            this.mUnpluggedReportedCount = parcel.readInt();
            this.mCurrentReportedTotalTime = parcel.readLong();
            this.mUnpluggedReportedTotalTime = parcel.readLong();
            this.mTrackingReportedValues = parcel.readInt() == 1;
            this.mInDischarge = z;
        }

        SamplingTimer(ArrayList<Unpluggable> arrayList, boolean z, boolean z2) {
            super(0, arrayList);
            this.mTrackingReportedValues = z2;
            this.mInDischarge = z;
        }

        public void setStale() {
            this.mTrackingReportedValues = false;
            this.mUnpluggedReportedTotalTime = 0L;
            this.mUnpluggedReportedCount = 0;
        }

        public void setUpdateVersion(int i) {
            this.mUpdateVersion = i;
        }

        public int getUpdateVersion() {
            return this.mUpdateVersion;
        }

        public void updateCurrentReportedCount(int i) {
            if (this.mInDischarge && this.mUnpluggedReportedCount == 0) {
                this.mUnpluggedReportedCount = i;
                this.mTrackingReportedValues = true;
            }
            this.mCurrentReportedCount = i;
        }

        public void updateCurrentReportedTotalTime(long j) {
            if (this.mInDischarge && this.mUnpluggedReportedTotalTime == 0) {
                this.mUnpluggedReportedTotalTime = j;
                this.mTrackingReportedValues = true;
            }
            this.mCurrentReportedTotalTime = j;
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Timer, com.android.internal.p009os.BatteryStatsImpl.Unpluggable
        public void unplug(long j, long j2) {
            super.unplug(j, j2);
            if (this.mTrackingReportedValues) {
                this.mUnpluggedReportedTotalTime = this.mCurrentReportedTotalTime;
                this.mUnpluggedReportedCount = this.mCurrentReportedCount;
            }
            this.mInDischarge = true;
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Timer, com.android.internal.p009os.BatteryStatsImpl.Unpluggable
        public void plug(long j, long j2) {
            super.plug(j, j2);
            this.mInDischarge = false;
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Timer
        public void logState(Printer printer, String str) {
            super.logState(printer, str);
            printer.println(String.valueOf(str) + "mCurrentReportedCount=" + this.mCurrentReportedCount + " mUnpluggedReportedCount=" + this.mUnpluggedReportedCount + " mCurrentReportedTotalTime=" + this.mCurrentReportedTotalTime + " mUnpluggedReportedTotalTime=" + this.mUnpluggedReportedTotalTime);
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Timer
        protected long computeRunTimeLocked(long j) {
            return ((this.mInDischarge && this.mTrackingReportedValues) ? this.mCurrentReportedTotalTime - this.mUnpluggedReportedTotalTime : 0L) + this.mTotalTime;
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Timer
        protected int computeCurrentCountLocked() {
            return ((this.mInDischarge && this.mTrackingReportedValues) ? this.mCurrentReportedCount - this.mUnpluggedReportedCount : 0) + this.mCount;
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Timer
        public void writeToParcel(Parcel parcel, long j) {
            super.writeToParcel(parcel, j);
            parcel.writeInt(this.mCurrentReportedCount);
            parcel.writeInt(this.mUnpluggedReportedCount);
            parcel.writeLong(this.mCurrentReportedTotalTime);
            parcel.writeLong(this.mUnpluggedReportedTotalTime);
            parcel.writeInt(this.mTrackingReportedValues ? 1 : 0);
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Timer
        boolean reset(BatteryStatsImpl batteryStatsImpl, boolean z) {
            super.reset(batteryStatsImpl, z);
            setStale();
            return true;
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Timer
        void writeSummaryFromParcelLocked(Parcel parcel, long j) {
            super.writeSummaryFromParcelLocked(parcel, j);
            parcel.writeLong(this.mCurrentReportedTotalTime);
            parcel.writeInt(this.mCurrentReportedCount);
            parcel.writeInt(this.mTrackingReportedValues ? 1 : 0);
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Timer
        void readSummaryFromParcelLocked(Parcel parcel) {
            super.readSummaryFromParcelLocked(parcel);
            long readLong = parcel.readLong();
            this.mCurrentReportedTotalTime = readLong;
            this.mUnpluggedReportedTotalTime = readLong;
            int readInt = parcel.readInt();
            this.mCurrentReportedCount = readInt;
            this.mUnpluggedReportedCount = readInt;
            this.mTrackingReportedValues = parcel.readInt() == 1;
        }
    }

    /* renamed from: com.android.internal.os.BatteryStatsImpl$StopwatchTimer */
    /* loaded from: classes.dex */
    public static final class StopwatchTimer extends Timer {
        long mAcquireTime;
        boolean mInList;
        int mNesting;
        long mTimeout;
        final ArrayList<StopwatchTimer> mTimerPool;
        final Uid mUid;
        long mUpdateTime;

        StopwatchTimer(Uid uid, int i, ArrayList<StopwatchTimer> arrayList, ArrayList<Unpluggable> arrayList2, Parcel parcel) {
            super(i, arrayList2, parcel);
            this.mUid = uid;
            this.mTimerPool = arrayList;
            this.mUpdateTime = parcel.readLong();
        }

        StopwatchTimer(Uid uid, int i, ArrayList<StopwatchTimer> arrayList, ArrayList<Unpluggable> arrayList2) {
            super(i, arrayList2);
            this.mUid = uid;
            this.mTimerPool = arrayList;
        }

        void setTimeout(long j) {
            this.mTimeout = j;
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Timer
        public void writeToParcel(Parcel parcel, long j) {
            super.writeToParcel(parcel, j);
            parcel.writeLong(this.mUpdateTime);
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Timer, com.android.internal.p009os.BatteryStatsImpl.Unpluggable
        public void plug(long j, long j2) {
            if (this.mNesting > 0) {
                super.plug(j, j2);
                this.mUpdateTime = j2;
            }
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Timer
        public void logState(Printer printer, String str) {
            super.logState(printer, str);
            printer.println(String.valueOf(str) + "mNesting=" + this.mNesting + "mUpdateTime=" + this.mUpdateTime + " mAcquireTime=" + this.mAcquireTime);
        }

        void startRunningLocked(BatteryStatsImpl batteryStatsImpl) {
            int i = this.mNesting;
            this.mNesting = i + 1;
            if (i == 0) {
                this.mUpdateTime = batteryStatsImpl.getBatteryRealtimeLocked(SystemClock.elapsedRealtime() * 1000);
                if (this.mTimerPool != null) {
                    refreshTimersLocked(batteryStatsImpl, this.mTimerPool);
                    this.mTimerPool.add(this);
                }
                this.mCount++;
                this.mAcquireTime = this.mTotalTime;
            }
        }

        boolean isRunningLocked() {
            return this.mNesting > 0;
        }

        void stopRunningLocked(BatteryStatsImpl batteryStatsImpl) {
            if (this.mNesting != 0) {
                int i = this.mNesting - 1;
                this.mNesting = i;
                if (i == 0) {
                    if (this.mTimerPool != null) {
                        refreshTimersLocked(batteryStatsImpl, this.mTimerPool);
                        this.mTimerPool.remove(this);
                    } else {
                        long batteryRealtimeLocked = batteryStatsImpl.getBatteryRealtimeLocked(SystemClock.elapsedRealtime() * 1000);
                        this.mNesting = 1;
                        this.mTotalTime = computeRunTimeLocked(batteryRealtimeLocked);
                        this.mNesting = 0;
                    }
                    if (this.mTotalTime == this.mAcquireTime) {
                        this.mCount--;
                    }
                }
            }
        }

        private static void refreshTimersLocked(BatteryStatsImpl batteryStatsImpl, ArrayList<StopwatchTimer> arrayList) {
            long batteryRealtimeLocked = batteryStatsImpl.getBatteryRealtimeLocked(SystemClock.elapsedRealtime() * 1000);
            int size = arrayList.size();
            for (int i = size - 1; i >= 0; i--) {
                StopwatchTimer stopwatchTimer = arrayList.get(i);
                long j = batteryRealtimeLocked - stopwatchTimer.mUpdateTime;
                if (j > 0) {
                    stopwatchTimer.mTotalTime = (j / size) + stopwatchTimer.mTotalTime;
                }
                stopwatchTimer.mUpdateTime = batteryRealtimeLocked;
            }
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Timer
        protected long computeRunTimeLocked(long j) {
            long j2 = 0;
            if (this.mTimeout > 0 && j > this.mUpdateTime + this.mTimeout) {
                j = this.mUpdateTime + this.mTimeout;
            }
            long j3 = this.mTotalTime;
            if (this.mNesting > 0) {
                j2 = (j - this.mUpdateTime) / (this.mTimerPool != null ? this.mTimerPool.size() : 1);
            }
            return j2 + j3;
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Timer
        protected int computeCurrentCountLocked() {
            return this.mCount;
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Timer
        boolean reset(BatteryStatsImpl batteryStatsImpl, boolean z) {
            boolean z2 = true;
            boolean z3 = this.mNesting <= 0;
            if (!z3 || !z) {
                z2 = false;
            }
            super.reset(batteryStatsImpl, z2);
            if (this.mNesting > 0) {
                this.mUpdateTime = batteryStatsImpl.getBatteryRealtimeLocked(SystemClock.elapsedRealtime() * 1000);
            }
            this.mAcquireTime = this.mTotalTime;
            return z3;
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Timer
        void detach() {
            super.detach();
            if (this.mTimerPool != null) {
                this.mTimerPool.remove(this);
            }
        }

        @Override // com.android.internal.p009os.BatteryStatsImpl.Timer
        void readSummaryFromParcelLocked(Parcel parcel) {
            super.readSummaryFromParcelLocked(parcel);
            this.mNesting = 0;
        }
    }

    private final Map<String, KernelWakelockStats> readKernelWakelockStats() {
        int i;
        byte[] bArr = new byte[8192];
        try {
            FileInputStream fileInputStream = new FileInputStream("/proc/wakelocks");
            int read = fileInputStream.read(bArr);
            fileInputStream.close();
            if (read > 0) {
                i = 0;
                while (true) {
                    if (i < read) {
                        if (bArr[i] == 0) {
                            break;
                        }
                        i++;
                    } else {
                        i = read;
                        break;
                    }
                }
            } else {
                i = read;
            }
            return parseProcWakelocks(bArr, i);
        } catch (FileNotFoundException e) {
            return null;
        } catch (IOException e2) {
            return null;
        }
    }

    private final Map<String, KernelWakelockStats> parseProcWakelocks(byte[] bArr, int i) {
        return null;
    }

    /* renamed from: com.android.internal.os.BatteryStatsImpl$KernelWakelockStats */
    /* loaded from: classes.dex */
    class KernelWakelockStats {
        public int mCount;
        public long mTotalTime;
        public int mVersion;

        KernelWakelockStats(int i, long j, int i2) {
            this.mCount = i;
            this.mTotalTime = j;
            this.mVersion = i2;
        }
    }

    public SamplingTimer getKernelWakelockTimerLocked(String str) {
        SamplingTimer samplingTimer = this.mKernelWakelockStats.get(str);
        if (samplingTimer == null) {
            SamplingTimer samplingTimer2 = new SamplingTimer(this.mUnpluggables, this.mOnBatteryInternal, true);
            this.mKernelWakelockStats.put(str, samplingTimer2);
            return samplingTimer2;
        }
        return samplingTimer;
    }

    private void doDataPlug(long[] jArr, long j) {
        jArr[1] = jArr[3];
        jArr[3] = -1;
    }

    private void doDataUnplug(long[] jArr, long j) {
        jArr[3] = j;
    }

    private long getCurrentRadioDataUptime() {
        try {
            File file = new File("/sys/devices/virtual/net/rmnet0/awake_time_ms");
            if (file.exists()) {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
                String readLine = bufferedReader.readLine();
                bufferedReader.close();
                return Long.parseLong(readLine) * 1000;
            }
            return 0L;
        } catch (IOException e) {
            return 0L;
        } catch (NumberFormatException e2) {
            return 0L;
        }
    }

    public long getRadioDataUptimeMs() {
        return getRadioDataUptime() / 1000;
    }

    public long getRadioDataUptime() {
        return this.mRadioDataStart == -1 ? this.mRadioDataUptime : getCurrentRadioDataUptime() - this.mRadioDataStart;
    }

    private int getCurrentBluetoothPingCount() {
        return -1;
    }

    public int getBluetoothPingCount() {
        return 0;
    }

    void addHistoryBufferLocked(long j) {
        if (this.mHaveBatteryLevel && this.mRecordingHistory) {
            long j2 = (this.mHistoryBaseTime + j) - this.mHistoryLastWritten.time;
            if (this.mHistoryBufferLastPos >= 0 && this.mHistoryLastWritten.cmd == 1 && j2 < 2000 && ((this.mHistoryLastWritten.states ^ this.mHistoryCur.states) & this.mChangedBufferStates) == 0) {
                this.mHistoryBuffer.setDataSize(this.mHistoryBufferLastPos);
                this.mHistoryBuffer.setDataPosition(this.mHistoryBufferLastPos);
                this.mHistoryBufferLastPos = -1;
                if (this.mHistoryLastLastWritten.cmd == 1 && j2 < 500 && this.mHistoryLastLastWritten.same(this.mHistoryCur)) {
                    this.mHistoryLastWritten.setTo(this.mHistoryLastLastWritten);
                    this.mHistoryLastLastWritten.cmd = (byte) 0;
                    return;
                }
                this.mChangedBufferStates |= this.mHistoryLastWritten.states ^ this.mHistoryCur.states;
                j = this.mHistoryLastWritten.time - this.mHistoryBaseTime;
                this.mHistoryLastWritten.setTo(this.mHistoryLastLastWritten);
            } else {
                this.mChangedBufferStates = 0;
            }
            int dataSize = this.mHistoryBuffer.dataSize();
            if (dataSize >= 131072) {
                if (!this.mHistoryOverflow) {
                    this.mHistoryOverflow = true;
                    addHistoryBufferLocked(j, (byte) 3);
                }
                if (this.mHistoryLastWritten.batteryLevel == this.mHistoryCur.batteryLevel && (dataSize >= MAX_MAX_HISTORY_BUFFER || ((this.mHistoryEnd.states ^ this.mHistoryCur.states) & 270270464) == 0)) {
                    return;
                }
            }
            addHistoryBufferLocked(j, (byte) 1);
        }
    }

    void addHistoryBufferLocked(long j, byte b) {
    }

    void addHistoryRecordLocked(long j) {
        addHistoryBufferLocked(j);
    }

    void addHistoryRecordLocked(long j, byte b) {
        BatteryStats.HistoryItem historyItem = this.mHistoryCache;
        if (historyItem != null) {
            this.mHistoryCache = historyItem.next;
        } else {
            historyItem = new BatteryStats.HistoryItem();
        }
        historyItem.setTo(this.mHistoryBaseTime + j, b, this.mHistoryCur);
        addHistoryRecordLocked(historyItem);
    }

    void addHistoryRecordLocked(BatteryStats.HistoryItem historyItem) {
        this.mNumHistoryItems++;
        historyItem.next = null;
        this.mHistoryLastEnd = this.mHistoryEnd;
        if (this.mHistoryEnd != null) {
            this.mHistoryEnd.next = historyItem;
            this.mHistoryEnd = historyItem;
            return;
        }
        this.mHistoryEnd = historyItem;
        this.mHistory = historyItem;
    }

    void clearHistoryLocked() {
    }

    public void doUnplugLocked(long j, long j2) {
    }

    public void doPlugLocked(long j, long j2) {
    }

    public void noteStartWakeLocked(int i, int i2, String str, int i3) {
    }

    public void noteStopWakeLocked(int i, int i2, String str, int i3) {
    }

    public void noteStartWakeFromSourceLocked(WorkSource workSource, int i, String str, int i2) {
        int size = workSource.size();
        for (int i3 = 0; i3 < size; i3++) {
            noteStartWakeLocked(workSource.get(i3), i, str, i2);
        }
    }

    public void noteStopWakeFromSourceLocked(WorkSource workSource, int i, String str, int i2) {
        int size = workSource.size();
        for (int i3 = 0; i3 < size; i3++) {
            noteStopWakeLocked(workSource.get(i3), i, str, i2);
        }
    }

    public int startAddingCpuLocked() {
        Uid uid;
        this.mHandler.removeMessages(1);
        if (this.mScreenOn) {
            return 0;
        }
        int size = this.mPartialTimers.size();
        if (size == 0) {
            this.mLastPartialTimers.clear();
            return 0;
        }
        for (int i = 0; i < size; i++) {
            StopwatchTimer stopwatchTimer = this.mPartialTimers.get(i);
            if (stopwatchTimer.mInList && (uid = stopwatchTimer.mUid) != null && uid.mUid != 1000) {
                return 50;
            }
        }
        return 0;
    }

    public void finishAddingCpuLocked(int i, int i2, int i3, long[] jArr) {
        int i4;
        int i5;
        Uid uidStatsLocked;
        int i6;
        Uid uid;
        Uid uid2;
        int size = this.mPartialTimers.size();
        if (i != 0) {
            int i7 = 0;
            int i8 = 0;
            while (i8 < size) {
                StopwatchTimer stopwatchTimer = this.mPartialTimers.get(i8);
                i8++;
                i7 = (!stopwatchTimer.mInList || (uid2 = stopwatchTimer.mUid) == null || uid2.mUid == 1000) ? i7 : i7 + 1;
            }
            if (i7 != 0) {
                int i9 = 0;
                i4 = i3;
                i5 = i2;
                while (i9 < size) {
                    StopwatchTimer stopwatchTimer2 = this.mPartialTimers.get(i9);
                    if (!stopwatchTimer2.mInList || (uid = stopwatchTimer2.mUid) == null || uid.mUid == 1000) {
                        i6 = i7;
                    } else {
                        int i10 = i5 / i7;
                        int i11 = i4 / i7;
                        i5 -= i10;
                        i4 -= i11;
                        i6 = i7 - 1;
                        Uid.Proc processStatsLocked = uid.getProcessStatsLocked("*wakelock*");
                        processStatsLocked.addCpuTimeLocked(i10, i11);
                        processStatsLocked.addSpeedStepTimes(jArr);
                    }
                    i9++;
                    i5 = i5;
                    i4 = i4;
                    i7 = i6;
                }
            } else {
                i4 = i3;
                i5 = i2;
            }
            if ((i5 != 0 || i4 != 0) && (uidStatsLocked = getUidStatsLocked(1000)) != null) {
                Uid.Proc processStatsLocked2 = uidStatsLocked.getProcessStatsLocked("*lost*");
                processStatsLocked2.addCpuTimeLocked(i5, i4);
                processStatsLocked2.addSpeedStepTimes(jArr);
            }
        }
        int size2 = this.mLastPartialTimers.size();
        boolean z = size != size2;
        for (int i12 = 0; i12 < size2 && !z; i12++) {
            z |= this.mPartialTimers.get(i12) != this.mLastPartialTimers.get(i12);
        }
        if (!z) {
            for (int i13 = 0; i13 < size2; i13++) {
                this.mPartialTimers.get(i13).mInList = true;
            }
            return;
        }
        for (int i14 = 0; i14 < size2; i14++) {
            this.mLastPartialTimers.get(i14).mInList = false;
        }
        this.mLastPartialTimers.clear();
        for (int i15 = 0; i15 < size; i15++) {
            StopwatchTimer stopwatchTimer3 = this.mPartialTimers.get(i15);
            stopwatchTimer3.mInList = true;
            this.mLastPartialTimers.add(stopwatchTimer3);
        }
    }

    public void noteProcessDiedLocked(int i, int i2) {
        Uid uid = this.mUidStats.get(i);
        if (uid != null) {
            uid.mPids.remove(i2);
        }
    }

    public long getProcessWakeTime(int i, int i2, long j) {
        BatteryStats.Uid.Pid pid;
        Uid uid = this.mUidStats.get(i);
        if (uid == null || (pid = uid.mPids.get(i2)) == null) {
            return 0L;
        }
        return pid.mWakeSum + (pid.mWakeStart != 0 ? j - pid.mWakeStart : 0L);
    }

    public void reportExcessiveWakeLocked(int i, String str, long j, long j2) {
        Uid uid = this.mUidStats.get(i);
        if (uid != null) {
            uid.reportExcessiveWakeLocked(str, j, j2);
        }
    }

    public void reportExcessiveCpuLocked(int i, String str, long j, long j2) {
        Uid uid = this.mUidStats.get(i);
        if (uid != null) {
            uid.reportExcessiveCpuLocked(str, j, j2);
        }
    }

    public void noteStartSensorLocked(int i, int i2) {
    }

    public void noteStopSensorLocked(int i, int i2) {
    }

    public void noteStartGpsLocked(int i) {
    }

    public void noteStopGpsLocked(int i) {
    }

    public void noteScreenOnLocked() {
    }

    public void noteScreenOffLocked() {
    }

    public void noteScreenBrightnessLocked(int i) {
    }

    public void noteInputEventAtomic() {
        this.mInputEventCounter.stepAtomic();
    }

    public void noteUserActivityLocked(int i, int i2) {
        getUidStatsLocked(i).noteUserActivityLocked(i2);
    }

    public void notePhoneOnLocked() {
    }

    public void notePhoneOffLocked() {
    }

    void stopAllSignalStrengthTimersLocked(int i) {
    }

    private int fixPhoneServiceState(int i, int i2) {
        return 0;
    }

    private void updateAllPhoneStateLocked(int i, int i2, int i3) {
    }

    public void notePhoneStateLocked(int i, int i2) {
        updateAllPhoneStateLocked(i, i2, this.mPhoneSignalStrengthBinRaw);
    }

    public void notePhoneSignalStrengthLocked(SignalStrength signalStrength) {
        updateAllPhoneStateLocked(this.mPhoneServiceStateRaw, this.mPhoneSimStateRaw, signalStrength.getLevel());
    }

    public void notePhoneDataConnectionStateLocked(int i, boolean z) {
    }

    public void noteWifiOnLocked() {
    }

    public void noteWifiOffLocked() {
    }

    public void noteAudioOnLocked(int i) {
    }

    public void noteAudioOffLocked(int i) {
    }

    public void noteVideoOnLocked(int i) {
    }

    public void noteVideoOffLocked(int i) {
    }

    public void noteWifiRunningLocked(WorkSource workSource) {
    }

    public void noteWifiRunningChangedLocked(WorkSource workSource, WorkSource workSource2) {
        if (this.mGlobalWifiRunning) {
            int size = workSource.size();
            for (int i = 0; i < size; i++) {
                getUidStatsLocked(workSource.get(i)).noteWifiStoppedLocked();
            }
            int size2 = workSource2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                getUidStatsLocked(workSource2.get(i2)).noteWifiRunningLocked();
            }
            return;
        }
        Log.w(TAG, "noteWifiRunningChangedLocked -- called while WIFI not running");
    }

    public void noteWifiStoppedLocked(WorkSource workSource) {
    }

    public void noteBluetoothOnLocked() {
    }

    public void noteBluetoothOffLocked() {
    }

    public void noteFullWifiLockAcquiredLocked(int i) {
    }

    public void noteFullWifiLockReleasedLocked(int i) {
    }

    public void noteScanWifiLockAcquiredLocked(int i) {
    }

    public void noteScanWifiLockReleasedLocked(int i) {
    }

    public void noteWifiMulticastEnabledLocked(int i) {
    }

    public void noteWifiMulticastDisabledLocked(int i) {
    }

    public void noteFullWifiLockAcquiredFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i = 0; i < size; i++) {
            noteFullWifiLockAcquiredLocked(workSource.get(i));
        }
    }

    public void noteFullWifiLockReleasedFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i = 0; i < size; i++) {
            noteFullWifiLockReleasedLocked(workSource.get(i));
        }
    }

    public void noteScanWifiLockAcquiredFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i = 0; i < size; i++) {
            noteScanWifiLockAcquiredLocked(workSource.get(i));
        }
    }

    public void noteScanWifiLockReleasedFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i = 0; i < size; i++) {
            noteScanWifiLockReleasedLocked(workSource.get(i));
        }
    }

    public void noteWifiMulticastEnabledFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i = 0; i < size; i++) {
            noteWifiMulticastEnabledLocked(workSource.get(i));
        }
    }

    public void noteWifiMulticastDisabledFromSourceLocked(WorkSource workSource) {
        int size = workSource.size();
        for (int i = 0; i < size; i++) {
            noteWifiMulticastDisabledLocked(workSource.get(i));
        }
    }

    public void noteNetworkInterfaceTypeLocked(String str, int i) {
    }

    public long getScreenOnTime(long j, int i) {
        return this.mScreenOnTimer.getTotalTimeLocked(j, i);
    }

    public long getScreenBrightnessTime(int i, long j, int i2) {
        return this.mScreenBrightnessTimer[i].getTotalTimeLocked(j, i2);
    }

    public int getInputEventCount(int i) {
        return this.mInputEventCounter.getCountLocked(i);
    }

    public long getPhoneOnTime(long j, int i) {
        return this.mPhoneOnTimer.getTotalTimeLocked(j, i);
    }

    public long getPhoneSignalStrengthTime(int i, long j, int i2) {
        return 0L;
    }

    public long getPhoneSignalScanningTime(long j, int i) {
        return this.mPhoneSignalScanningTimer.getTotalTimeLocked(j, i);
    }

    public int getPhoneSignalStrengthCount(int i, int i2) {
        return this.mPhoneDataConnectionsTimer[i].getCountLocked(i2);
    }

    public long getPhoneDataConnectionTime(int i, long j, int i2) {
        return this.mPhoneDataConnectionsTimer[i].getTotalTimeLocked(j, i2);
    }

    public int getPhoneDataConnectionCount(int i, int i2) {
        return this.mPhoneDataConnectionsTimer[i].getCountLocked(i2);
    }

    public long getWifiOnTime(long j, int i) {
        return this.mWifiOnTimer.getTotalTimeLocked(j, i);
    }

    public long getGlobalWifiRunningTime(long j, int i) {
        return this.mGlobalWifiRunningTimer.getTotalTimeLocked(j, i);
    }

    public long getBluetoothOnTime(long j, int i) {
        return this.mBluetoothOnTimer.getTotalTimeLocked(j, i);
    }

    public boolean getIsOnBattery() {
        return this.mOnBattery;
    }

    public SparseArray<? extends BatteryStats.Uid> getUidStats() {
        return this.mUidStats;
    }

    /* renamed from: com.android.internal.os.BatteryStatsImpl$Uid */
    /* loaded from: classes.dex */
    public final class Uid extends BatteryStats.Uid {
        boolean mAudioTurnedOn;
        StopwatchTimer mAudioTurnedOnTimer;
        long mCurrentTcpBytesReceived;
        long mCurrentTcpBytesSent;
        boolean mFullWifiLockOut;
        StopwatchTimer mFullWifiLockTimer;
        long mLoadedTcpBytesReceived;
        long mLoadedTcpBytesSent;
        boolean mScanWifiLockOut;
        StopwatchTimer mScanWifiLockTimer;
        long mTcpBytesReceivedAtLastUnplug;
        long mTcpBytesSentAtLastUnplug;
        final int mUid;
        Counter[] mUserActivityCounters;
        boolean mVideoTurnedOn;
        StopwatchTimer mVideoTurnedOnTimer;
        boolean mWifiMulticastEnabled;
        StopwatchTimer mWifiMulticastTimer;
        boolean mWifiRunning;
        StopwatchTimer mWifiRunningTimer;
        long mStartedTcpBytesReceived = -1;
        long mStartedTcpBytesSent = -1;
        final HashMap<String, Wakelock> mWakelockStats = new HashMap<>();
        final HashMap<Integer, Sensor> mSensorStats = new HashMap<>();
        final HashMap<String, Proc> mProcessStats = new HashMap<>();
        final HashMap<String, Pkg> mPackageStats = new HashMap<>();
        final SparseArray<BatteryStats.Uid.Pid> mPids = new SparseArray<>();

        public Uid(int i) {
            this.mUid = i;
            this.mWifiRunningTimer = new StopwatchTimer(this, 4, BatteryStatsImpl.this.mWifiRunningTimers, BatteryStatsImpl.this.mUnpluggables);
            this.mFullWifiLockTimer = new StopwatchTimer(this, 5, BatteryStatsImpl.this.mFullWifiLockTimers, BatteryStatsImpl.this.mUnpluggables);
            this.mScanWifiLockTimer = new StopwatchTimer(this, 6, BatteryStatsImpl.this.mScanWifiLockTimers, BatteryStatsImpl.this.mUnpluggables);
            this.mWifiMulticastTimer = new StopwatchTimer(this, 7, BatteryStatsImpl.this.mWifiMulticastTimers, BatteryStatsImpl.this.mUnpluggables);
            this.mAudioTurnedOnTimer = new StopwatchTimer(this, 7, null, BatteryStatsImpl.this.mUnpluggables);
            this.mVideoTurnedOnTimer = new StopwatchTimer(this, 8, null, BatteryStatsImpl.this.mUnpluggables);
        }

        public Map<String, ? extends BatteryStats.Uid.Wakelock> getWakelockStats() {
            return this.mWakelockStats;
        }

        public Map<Integer, ? extends BatteryStats.Uid.Sensor> getSensorStats() {
            return this.mSensorStats;
        }

        public Map<String, ? extends BatteryStats.Uid.Proc> getProcessStats() {
            return this.mProcessStats;
        }

        public Map<String, ? extends BatteryStats.Uid.Pkg> getPackageStats() {
            return this.mPackageStats;
        }

        public int getUid() {
            return this.mUid;
        }

        public long getTcpBytesReceived(int i) {
            if (i == 1) {
                return this.mLoadedTcpBytesReceived;
            }
            long computeCurrentTcpBytesReceived = computeCurrentTcpBytesReceived();
            if (i == 3) {
                return computeCurrentTcpBytesReceived - this.mTcpBytesReceivedAtLastUnplug;
            }
            if (i == 0) {
                return computeCurrentTcpBytesReceived + this.mLoadedTcpBytesReceived;
            }
            return computeCurrentTcpBytesReceived;
        }

        public long computeCurrentTcpBytesReceived() {
            return 0L;
        }

        public long getTcpBytesSent(int i) {
            if (i == 1) {
                return this.mLoadedTcpBytesSent;
            }
            long computeCurrentTcpBytesSent = computeCurrentTcpBytesSent();
            if (i == 3) {
                return computeCurrentTcpBytesSent - this.mTcpBytesSentAtLastUnplug;
            }
            if (i == 0) {
                return computeCurrentTcpBytesSent + this.mLoadedTcpBytesSent;
            }
            return computeCurrentTcpBytesSent;
        }

        public void noteWifiRunningLocked() {
            if (!this.mWifiRunning) {
                this.mWifiRunning = true;
                if (this.mWifiRunningTimer == null) {
                    this.mWifiRunningTimer = new StopwatchTimer(this, 4, BatteryStatsImpl.this.mWifiRunningTimers, BatteryStatsImpl.this.mUnpluggables);
                }
                this.mWifiRunningTimer.startRunningLocked(BatteryStatsImpl.this);
            }
        }

        public void noteWifiStoppedLocked() {
            if (this.mWifiRunning) {
                this.mWifiRunning = false;
                this.mWifiRunningTimer.stopRunningLocked(BatteryStatsImpl.this);
            }
        }

        public void noteFullWifiLockAcquiredLocked() {
            if (!this.mFullWifiLockOut) {
                this.mFullWifiLockOut = true;
                if (this.mFullWifiLockTimer == null) {
                    this.mFullWifiLockTimer = new StopwatchTimer(this, 5, BatteryStatsImpl.this.mFullWifiLockTimers, BatteryStatsImpl.this.mUnpluggables);
                }
                this.mFullWifiLockTimer.startRunningLocked(BatteryStatsImpl.this);
            }
        }

        public void noteFullWifiLockReleasedLocked() {
            if (this.mFullWifiLockOut) {
                this.mFullWifiLockOut = false;
                this.mFullWifiLockTimer.stopRunningLocked(BatteryStatsImpl.this);
            }
        }

        public void noteScanWifiLockAcquiredLocked() {
            if (!this.mScanWifiLockOut) {
                this.mScanWifiLockOut = true;
                if (this.mScanWifiLockTimer == null) {
                    this.mScanWifiLockTimer = new StopwatchTimer(this, 6, BatteryStatsImpl.this.mScanWifiLockTimers, BatteryStatsImpl.this.mUnpluggables);
                }
                this.mScanWifiLockTimer.startRunningLocked(BatteryStatsImpl.this);
            }
        }

        public void noteScanWifiLockReleasedLocked() {
            if (this.mScanWifiLockOut) {
                this.mScanWifiLockOut = false;
                this.mScanWifiLockTimer.stopRunningLocked(BatteryStatsImpl.this);
            }
        }

        public void noteWifiMulticastEnabledLocked() {
            if (!this.mWifiMulticastEnabled) {
                this.mWifiMulticastEnabled = true;
                if (this.mWifiMulticastTimer == null) {
                    this.mWifiMulticastTimer = new StopwatchTimer(this, 7, BatteryStatsImpl.this.mWifiMulticastTimers, BatteryStatsImpl.this.mUnpluggables);
                }
                this.mWifiMulticastTimer.startRunningLocked(BatteryStatsImpl.this);
            }
        }

        public void noteWifiMulticastDisabledLocked() {
            if (this.mWifiMulticastEnabled) {
                this.mWifiMulticastEnabled = false;
                this.mWifiMulticastTimer.stopRunningLocked(BatteryStatsImpl.this);
            }
        }

        public void noteAudioTurnedOnLocked() {
            if (!this.mAudioTurnedOn) {
                this.mAudioTurnedOn = true;
                if (this.mAudioTurnedOnTimer == null) {
                    this.mAudioTurnedOnTimer = new StopwatchTimer(this, 7, null, BatteryStatsImpl.this.mUnpluggables);
                }
                this.mAudioTurnedOnTimer.startRunningLocked(BatteryStatsImpl.this);
            }
        }

        public void noteAudioTurnedOffLocked() {
            if (this.mAudioTurnedOn) {
                this.mAudioTurnedOn = false;
                this.mAudioTurnedOnTimer.stopRunningLocked(BatteryStatsImpl.this);
            }
        }

        public void noteVideoTurnedOnLocked() {
            if (!this.mVideoTurnedOn) {
                this.mVideoTurnedOn = true;
                if (this.mVideoTurnedOnTimer == null) {
                    this.mVideoTurnedOnTimer = new StopwatchTimer(this, 8, null, BatteryStatsImpl.this.mUnpluggables);
                }
                this.mVideoTurnedOnTimer.startRunningLocked(BatteryStatsImpl.this);
            }
        }

        public void noteVideoTurnedOffLocked() {
            if (this.mVideoTurnedOn) {
                this.mVideoTurnedOn = false;
                this.mVideoTurnedOnTimer.stopRunningLocked(BatteryStatsImpl.this);
            }
        }

        public long getWifiRunningTime(long j, int i) {
            if (this.mWifiRunningTimer == null) {
                return 0L;
            }
            return this.mWifiRunningTimer.getTotalTimeLocked(j, i);
        }

        public long getFullWifiLockTime(long j, int i) {
            if (this.mFullWifiLockTimer == null) {
                return 0L;
            }
            return this.mFullWifiLockTimer.getTotalTimeLocked(j, i);
        }

        public long getScanWifiLockTime(long j, int i) {
            if (this.mScanWifiLockTimer == null) {
                return 0L;
            }
            return this.mScanWifiLockTimer.getTotalTimeLocked(j, i);
        }

        public long getWifiMulticastTime(long j, int i) {
            if (this.mWifiMulticastTimer == null) {
                return 0L;
            }
            return this.mWifiMulticastTimer.getTotalTimeLocked(j, i);
        }

        public long getAudioTurnedOnTime(long j, int i) {
            if (this.mAudioTurnedOnTimer == null) {
                return 0L;
            }
            return this.mAudioTurnedOnTimer.getTotalTimeLocked(j, i);
        }

        public long getVideoTurnedOnTime(long j, int i) {
            if (this.mVideoTurnedOnTimer == null) {
                return 0L;
            }
            return this.mVideoTurnedOnTimer.getTotalTimeLocked(j, i);
        }

        public void noteUserActivityLocked(int i) {
            if (this.mUserActivityCounters == null) {
                initUserActivityLocked();
            }
            if (i < 0) {
                i = 0;
            } else if (i >= 7) {
                i = 6;
            }
            this.mUserActivityCounters[i].stepAtomic();
        }

        public boolean hasUserActivity() {
            return this.mUserActivityCounters != null;
        }

        public int getUserActivityCount(int i, int i2) {
            if (this.mUserActivityCounters == null) {
                return 0;
            }
            return this.mUserActivityCounters[i].getCountLocked(i2);
        }

        void initUserActivityLocked() {
            this.mUserActivityCounters = new Counter[7];
            for (int i = 0; i < 7; i++) {
                this.mUserActivityCounters[i] = new Counter(BatteryStatsImpl.this.mUnpluggables);
            }
        }

        public long computeCurrentTcpBytesSent() {
            return 0L;
        }

        boolean reset() {
            boolean z;
            boolean z2;
            if (this.mWifiRunningTimer != null) {
                z = (!this.mWifiRunningTimer.reset(BatteryStatsImpl.this, false)) | false | this.mWifiRunning;
            } else {
                z = false;
            }
            if (this.mFullWifiLockTimer != null) {
                z = z | (!this.mFullWifiLockTimer.reset(BatteryStatsImpl.this, false)) | this.mFullWifiLockOut;
            }
            if (this.mScanWifiLockTimer != null) {
                z = z | (!this.mScanWifiLockTimer.reset(BatteryStatsImpl.this, false)) | this.mScanWifiLockOut;
            }
            if (this.mWifiMulticastTimer != null) {
                z = z | (!this.mWifiMulticastTimer.reset(BatteryStatsImpl.this, false)) | this.mWifiMulticastEnabled;
            }
            if (this.mAudioTurnedOnTimer != null) {
                z = z | (!this.mAudioTurnedOnTimer.reset(BatteryStatsImpl.this, false)) | this.mAudioTurnedOn;
            }
            if (this.mVideoTurnedOnTimer != null) {
                z = z | (!this.mVideoTurnedOnTimer.reset(BatteryStatsImpl.this, false)) | this.mVideoTurnedOn;
            }
            this.mLoadedTcpBytesSent = 0L;
            this.mLoadedTcpBytesReceived = 0L;
            this.mCurrentTcpBytesSent = 0L;
            this.mCurrentTcpBytesReceived = 0L;
            if (this.mUserActivityCounters != null) {
                for (int i = 0; i < 7; i++) {
                    this.mUserActivityCounters[i].reset(false);
                }
            }
            if (this.mWakelockStats.size() > 0) {
                Iterator<Map.Entry<String, Wakelock>> it = this.mWakelockStats.entrySet().iterator();
                z2 = z;
                while (it.hasNext()) {
                    if (it.next().getValue().reset()) {
                        it.remove();
                    } else {
                        z2 = true;
                    }
                }
            } else {
                z2 = z;
            }
            if (this.mSensorStats.size() > 0) {
                Iterator<Map.Entry<Integer, Sensor>> it2 = this.mSensorStats.entrySet().iterator();
                while (it2.hasNext()) {
                    if (it2.next().getValue().reset()) {
                        it2.remove();
                    } else {
                        z2 = true;
                    }
                }
            }
            if (this.mProcessStats.size() > 0) {
                for (Map.Entry<String, Proc> entry : this.mProcessStats.entrySet()) {
                    entry.getValue().detach();
                }
                this.mProcessStats.clear();
            }
            if (this.mPids.size() > 0) {
                int i2 = 0;
                while (!z2 && i2 < this.mPids.size()) {
                    boolean z3 = this.mPids.valueAt(i2).mWakeStart != 0 ? true : z2;
                    i2++;
                    z2 = z3;
                }
            }
            if (this.mPackageStats.size() > 0) {
                for (Map.Entry<String, Pkg> entry2 : this.mPackageStats.entrySet()) {
                    Pkg value = entry2.getValue();
                    value.detach();
                    if (value.mServiceStats.size() > 0) {
                        for (Map.Entry<String, Pkg.Serv> entry3 : value.mServiceStats.entrySet()) {
                            entry3.getValue().detach();
                        }
                    }
                }
                this.mPackageStats.clear();
            }
            this.mPids.clear();
            if (!z2) {
                if (this.mWifiRunningTimer != null) {
                    this.mWifiRunningTimer.detach();
                }
                if (this.mFullWifiLockTimer != null) {
                    this.mFullWifiLockTimer.detach();
                }
                if (this.mScanWifiLockTimer != null) {
                    this.mScanWifiLockTimer.detach();
                }
                if (this.mWifiMulticastTimer != null) {
                    this.mWifiMulticastTimer.detach();
                }
                if (this.mAudioTurnedOnTimer != null) {
                    this.mAudioTurnedOnTimer.detach();
                }
                if (this.mVideoTurnedOnTimer != null) {
                    this.mVideoTurnedOnTimer.detach();
                }
                if (this.mUserActivityCounters != null) {
                    for (int i3 = 0; i3 < 7; i3++) {
                        this.mUserActivityCounters[i3].detach();
                    }
                }
            }
            return !z2;
        }

        void writeToParcelLocked(Parcel parcel, long j) {
            parcel.writeInt(this.mWakelockStats.size());
            for (Map.Entry<String, Wakelock> entry : this.mWakelockStats.entrySet()) {
                parcel.writeString(entry.getKey());
                entry.getValue().writeToParcelLocked(parcel, j);
            }
            parcel.writeInt(this.mSensorStats.size());
            for (Map.Entry<Integer, Sensor> entry2 : this.mSensorStats.entrySet()) {
                parcel.writeInt(entry2.getKey().intValue());
                entry2.getValue().writeToParcelLocked(parcel, j);
            }
            parcel.writeInt(this.mProcessStats.size());
            for (Map.Entry<String, Proc> entry3 : this.mProcessStats.entrySet()) {
                parcel.writeString(entry3.getKey());
                entry3.getValue().writeToParcelLocked(parcel);
            }
            parcel.writeInt(this.mPackageStats.size());
            for (Map.Entry<String, Pkg> entry4 : this.mPackageStats.entrySet()) {
                parcel.writeString(entry4.getKey());
                entry4.getValue().writeToParcelLocked(parcel);
            }
            parcel.writeLong(this.mLoadedTcpBytesReceived);
            parcel.writeLong(this.mLoadedTcpBytesSent);
            parcel.writeLong(computeCurrentTcpBytesReceived());
            parcel.writeLong(computeCurrentTcpBytesSent());
            parcel.writeLong(this.mTcpBytesReceivedAtLastUnplug);
            parcel.writeLong(this.mTcpBytesSentAtLastUnplug);
            if (this.mWifiRunningTimer != null) {
                parcel.writeInt(1);
                this.mWifiRunningTimer.writeToParcel(parcel, j);
            } else {
                parcel.writeInt(0);
            }
            if (this.mFullWifiLockTimer != null) {
                parcel.writeInt(1);
                this.mFullWifiLockTimer.writeToParcel(parcel, j);
            } else {
                parcel.writeInt(0);
            }
            if (this.mScanWifiLockTimer != null) {
                parcel.writeInt(1);
                this.mScanWifiLockTimer.writeToParcel(parcel, j);
            } else {
                parcel.writeInt(0);
            }
            if (this.mWifiMulticastTimer != null) {
                parcel.writeInt(1);
                this.mWifiMulticastTimer.writeToParcel(parcel, j);
            } else {
                parcel.writeInt(0);
            }
            if (this.mAudioTurnedOnTimer != null) {
                parcel.writeInt(1);
                this.mAudioTurnedOnTimer.writeToParcel(parcel, j);
            } else {
                parcel.writeInt(0);
            }
            if (this.mVideoTurnedOnTimer != null) {
                parcel.writeInt(1);
                this.mVideoTurnedOnTimer.writeToParcel(parcel, j);
            } else {
                parcel.writeInt(0);
            }
            if (this.mUserActivityCounters != null) {
                parcel.writeInt(1);
                for (int i = 0; i < 7; i++) {
                    this.mUserActivityCounters[i].writeToParcel(parcel);
                }
                return;
            }
            parcel.writeInt(0);
        }

        void readFromParcelLocked(ArrayList<Unpluggable> arrayList, Parcel parcel) {
            int readInt = parcel.readInt();
            this.mWakelockStats.clear();
            for (int i = 0; i < readInt; i++) {
                String readString = parcel.readString();
                Wakelock wakelock = new Wakelock();
                wakelock.readFromParcelLocked(arrayList, parcel);
                this.mWakelockStats.put(readString, wakelock);
            }
            int readInt2 = parcel.readInt();
            this.mSensorStats.clear();
            for (int i2 = 0; i2 < readInt2; i2++) {
                int readInt3 = parcel.readInt();
                Sensor sensor = new Sensor(readInt3);
                sensor.readFromParcelLocked(BatteryStatsImpl.this.mUnpluggables, parcel);
                this.mSensorStats.put(Integer.valueOf(readInt3), sensor);
            }
            int readInt4 = parcel.readInt();
            this.mProcessStats.clear();
            for (int i3 = 0; i3 < readInt4; i3++) {
                String readString2 = parcel.readString();
                Proc proc = new Proc();
                proc.readFromParcelLocked(parcel);
                this.mProcessStats.put(readString2, proc);
            }
            int readInt5 = parcel.readInt();
            this.mPackageStats.clear();
            for (int i4 = 0; i4 < readInt5; i4++) {
                String readString3 = parcel.readString();
                Pkg pkg = new Pkg();
                pkg.readFromParcelLocked(parcel);
                this.mPackageStats.put(readString3, pkg);
            }
            this.mLoadedTcpBytesReceived = parcel.readLong();
            this.mLoadedTcpBytesSent = parcel.readLong();
            this.mCurrentTcpBytesReceived = parcel.readLong();
            this.mCurrentTcpBytesSent = parcel.readLong();
            this.mTcpBytesReceivedAtLastUnplug = parcel.readLong();
            this.mTcpBytesSentAtLastUnplug = parcel.readLong();
            this.mWifiRunning = false;
            if (parcel.readInt() != 0) {
                this.mWifiRunningTimer = new StopwatchTimer(this, 4, BatteryStatsImpl.this.mWifiRunningTimers, BatteryStatsImpl.this.mUnpluggables, parcel);
            } else {
                this.mWifiRunningTimer = null;
            }
            this.mFullWifiLockOut = false;
            if (parcel.readInt() != 0) {
                this.mFullWifiLockTimer = new StopwatchTimer(this, 5, BatteryStatsImpl.this.mFullWifiLockTimers, BatteryStatsImpl.this.mUnpluggables, parcel);
            } else {
                this.mFullWifiLockTimer = null;
            }
            this.mScanWifiLockOut = false;
            if (parcel.readInt() != 0) {
                this.mScanWifiLockTimer = new StopwatchTimer(this, 6, BatteryStatsImpl.this.mScanWifiLockTimers, BatteryStatsImpl.this.mUnpluggables, parcel);
            } else {
                this.mScanWifiLockTimer = null;
            }
            this.mWifiMulticastEnabled = false;
            if (parcel.readInt() != 0) {
                this.mWifiMulticastTimer = new StopwatchTimer(this, 7, BatteryStatsImpl.this.mWifiMulticastTimers, BatteryStatsImpl.this.mUnpluggables, parcel);
            } else {
                this.mWifiMulticastTimer = null;
            }
            this.mAudioTurnedOn = false;
            if (parcel.readInt() != 0) {
                this.mAudioTurnedOnTimer = new StopwatchTimer(this, 7, null, BatteryStatsImpl.this.mUnpluggables, parcel);
            } else {
                this.mAudioTurnedOnTimer = null;
            }
            this.mVideoTurnedOn = false;
            if (parcel.readInt() != 0) {
                this.mVideoTurnedOnTimer = new StopwatchTimer(this, 8, null, BatteryStatsImpl.this.mUnpluggables, parcel);
            } else {
                this.mVideoTurnedOnTimer = null;
            }
            if (parcel.readInt() != 0) {
                this.mUserActivityCounters = new Counter[7];
                for (int i5 = 0; i5 < 7; i5++) {
                    this.mUserActivityCounters[i5] = new Counter(BatteryStatsImpl.this.mUnpluggables, parcel);
                }
                return;
            }
            this.mUserActivityCounters = null;
        }

        /* renamed from: com.android.internal.os.BatteryStatsImpl$Uid$Wakelock */
        /* loaded from: classes.dex */
        public final class Wakelock extends BatteryStats.Uid.Wakelock {
            StopwatchTimer mTimerFull;
            StopwatchTimer mTimerPartial;
            StopwatchTimer mTimerWindow;

            public Wakelock() {
            }

            private StopwatchTimer readTimerFromParcel(int i, ArrayList<StopwatchTimer> arrayList, ArrayList<Unpluggable> arrayList2, Parcel parcel) {
                if (parcel.readInt() == 0) {
                    return null;
                }
                return new StopwatchTimer(Uid.this, i, arrayList, arrayList2, parcel);
            }

            boolean reset() {
                boolean z;
                if (this.mTimerFull != null) {
                    z = (!this.mTimerFull.reset(BatteryStatsImpl.this, false)) | false;
                } else {
                    z = false;
                }
                if (this.mTimerPartial != null) {
                    z |= !this.mTimerPartial.reset(BatteryStatsImpl.this, false);
                }
                if (this.mTimerWindow != null) {
                    z |= !this.mTimerWindow.reset(BatteryStatsImpl.this, false);
                }
                if (!z) {
                    if (this.mTimerFull != null) {
                        this.mTimerFull.detach();
                        this.mTimerFull = null;
                    }
                    if (this.mTimerPartial != null) {
                        this.mTimerPartial.detach();
                        this.mTimerPartial = null;
                    }
                    if (this.mTimerWindow != null) {
                        this.mTimerWindow.detach();
                        this.mTimerWindow = null;
                    }
                }
                return !z;
            }

            void readFromParcelLocked(ArrayList<Unpluggable> arrayList, Parcel parcel) {
                this.mTimerPartial = readTimerFromParcel(0, BatteryStatsImpl.this.mPartialTimers, arrayList, parcel);
                this.mTimerFull = readTimerFromParcel(1, BatteryStatsImpl.this.mFullTimers, arrayList, parcel);
                this.mTimerWindow = readTimerFromParcel(2, BatteryStatsImpl.this.mWindowTimers, arrayList, parcel);
            }

            void writeToParcelLocked(Parcel parcel, long j) {
                Timer.writeTimerToParcel(parcel, this.mTimerPartial, j);
                Timer.writeTimerToParcel(parcel, this.mTimerFull, j);
                Timer.writeTimerToParcel(parcel, this.mTimerWindow, j);
            }

            public Timer getWakeTime(int i) {
                switch (i) {
                    case 0:
                        return this.mTimerPartial;
                    case 1:
                        return this.mTimerFull;
                    case 2:
                        return this.mTimerWindow;
                    default:
                        throw new IllegalArgumentException("type = " + i);
                }
            }
        }

        /* renamed from: com.android.internal.os.BatteryStatsImpl$Uid$Sensor */
        /* loaded from: classes.dex */
        public final class Sensor extends BatteryStats.Uid.Sensor {
            final int mHandle;
            StopwatchTimer mTimer;

            public Sensor(int i) {
                this.mHandle = i;
            }

            private StopwatchTimer readTimerFromParcel(ArrayList<Unpluggable> arrayList, Parcel parcel) {
                ArrayList<StopwatchTimer> arrayList2;
                if (parcel.readInt() != 0) {
                    ArrayList<StopwatchTimer> arrayList3 = BatteryStatsImpl.this.mSensorTimers.get(this.mHandle);
                    if (arrayList3 == null) {
                        arrayList2 = new ArrayList<>();
                        BatteryStatsImpl.this.mSensorTimers.put(this.mHandle, arrayList2);
                    } else {
                        arrayList2 = arrayList3;
                    }
                    return new StopwatchTimer(Uid.this, 0, arrayList2, arrayList, parcel);
                }
                return null;
            }

            boolean reset() {
                if (this.mTimer.reset(BatteryStatsImpl.this, true)) {
                    this.mTimer = null;
                    return true;
                }
                return false;
            }

            void readFromParcelLocked(ArrayList<Unpluggable> arrayList, Parcel parcel) {
                this.mTimer = readTimerFromParcel(arrayList, parcel);
            }

            void writeToParcelLocked(Parcel parcel, long j) {
                Timer.writeTimerToParcel(parcel, this.mTimer, j);
            }

            public Timer getSensorTime() {
                return this.mTimer;
            }

            public int getHandle() {
                return this.mHandle;
            }
        }

        /* renamed from: com.android.internal.os.BatteryStatsImpl$Uid$Proc */
        /* loaded from: classes.dex */
        public final class Proc extends BatteryStats.Uid.Proc implements Unpluggable {
            ArrayList<BatteryStats.Uid.Proc.ExcessivePower> mExcessivePower;
            long mForegroundTime;
            long mLastForegroundTime;
            int mLastStarts;
            long mLastSystemTime;
            long mLastUserTime;
            long mLoadedForegroundTime;
            int mLoadedStarts;
            long mLoadedSystemTime;
            long mLoadedUserTime;
            SamplingCounter[] mSpeedBins;
            int mStarts;
            long mSystemTime;
            long mUnpluggedForegroundTime;
            int mUnpluggedStarts;
            long mUnpluggedSystemTime;
            long mUnpluggedUserTime;
            long mUserTime;

            Proc() {
                BatteryStatsImpl.this.mUnpluggables.add(this);
                this.mSpeedBins = new SamplingCounter[BatteryStatsImpl.this.getCpuSpeedSteps()];
            }

            @Override // com.android.internal.p009os.BatteryStatsImpl.Unpluggable
            public void unplug(long j, long j2) {
                this.mUnpluggedUserTime = this.mUserTime;
                this.mUnpluggedSystemTime = this.mSystemTime;
                this.mUnpluggedStarts = this.mStarts;
                this.mUnpluggedForegroundTime = this.mForegroundTime;
            }

            @Override // com.android.internal.p009os.BatteryStatsImpl.Unpluggable
            public void plug(long j, long j2) {
            }

            void detach() {
                BatteryStatsImpl.this.mUnpluggables.remove(this);
                for (int i = 0; i < this.mSpeedBins.length; i++) {
                    SamplingCounter samplingCounter = this.mSpeedBins[i];
                    if (samplingCounter != null) {
                        BatteryStatsImpl.this.mUnpluggables.remove(samplingCounter);
                        this.mSpeedBins[i] = null;
                    }
                }
            }

            public int countExcessivePowers() {
                if (this.mExcessivePower != null) {
                    return this.mExcessivePower.size();
                }
                return 0;
            }

            public BatteryStats.Uid.Proc.ExcessivePower getExcessivePower(int i) {
                if (this.mExcessivePower != null) {
                    return this.mExcessivePower.get(i);
                }
                return null;
            }

            public void addExcessiveWake(long j, long j2) {
                if (this.mExcessivePower == null) {
                    this.mExcessivePower = new ArrayList<>();
                }
                BatteryStats.Uid.Proc.ExcessivePower excessivePower = new BatteryStats.Uid.Proc.ExcessivePower();
                excessivePower.type = 1;
                excessivePower.overTime = j;
                excessivePower.usedTime = j2;
                this.mExcessivePower.add(excessivePower);
            }

            public void addExcessiveCpu(long j, long j2) {
                if (this.mExcessivePower == null) {
                    this.mExcessivePower = new ArrayList<>();
                }
                BatteryStats.Uid.Proc.ExcessivePower excessivePower = new BatteryStats.Uid.Proc.ExcessivePower();
                excessivePower.type = 2;
                excessivePower.overTime = j;
                excessivePower.usedTime = j2;
                this.mExcessivePower.add(excessivePower);
            }

            void writeExcessivePowerToParcelLocked(Parcel parcel) {
                if (this.mExcessivePower == null) {
                    parcel.writeInt(0);
                    return;
                }
                int size = this.mExcessivePower.size();
                parcel.writeInt(size);
                for (int i = 0; i < size; i++) {
                    BatteryStats.Uid.Proc.ExcessivePower excessivePower = this.mExcessivePower.get(i);
                    parcel.writeInt(excessivePower.type);
                    parcel.writeLong(excessivePower.overTime);
                    parcel.writeLong(excessivePower.usedTime);
                }
            }

            boolean readExcessivePowerFromParcelLocked(Parcel parcel) {
                return true;
            }

            void writeToParcelLocked(Parcel parcel) {
                parcel.writeLong(this.mUserTime);
                parcel.writeLong(this.mSystemTime);
                parcel.writeLong(this.mForegroundTime);
                parcel.writeInt(this.mStarts);
                parcel.writeLong(this.mLoadedUserTime);
                parcel.writeLong(this.mLoadedSystemTime);
                parcel.writeLong(this.mLoadedForegroundTime);
                parcel.writeInt(this.mLoadedStarts);
                parcel.writeLong(this.mUnpluggedUserTime);
                parcel.writeLong(this.mUnpluggedSystemTime);
                parcel.writeLong(this.mUnpluggedForegroundTime);
                parcel.writeInt(this.mUnpluggedStarts);
                parcel.writeInt(this.mSpeedBins.length);
                for (int i = 0; i < this.mSpeedBins.length; i++) {
                    SamplingCounter samplingCounter = this.mSpeedBins[i];
                    if (samplingCounter != null) {
                        parcel.writeInt(1);
                        samplingCounter.writeToParcel(parcel);
                    } else {
                        parcel.writeInt(0);
                    }
                }
                writeExcessivePowerToParcelLocked(parcel);
            }

            void readFromParcelLocked(Parcel parcel) {
                this.mUserTime = parcel.readLong();
                this.mSystemTime = parcel.readLong();
                this.mForegroundTime = parcel.readLong();
                this.mStarts = parcel.readInt();
                this.mLoadedUserTime = parcel.readLong();
                this.mLoadedSystemTime = parcel.readLong();
                this.mLoadedForegroundTime = parcel.readLong();
                this.mLoadedStarts = parcel.readInt();
                this.mLastUserTime = 0L;
                this.mLastSystemTime = 0L;
                this.mLastForegroundTime = 0L;
                this.mLastStarts = 0;
                this.mUnpluggedUserTime = parcel.readLong();
                this.mUnpluggedSystemTime = parcel.readLong();
                this.mUnpluggedForegroundTime = parcel.readLong();
                this.mUnpluggedStarts = parcel.readInt();
                int readInt = parcel.readInt();
                int cpuSpeedSteps = BatteryStatsImpl.this.getCpuSpeedSteps();
                if (readInt >= cpuSpeedSteps) {
                    cpuSpeedSteps = readInt;
                }
                this.mSpeedBins = new SamplingCounter[cpuSpeedSteps];
                for (int i = 0; i < readInt; i++) {
                    if (parcel.readInt() != 0) {
                        this.mSpeedBins[i] = new SamplingCounter(BatteryStatsImpl.this.mUnpluggables, parcel);
                    }
                }
                readExcessivePowerFromParcelLocked(parcel);
            }

            public BatteryStatsImpl getBatteryStats() {
                return BatteryStatsImpl.this;
            }

            public void addCpuTimeLocked(int i, int i2) {
                this.mUserTime += i;
                this.mSystemTime += i2;
            }

            public void addForegroundTimeLocked(long j) {
                this.mForegroundTime += j;
            }

            public void incStartsLocked() {
                this.mStarts++;
            }

            public long getUserTime(int i) {
                if (i == 1) {
                    return this.mLastUserTime;
                }
                long j = this.mUserTime;
                if (i == 2) {
                    return j - this.mLoadedUserTime;
                }
                if (i == 3) {
                    return j - this.mUnpluggedUserTime;
                }
                return j;
            }

            public long getSystemTime(int i) {
                if (i == 1) {
                    return this.mLastSystemTime;
                }
                long j = this.mSystemTime;
                if (i == 2) {
                    return j - this.mLoadedSystemTime;
                }
                if (i == 3) {
                    return j - this.mUnpluggedSystemTime;
                }
                return j;
            }

            public long getForegroundTime(int i) {
                if (i == 1) {
                    return this.mLastForegroundTime;
                }
                long j = this.mForegroundTime;
                if (i == 2) {
                    return j - this.mLoadedForegroundTime;
                }
                if (i == 3) {
                    return j - this.mUnpluggedForegroundTime;
                }
                return j;
            }

            public int getStarts(int i) {
                if (i == 1) {
                    return this.mLastStarts;
                }
                int i2 = this.mStarts;
                if (i == 2) {
                    return i2 - this.mLoadedStarts;
                }
                if (i == 3) {
                    return i2 - this.mUnpluggedStarts;
                }
                return i2;
            }

            public void addSpeedStepTimes(long[] jArr) {
                for (int i = 0; i < this.mSpeedBins.length && i < jArr.length; i++) {
                    if (jArr[i] != 0) {
                        SamplingCounter samplingCounter = this.mSpeedBins[i];
                        if (samplingCounter == null) {
                            SamplingCounter[] samplingCounterArr = this.mSpeedBins;
                            samplingCounter = new SamplingCounter(BatteryStatsImpl.this.mUnpluggables);
                            samplingCounterArr[i] = samplingCounter;
                        }
                        samplingCounter.addCountAtomic(jArr[i]);
                    }
                }
            }

            public long getTimeAtCpuSpeedStep(int i, int i2) {
                if (i < this.mSpeedBins.length) {
                    SamplingCounter samplingCounter = this.mSpeedBins[i];
                    return samplingCounter != null ? samplingCounter.getCountLocked(i2) : 0;
                }
                return 0L;
            }
        }

        /* renamed from: com.android.internal.os.BatteryStatsImpl$Uid$Pkg */
        /* loaded from: classes.dex */
        public final class Pkg extends BatteryStats.Uid.Pkg implements Unpluggable {
            int mLastWakeups;
            int mLoadedWakeups;
            final HashMap<String, Serv> mServiceStats = new HashMap<>();
            int mUnpluggedWakeups;
            int mWakeups;

            Pkg() {
                BatteryStatsImpl.this.mUnpluggables.add(this);
            }

            @Override // com.android.internal.p009os.BatteryStatsImpl.Unpluggable
            public void unplug(long j, long j2) {
                this.mUnpluggedWakeups = this.mWakeups;
            }

            @Override // com.android.internal.p009os.BatteryStatsImpl.Unpluggable
            public void plug(long j, long j2) {
            }

            void detach() {
                BatteryStatsImpl.this.mUnpluggables.remove(this);
            }

            void readFromParcelLocked(Parcel parcel) {
                this.mWakeups = parcel.readInt();
                this.mLoadedWakeups = parcel.readInt();
                this.mLastWakeups = 0;
                this.mUnpluggedWakeups = parcel.readInt();
                int readInt = parcel.readInt();
                this.mServiceStats.clear();
                for (int i = 0; i < readInt; i++) {
                    String readString = parcel.readString();
                    Serv serv = new Serv();
                    this.mServiceStats.put(readString, serv);
                    serv.readFromParcelLocked(parcel);
                }
            }

            void writeToParcelLocked(Parcel parcel) {
                parcel.writeInt(this.mWakeups);
                parcel.writeInt(this.mLoadedWakeups);
                parcel.writeInt(this.mUnpluggedWakeups);
                parcel.writeInt(this.mServiceStats.size());
                for (Map.Entry<String, Serv> entry : this.mServiceStats.entrySet()) {
                    parcel.writeString(entry.getKey());
                    entry.getValue().writeToParcelLocked(parcel);
                }
            }

            public Map<String, ? extends BatteryStats.Uid.Pkg.Serv> getServiceStats() {
                return this.mServiceStats;
            }

            public int getWakeups(int i) {
                if (i == 1) {
                    return this.mLastWakeups;
                }
                int i2 = this.mWakeups;
                if (i == 2) {
                    return i2 - this.mLoadedWakeups;
                }
                if (i == 3) {
                    return i2 - this.mUnpluggedWakeups;
                }
                return i2;
            }

            /* renamed from: com.android.internal.os.BatteryStatsImpl$Uid$Pkg$Serv */
            /* loaded from: classes.dex */
            public final class Serv extends BatteryStats.Uid.Pkg.Serv implements Unpluggable {
                int mLastLaunches;
                long mLastStartTime;
                int mLastStarts;
                boolean mLaunched;
                long mLaunchedSince;
                long mLaunchedTime;
                int mLaunches;
                int mLoadedLaunches;
                long mLoadedStartTime;
                int mLoadedStarts;
                boolean mRunning;
                long mRunningSince;
                long mStartTime;
                int mStarts;
                int mUnpluggedLaunches;
                long mUnpluggedStartTime;
                int mUnpluggedStarts;

                Serv() {
                    super(Pkg.this);
                    BatteryStatsImpl.this.mUnpluggables.add(this);
                }

                @Override // com.android.internal.p009os.BatteryStatsImpl.Unpluggable
                public void unplug(long j, long j2) {
                    this.mUnpluggedStartTime = getStartTimeToNowLocked(j);
                    this.mUnpluggedStarts = this.mStarts;
                    this.mUnpluggedLaunches = this.mLaunches;
                }

                @Override // com.android.internal.p009os.BatteryStatsImpl.Unpluggable
                public void plug(long j, long j2) {
                }

                void detach() {
                    BatteryStatsImpl.this.mUnpluggables.remove(this);
                }

                void readFromParcelLocked(Parcel parcel) {
                    this.mStartTime = parcel.readLong();
                    this.mRunningSince = parcel.readLong();
                    this.mRunning = parcel.readInt() != 0;
                    this.mStarts = parcel.readInt();
                    this.mLaunchedTime = parcel.readLong();
                    this.mLaunchedSince = parcel.readLong();
                    this.mLaunched = parcel.readInt() != 0;
                    this.mLaunches = parcel.readInt();
                    this.mLoadedStartTime = parcel.readLong();
                    this.mLoadedStarts = parcel.readInt();
                    this.mLoadedLaunches = parcel.readInt();
                    this.mLastStartTime = 0L;
                    this.mLastStarts = 0;
                    this.mLastLaunches = 0;
                    this.mUnpluggedStartTime = parcel.readLong();
                    this.mUnpluggedStarts = parcel.readInt();
                    this.mUnpluggedLaunches = parcel.readInt();
                }

                void writeToParcelLocked(Parcel parcel) {
                    parcel.writeLong(this.mStartTime);
                    parcel.writeLong(this.mRunningSince);
                    parcel.writeInt(this.mRunning ? 1 : 0);
                    parcel.writeInt(this.mStarts);
                    parcel.writeLong(this.mLaunchedTime);
                    parcel.writeLong(this.mLaunchedSince);
                    parcel.writeInt(this.mLaunched ? 1 : 0);
                    parcel.writeInt(this.mLaunches);
                    parcel.writeLong(this.mLoadedStartTime);
                    parcel.writeInt(this.mLoadedStarts);
                    parcel.writeInt(this.mLoadedLaunches);
                    parcel.writeLong(this.mUnpluggedStartTime);
                    parcel.writeInt(this.mUnpluggedStarts);
                    parcel.writeInt(this.mUnpluggedLaunches);
                }

                long getLaunchTimeToNowLocked(long j) {
                    return !this.mLaunched ? this.mLaunchedTime : (this.mLaunchedTime + j) - this.mLaunchedSince;
                }

                long getStartTimeToNowLocked(long j) {
                    return !this.mRunning ? this.mStartTime : (this.mStartTime + j) - this.mRunningSince;
                }

                public void startLaunchedLocked() {
                    if (!this.mLaunched) {
                        this.mLaunches++;
                        this.mLaunchedSince = BatteryStatsImpl.this.getBatteryUptimeLocked();
                        this.mLaunched = true;
                    }
                }

                public void stopLaunchedLocked() {
                    if (this.mLaunched) {
                        long batteryUptimeLocked = BatteryStatsImpl.this.getBatteryUptimeLocked() - this.mLaunchedSince;
                        if (batteryUptimeLocked > 0) {
                            this.mLaunchedTime = batteryUptimeLocked + this.mLaunchedTime;
                        } else {
                            this.mLaunches--;
                        }
                        this.mLaunched = false;
                    }
                }

                public void startRunningLocked() {
                    if (!this.mRunning) {
                        this.mStarts++;
                        this.mRunningSince = BatteryStatsImpl.this.getBatteryUptimeLocked();
                        this.mRunning = true;
                    }
                }

                public void stopRunningLocked() {
                    if (this.mRunning) {
                        long batteryUptimeLocked = BatteryStatsImpl.this.getBatteryUptimeLocked() - this.mRunningSince;
                        if (batteryUptimeLocked > 0) {
                            this.mStartTime = batteryUptimeLocked + this.mStartTime;
                        } else {
                            this.mStarts--;
                        }
                        this.mRunning = false;
                    }
                }

                public BatteryStatsImpl getBatteryStats() {
                    return BatteryStatsImpl.this;
                }

                public int getLaunches(int i) {
                    if (i == 1) {
                        return this.mLastLaunches;
                    }
                    int i2 = this.mLaunches;
                    if (i == 2) {
                        return i2 - this.mLoadedLaunches;
                    }
                    if (i == 3) {
                        return i2 - this.mUnpluggedLaunches;
                    }
                    return i2;
                }

                public long getStartTime(long j, int i) {
                    if (i == 1) {
                        return this.mLastStartTime;
                    }
                    long startTimeToNowLocked = getStartTimeToNowLocked(j);
                    if (i == 2) {
                        return startTimeToNowLocked - this.mLoadedStartTime;
                    }
                    if (i == 3) {
                        return startTimeToNowLocked - this.mUnpluggedStartTime;
                    }
                    return startTimeToNowLocked;
                }

                public int getStarts(int i) {
                    if (i == 1) {
                        return this.mLastStarts;
                    }
                    int i2 = this.mStarts;
                    if (i == 2) {
                        return i2 - this.mLoadedStarts;
                    }
                    if (i == 3) {
                        return i2 - this.mUnpluggedStarts;
                    }
                    return i2;
                }
            }

            public BatteryStatsImpl getBatteryStats() {
                return BatteryStatsImpl.this;
            }

            public void incWakeupsLocked() {
                this.mWakeups++;
            }

            final Serv newServiceStatsLocked() {
                return new Serv();
            }
        }

        public Proc getProcessStatsLocked(String str) {
            Proc proc = this.mProcessStats.get(str);
            if (proc == null) {
                Proc proc2 = new Proc();
                this.mProcessStats.put(str, proc2);
                return proc2;
            }
            return proc;
        }

        public SparseArray<? extends BatteryStats.Uid.Pid> getPidStats() {
            return this.mPids;
        }

        public BatteryStats.Uid.Pid getPidStatsLocked(int i) {
            BatteryStats.Uid.Pid pid = this.mPids.get(i);
            if (pid == null) {
                BatteryStats.Uid.Pid pid2 = new BatteryStats.Uid.Pid(this);
                this.mPids.put(i, pid2);
                return pid2;
            }
            return pid;
        }

        public Pkg getPackageStatsLocked(String str) {
            Pkg pkg = this.mPackageStats.get(str);
            if (pkg == null) {
                Pkg pkg2 = new Pkg();
                this.mPackageStats.put(str, pkg2);
                return pkg2;
            }
            return pkg;
        }

        public Pkg.Serv getServiceStatsLocked(String str, String str2) {
            Pkg packageStatsLocked = getPackageStatsLocked(str);
            Pkg.Serv serv = packageStatsLocked.mServiceStats.get(str2);
            if (serv == null) {
                Pkg.Serv newServiceStatsLocked = packageStatsLocked.newServiceStatsLocked();
                packageStatsLocked.mServiceStats.put(str2, newServiceStatsLocked);
                return newServiceStatsLocked;
            }
            return serv;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x004d  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0077  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public StopwatchTimer getWakeTimerLocked(String str, int i) {
            Wakelock wakelock;
            Wakelock wakelock2 = this.mWakelockStats.get(str);
            if (wakelock2 == null) {
                int size = this.mWakelockStats.size();
                if (size > 30 && (this.mUid != 1000 || size > 50)) {
                    str = BatteryStatsImpl.BATCHED_WAKELOCK_NAME;
                    wakelock2 = this.mWakelockStats.get(BatteryStatsImpl.BATCHED_WAKELOCK_NAME);
                }
                if (wakelock2 == null) {
                    Wakelock wakelock3 = new Wakelock();
                    this.mWakelockStats.put(str, wakelock3);
                    wakelock = wakelock3;
                    switch (i) {
                        case 0:
                            StopwatchTimer stopwatchTimer = wakelock.mTimerPartial;
                            if (stopwatchTimer == null) {
                                StopwatchTimer stopwatchTimer2 = new StopwatchTimer(this, 0, BatteryStatsImpl.this.mPartialTimers, BatteryStatsImpl.this.mUnpluggables);
                                wakelock.mTimerPartial = stopwatchTimer2;
                                return stopwatchTimer2;
                            }
                            return stopwatchTimer;
                        case 1:
                            StopwatchTimer stopwatchTimer3 = wakelock.mTimerFull;
                            if (stopwatchTimer3 == null) {
                                StopwatchTimer stopwatchTimer4 = new StopwatchTimer(this, 1, BatteryStatsImpl.this.mFullTimers, BatteryStatsImpl.this.mUnpluggables);
                                wakelock.mTimerFull = stopwatchTimer4;
                                return stopwatchTimer4;
                            }
                            return stopwatchTimer3;
                        case 2:
                            StopwatchTimer stopwatchTimer5 = wakelock.mTimerWindow;
                            if (stopwatchTimer5 == null) {
                                StopwatchTimer stopwatchTimer6 = new StopwatchTimer(this, 2, BatteryStatsImpl.this.mWindowTimers, BatteryStatsImpl.this.mUnpluggables);
                                wakelock.mTimerWindow = stopwatchTimer6;
                                return stopwatchTimer6;
                            }
                            return stopwatchTimer5;
                        default:
                            throw new IllegalArgumentException("type=" + i);
                    }
                }
            }
            wakelock = wakelock2;
            switch (i) {
            }
        }

        public StopwatchTimer getSensorTimerLocked(int i, boolean z) {
            Sensor sensor;
            Sensor sensor2 = this.mSensorStats.get(Integer.valueOf(i));
            if (sensor2 != null) {
                sensor = sensor2;
            } else if (!z) {
                return null;
            } else {
                Sensor sensor3 = new Sensor(i);
                this.mSensorStats.put(Integer.valueOf(i), sensor3);
                sensor = sensor3;
            }
            StopwatchTimer stopwatchTimer = sensor.mTimer;
            if (stopwatchTimer == null) {
                ArrayList<StopwatchTimer> arrayList = BatteryStatsImpl.this.mSensorTimers.get(i);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    BatteryStatsImpl.this.mSensorTimers.put(i, arrayList);
                }
                StopwatchTimer stopwatchTimer2 = new StopwatchTimer(this, 3, arrayList, BatteryStatsImpl.this.mUnpluggables);
                sensor.mTimer = stopwatchTimer2;
                return stopwatchTimer2;
            }
            return stopwatchTimer;
        }

        public void noteStartWakeLocked(int i, String str, int i2) {
            StopwatchTimer wakeTimerLocked = getWakeTimerLocked(str, i2);
            if (wakeTimerLocked != null) {
                wakeTimerLocked.startRunningLocked(BatteryStatsImpl.this);
            }
            if (i >= 0 && i2 == 0) {
                BatteryStats.Uid.Pid pidStatsLocked = getPidStatsLocked(i);
                if (pidStatsLocked.mWakeStart == 0) {
                    pidStatsLocked.mWakeStart = SystemClock.elapsedRealtime();
                }
            }
        }

        public void noteStopWakeLocked(int i, String str, int i2) {
            BatteryStats.Uid.Pid pid;
            StopwatchTimer wakeTimerLocked = getWakeTimerLocked(str, i2);
            if (wakeTimerLocked != null) {
                wakeTimerLocked.stopRunningLocked(BatteryStatsImpl.this);
            }
            if (i >= 0 && i2 == 0 && (pid = this.mPids.get(i)) != null && pid.mWakeStart != 0) {
                pid.mWakeSum += SystemClock.elapsedRealtime() - pid.mWakeStart;
                pid.mWakeStart = 0L;
            }
        }

        public void reportExcessiveWakeLocked(String str, long j, long j2) {
            Proc processStatsLocked = getProcessStatsLocked(str);
            if (processStatsLocked != null) {
                processStatsLocked.addExcessiveWake(j, j2);
            }
        }

        public void reportExcessiveCpuLocked(String str, long j, long j2) {
            Proc processStatsLocked = getProcessStatsLocked(str);
            if (processStatsLocked != null) {
                processStatsLocked.addExcessiveCpu(j, j2);
            }
        }

        public void noteStartSensor(int i) {
            StopwatchTimer sensorTimerLocked = getSensorTimerLocked(i, true);
            if (sensorTimerLocked != null) {
                sensorTimerLocked.startRunningLocked(BatteryStatsImpl.this);
            }
        }

        public void noteStopSensor(int i) {
            StopwatchTimer sensorTimerLocked = getSensorTimerLocked(i, false);
            if (sensorTimerLocked != null) {
                sensorTimerLocked.stopRunningLocked(BatteryStatsImpl.this);
            }
        }

        public void noteStartGps() {
            StopwatchTimer sensorTimerLocked = getSensorTimerLocked(XCallback.PRIORITY_LOWEST, true);
            if (sensorTimerLocked != null) {
                sensorTimerLocked.startRunningLocked(BatteryStatsImpl.this);
            }
        }

        public void noteStopGps() {
            StopwatchTimer sensorTimerLocked = getSensorTimerLocked(XCallback.PRIORITY_LOWEST, false);
            if (sensorTimerLocked != null) {
                sensorTimerLocked.stopRunningLocked(BatteryStatsImpl.this);
            }
        }

        public BatteryStatsImpl getBatteryStats() {
            return BatteryStatsImpl.this;
        }
    }

    public void setCallback(BatteryCallback batteryCallback) {
        this.mCallback = batteryCallback;
    }

    public void setNumSpeedSteps(int i) {
        if (sNumSpeedSteps == 0) {
            sNumSpeedSteps = i;
        }
    }

    public void setRadioScanningTimeout(long j) {
        if (this.mPhoneSignalScanningTimer != null) {
            this.mPhoneSignalScanningTimer.setTimeout(j);
        }
    }

    public boolean startIteratingOldHistoryLocked() {
        return true;
    }

    public boolean getNextOldHistoryLocked(BatteryStats.HistoryItem historyItem) {
        return true;
    }

    public void finishIteratingOldHistoryLocked() {
        this.mIteratingHistory = false;
        this.mHistoryBuffer.setDataPosition(this.mHistoryBuffer.dataSize());
    }

    public boolean startIteratingHistoryLocked() {
        return this.mHistoryBuffer.dataSize() > 0;
    }

    public boolean getNextHistoryLocked(BatteryStats.HistoryItem historyItem) {
        int dataPosition = this.mHistoryBuffer.dataPosition();
        if (dataPosition == 0) {
            historyItem.clear();
        }
        if (dataPosition >= this.mHistoryBuffer.dataSize()) {
            return false;
        }
        historyItem.readDelta(this.mHistoryBuffer);
        return true;
    }

    public void finishIteratingHistoryLocked() {
        this.mIteratingHistory = false;
        this.mHistoryBuffer.setDataPosition(this.mHistoryBuffer.dataSize());
    }

    public long getHistoryBaseTime() {
        return this.mHistoryBaseTime;
    }

    public int getStartCount() {
        return this.mStartCount;
    }

    public boolean isOnBattery() {
        return this.mOnBattery;
    }

    public boolean isScreenOn() {
        return this.mScreenOn;
    }

    void initTimes() {
        this.mTrackBatteryPastUptime = 0L;
        this.mBatteryRealtime = 0L;
        this.mTrackBatteryPastRealtime = 0L;
        this.mBatteryUptime = 0L;
        long uptimeMillis = SystemClock.uptimeMillis() * 1000;
        this.mTrackBatteryUptimeStart = uptimeMillis;
        this.mUptimeStart = uptimeMillis;
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        this.mTrackBatteryRealtimeStart = elapsedRealtime;
        this.mRealtimeStart = elapsedRealtime;
        this.mUnpluggedBatteryUptime = getBatteryUptimeLocked(this.mUptimeStart);
        this.mUnpluggedBatteryRealtime = getBatteryRealtimeLocked(this.mRealtimeStart);
    }

    void initDischarge() {
        this.mLowDischargeAmountSinceCharge = 0;
        this.mHighDischargeAmountSinceCharge = 0;
        this.mDischargeAmountScreenOn = 0;
        this.mDischargeAmountScreenOnSinceCharge = 0;
        this.mDischargeAmountScreenOff = 0;
        this.mDischargeAmountScreenOffSinceCharge = 0;
    }

    public void resetAllStatsLocked() {
    }

    void updateDischargeScreenLevelsLocked(boolean z, boolean z2) {
        if (z) {
            int i = this.mDischargeScreenOnUnplugLevel - this.mDischargeCurrentLevel;
            if (i > 0) {
                this.mDischargeAmountScreenOn += i;
                this.mDischargeAmountScreenOnSinceCharge = i + this.mDischargeAmountScreenOnSinceCharge;
            }
        } else {
            int i2 = this.mDischargeScreenOffUnplugLevel - this.mDischargeCurrentLevel;
            if (i2 > 0) {
                this.mDischargeAmountScreenOff += i2;
                this.mDischargeAmountScreenOffSinceCharge = i2 + this.mDischargeAmountScreenOffSinceCharge;
            }
        }
        if (z2) {
            this.mDischargeScreenOnUnplugLevel = this.mDischargeCurrentLevel;
            this.mDischargeScreenOffUnplugLevel = 0;
            return;
        }
        this.mDischargeScreenOnUnplugLevel = 0;
        this.mDischargeScreenOffUnplugLevel = this.mDischargeCurrentLevel;
    }

    void setOnBattery(boolean z, int i, int i2) {
        synchronized (this) {
            setOnBatteryLocked(z, i, i2);
        }
    }

    void setOnBatteryLocked(boolean z, int i, int i2) {
    }

    public void setBatteryState(int i, int i2, int i3, int i4, int i5, int i6) {
        boolean z = false;
        synchronized (this) {
            boolean z2 = i3 == 0;
            int i7 = this.mHistoryCur.batteryStatus;
            if (!this.mHaveBatteryLevel) {
                this.mHaveBatteryLevel = true;
                if (z2 == this.mOnBattery) {
                    if (z2) {
                        this.mHistoryCur.states &= -524289;
                    } else {
                        this.mHistoryCur.states |= 524288;
                    }
                }
                i7 = i;
            }
            if (z2) {
                this.mDischargeCurrentLevel = i4;
                this.mRecordingHistory = true;
            }
            if (z2 != this.mOnBattery) {
                this.mHistoryCur.batteryLevel = (byte) i4;
                this.mHistoryCur.batteryStatus = (byte) i;
                this.mHistoryCur.batteryHealth = (byte) i2;
                this.mHistoryCur.batteryPlugType = (byte) i3;
                this.mHistoryCur.batteryTemperature = (char) i5;
                this.mHistoryCur.batteryVoltage = (char) i6;
                setOnBatteryLocked(z2, i7, i4);
            } else {
                if (this.mHistoryCur.batteryLevel != i4) {
                    this.mHistoryCur.batteryLevel = (byte) i4;
                    z = true;
                }
                if (this.mHistoryCur.batteryStatus != i) {
                    this.mHistoryCur.batteryStatus = (byte) i;
                    z = true;
                }
                if (this.mHistoryCur.batteryHealth != i2) {
                    this.mHistoryCur.batteryHealth = (byte) i2;
                    z = true;
                }
                if (this.mHistoryCur.batteryPlugType != i3) {
                    this.mHistoryCur.batteryPlugType = (byte) i3;
                    z = true;
                }
                if (i5 >= this.mHistoryCur.batteryTemperature + '\n' || i5 <= this.mHistoryCur.batteryTemperature - '\n') {
                    this.mHistoryCur.batteryTemperature = (char) i5;
                    z = true;
                }
                if (i6 > this.mHistoryCur.batteryVoltage + 20 || i6 < this.mHistoryCur.batteryVoltage - 20) {
                    this.mHistoryCur.batteryVoltage = (char) i6;
                    z = true;
                }
                if (z) {
                    addHistoryRecordLocked(SystemClock.elapsedRealtime());
                }
            }
            if (!z2 && i == 5) {
                this.mRecordingHistory = false;
            }
        }
    }

    public void updateKernelWakelocksLocked() {
    }

    public long getAwakeTimeBattery() {
        return computeBatteryUptime(getBatteryUptimeLocked(), 2);
    }

    public long getAwakeTimePlugged() {
        return (SystemClock.uptimeMillis() * 1000) - getAwakeTimeBattery();
    }

    public long computeUptime(long j, int i) {
        switch (i) {
            case 0:
                return this.mUptime + (j - this.mUptimeStart);
            case 1:
                return this.mLastUptime;
            case 2:
                return j - this.mUptimeStart;
            case 3:
                return j - this.mTrackBatteryUptimeStart;
            default:
                return 0L;
        }
    }

    public long computeRealtime(long j, int i) {
        switch (i) {
            case 0:
                return this.mRealtime + (j - this.mRealtimeStart);
            case 1:
                return this.mLastRealtime;
            case 2:
                return j - this.mRealtimeStart;
            case 3:
                return j - this.mTrackBatteryRealtimeStart;
            default:
                return 0L;
        }
    }

    public long computeBatteryUptime(long j, int i) {
        switch (i) {
            case 0:
                return this.mBatteryUptime + getBatteryUptime(j);
            case 1:
                return this.mBatteryLastUptime;
            case 2:
                return getBatteryUptime(j);
            case 3:
                return getBatteryUptimeLocked(j) - this.mUnpluggedBatteryUptime;
            default:
                return 0L;
        }
    }

    public long computeBatteryRealtime(long j, int i) {
        switch (i) {
            case 0:
                return this.mBatteryRealtime + getBatteryRealtimeLocked(j);
            case 1:
                return this.mBatteryLastRealtime;
            case 2:
                return getBatteryRealtimeLocked(j);
            case 3:
                return getBatteryRealtimeLocked(j) - this.mUnpluggedBatteryRealtime;
            default:
                return 0L;
        }
    }

    long getBatteryUptimeLocked(long j) {
        long j2 = this.mTrackBatteryPastUptime;
        if (this.mOnBatteryInternal) {
            return j2 + (j - this.mTrackBatteryUptimeStart);
        }
        return j2;
    }

    long getBatteryUptimeLocked() {
        return getBatteryUptime(SystemClock.uptimeMillis() * 1000);
    }

    public long getBatteryUptime(long j) {
        return getBatteryUptimeLocked(j);
    }

    long getBatteryRealtimeLocked(long j) {
        long j2 = this.mTrackBatteryPastRealtime;
        if (this.mOnBatteryInternal) {
            return j2 + (j - this.mTrackBatteryRealtimeStart);
        }
        return j2;
    }

    public long getBatteryRealtime(long j) {
        return getBatteryRealtimeLocked(j);
    }

    private long getTcpBytes(long j, long[] jArr, int i) {
        if (i == 1) {
            return jArr[1];
        }
        if (i == 3) {
            if (jArr[3] < 0) {
                return jArr[1];
            }
            return j - jArr[3];
        } else if (i == 0) {
            return (j - jArr[2]) + jArr[0];
        } else {
            return j - jArr[2];
        }
    }

    public long getMobileTcpBytesSent(int i) {
        return 0L;
    }

    public long getMobileTcpBytesReceived(int i) {
        return 0L;
    }

    public long getTotalTcpBytesSent(int i) {
        return 0L;
    }

    public long getTotalTcpBytesReceived(int i) {
        return 0L;
    }

    public int getDischargeStartLevel() {
        int dischargeStartLevelLocked;
        synchronized (this) {
            dischargeStartLevelLocked = getDischargeStartLevelLocked();
        }
        return dischargeStartLevelLocked;
    }

    public int getDischargeStartLevelLocked() {
        return this.mDischargeUnplugLevel;
    }

    public int getDischargeCurrentLevel() {
        int dischargeCurrentLevelLocked;
        synchronized (this) {
            dischargeCurrentLevelLocked = getDischargeCurrentLevelLocked();
        }
        return dischargeCurrentLevelLocked;
    }

    public int getDischargeCurrentLevelLocked() {
        return this.mDischargeCurrentLevel;
    }

    public int getLowDischargeAmountSinceCharge() {
        int i;
        synchronized (this) {
            i = this.mLowDischargeAmountSinceCharge;
            if (this.mOnBattery && this.mDischargeCurrentLevel < this.mDischargeUnplugLevel) {
                i += (this.mDischargeUnplugLevel - this.mDischargeCurrentLevel) - 1;
            }
        }
        return i;
    }

    public int getHighDischargeAmountSinceCharge() {
        int i;
        synchronized (this) {
            i = this.mHighDischargeAmountSinceCharge;
            if (this.mOnBattery && this.mDischargeCurrentLevel < this.mDischargeUnplugLevel) {
                i += this.mDischargeUnplugLevel - this.mDischargeCurrentLevel;
            }
        }
        return i;
    }

    public int getDischargeAmountScreenOn() {
        int i;
        synchronized (this) {
            i = this.mDischargeAmountScreenOn;
            if (this.mOnBattery && this.mScreenOn && this.mDischargeCurrentLevel < this.mDischargeScreenOnUnplugLevel) {
                i += this.mDischargeScreenOnUnplugLevel - this.mDischargeCurrentLevel;
            }
        }
        return i;
    }

    public int getDischargeAmountScreenOnSinceCharge() {
        int i;
        synchronized (this) {
            i = this.mDischargeAmountScreenOnSinceCharge;
            if (this.mOnBattery && this.mScreenOn && this.mDischargeCurrentLevel < this.mDischargeScreenOnUnplugLevel) {
                i += this.mDischargeScreenOnUnplugLevel - this.mDischargeCurrentLevel;
            }
        }
        return i;
    }

    public int getDischargeAmountScreenOff() {
        int i;
        synchronized (this) {
            i = this.mDischargeAmountScreenOff;
            if (this.mOnBattery && !this.mScreenOn && this.mDischargeCurrentLevel < this.mDischargeScreenOffUnplugLevel) {
                i += this.mDischargeScreenOffUnplugLevel - this.mDischargeCurrentLevel;
            }
        }
        return i;
    }

    public int getDischargeAmountScreenOffSinceCharge() {
        int i;
        synchronized (this) {
            i = this.mDischargeAmountScreenOffSinceCharge;
            if (this.mOnBattery && !this.mScreenOn && this.mDischargeCurrentLevel < this.mDischargeScreenOffUnplugLevel) {
                i += this.mDischargeScreenOffUnplugLevel - this.mDischargeCurrentLevel;
            }
        }
        return i;
    }

    public int getCpuSpeedSteps() {
        return sNumSpeedSteps;
    }

    public Uid getUidStatsLocked(int i) {
        Uid uid = this.mUidStats.get(i);
        if (uid == null) {
            Uid uid2 = new Uid(i);
            this.mUidStats.put(i, uid2);
            return uid2;
        }
        return uid;
    }

    public void removeUidStatsLocked(int i) {
        this.mUidStats.remove(i);
    }

    public Uid.Proc getProcessStatsLocked(int i, String str) {
        return getUidStatsLocked(i).getProcessStatsLocked(str);
    }

    public Uid.Proc getProcessStatsLocked(String str, int i) {
        return null;
    }

    public Uid.Pkg getPackageStatsLocked(int i, String str) {
        return getUidStatsLocked(i).getPackageStatsLocked(str);
    }

    public Uid.Pkg.Serv getServiceStatsLocked(int i, String str, String str2) {
        return getUidStatsLocked(i).getServiceStatsLocked(str, str2);
    }

    public void distributeWorkLocked(int i) {
    }

    public void shutdownLocked() {
        writeSyncLocked();
        this.mShuttingDown = true;
    }

    public void writeAsyncLocked() {
        writeLocked(false);
    }

    public void writeSyncLocked() {
        writeLocked(true);
    }

    void writeLocked(boolean z) {
    }

    public void commitPendingDataToDisk() {
    }

    static byte[] readFully(FileInputStream fileInputStream) {
        byte[] bArr = new byte[fileInputStream.available()];
        int i = 0;
        while (true) {
            int read = fileInputStream.read(bArr, i, bArr.length - i);
            if (read <= 0) {
                return bArr;
            }
            int i2 = read + i;
            int available = fileInputStream.available();
            if (available > bArr.length - i2) {
                byte[] bArr2 = new byte[available + i2];
                System.arraycopy(bArr, 0, bArr2, 0, i2);
                bArr = bArr2;
                i = i2;
            } else {
                i = i2;
            }
        }
    }

    public void readLocked() {
    }

    public int describeContents() {
        return 0;
    }

    void readHistory(Parcel parcel, boolean z) {
    }

    void readOldHistory(Parcel parcel) {
    }

    void writeHistory(Parcel parcel, boolean z) {
    }

    void writeOldHistory(Parcel parcel) {
    }

    private void readSummaryFromParcel(Parcel parcel) {
    }

    public void writeSummaryToParcel(Parcel parcel) {
    }

    public void readFromParcel(Parcel parcel) {
        readFromParcelLocked(parcel);
    }

    void readFromParcelLocked(Parcel parcel) {
    }

    public void writeToParcel(Parcel parcel, int i) {
    }

    public void writeToParcelWithoutUids(Parcel parcel, int i) {
    }

    public void prepareForDumpLocked() {
        updateKernelWakelocksLocked();
    }

    public void dumpLocked(PrintWriter printWriter) {
    }
}
