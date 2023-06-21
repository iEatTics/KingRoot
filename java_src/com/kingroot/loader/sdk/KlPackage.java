package com.kingroot.loader.sdk;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import com.kingroot.kinguser.bkq;
import com.kingroot.kinguser.bks;
import com.kingroot.kinguser.bku;
import com.kingroot.loader.common.KlConst;
import java.io.File;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class KlPackage implements Parcelable {
    public KlConfig config;
    public KlInfo klInfo;
    private boolean mHasRun;
    private String mPluginBaseDataPath;
    private String mPluginDexOutPath;
    private String mPluginLibPath;
    private String mPluginSourcePath;
    private final HashSet<Integer> mRunningPids;
    private static final String TAG = KlPackage.class.getName();
    public static final Parcelable.Creator<KlPackage> CREATOR = new Parcelable.Creator<KlPackage>() { // from class: com.kingroot.loader.sdk.KlPackage.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aW */
        public KlPackage createFromParcel(Parcel parcel) {
            return new KlPackage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: jD */
        public KlPackage[] newArray(int i) {
            return new KlPackage[i];
        }
    };

    public KlPackage(KlInfo klInfo, KlConfig klConfig, String str, String str2, String str3) {
        this.mRunningPids = new HashSet<>(2);
        this.mPluginSourcePath = "";
        this.mPluginLibPath = "";
        this.mPluginBaseDataPath = "";
        this.mPluginDexOutPath = "";
        this.mHasRun = false;
        this.klInfo = klInfo;
        this.config = klConfig;
        this.mPluginSourcePath = str;
        this.mPluginBaseDataPath = str2;
        this.mPluginDexOutPath = str3;
        updateLibPath();
    }

    @TargetApi(21)
    public void updateLibPath() {
        String str;
        File file = new File(this.mPluginBaseDataPath, KlConst.PLUGIN_LIB_DIR_NAME);
        if (!file.exists() && file.mkdirs() && bku.m6529qb() > 8) {
            file.setExecutable(true, false);
        }
        String str2 = KlConst.DEFAULT_CPU_TYPE;
        String[] list = file.list();
        if (list != null && list.length > 0) {
            bkq.m6551d(TAG, "PluginId : " + this.klInfo.pluginId + ", available abi(s) : " + Arrays.toString(list));
            HashSet hashSet = new HashSet(Arrays.asList(list));
            if (bku.m6529qb() < 21) {
                bkq.m6551d(TAG, "primary abi : " + Build.CPU_ABI + ", secondary abi : " + Build.CPU_ABI2);
                if (hashSet.contains(Build.CPU_ABI)) {
                    str2 = Build.CPU_ABI;
                } else if (hashSet.contains(Build.CPU_ABI2)) {
                    str2 = Build.CPU_ABI2;
                }
            } else if (bku.m6530qO()) {
                bkq.m6551d(TAG, "64-bit abi(s) : " + Arrays.asList(Build.SUPPORTED_64_BIT_ABIS));
                String[] strArr = Build.SUPPORTED_64_BIT_ABIS;
                int length = strArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        str = KlConst.DEFAULT_CPU_TYPE;
                        break;
                    }
                    str = strArr[i];
                    if (hashSet.contains(str)) {
                        break;
                    }
                    i++;
                }
                str2 = str;
            } else {
                bkq.m6551d(TAG, "32-bit abi(s) : " + Arrays.asList(Build.SUPPORTED_32_BIT_ABIS));
                String[] strArr2 = Build.SUPPORTED_32_BIT_ABIS;
                int length2 = strArr2.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length2) {
                        break;
                    }
                    String str3 = strArr2[i2];
                    if (hashSet.contains(str3)) {
                        str2 = str3;
                        break;
                    }
                    i2++;
                }
            }
            bkq.m6551d(TAG, "PluginId : " + this.klInfo.pluginId + ", selected abi : " + str2);
            this.mPluginLibPath = file.getAbsolutePath() + File.separator + str2;
            return;
        }
        bkq.m6551d(TAG, "PluginId : " + this.klInfo.pluginId + ", no available abi(s)");
    }

    public final String getPluginSourcePath() {
        return this.mPluginSourcePath;
    }

    public final String getPluginBaseDataPath() {
        return this.mPluginBaseDataPath;
    }

    public final String getPackageName() {
        return this.klInfo.packageName;
    }

    public final String getPluginDexOutPath() {
        return this.mPluginDexOutPath;
    }

    public final String getPluginLibPath() {
        return this.mPluginLibPath;
    }

    public synchronized void triggerPidRunning(int i) {
        this.mRunningPids.add(Integer.valueOf(i));
        removeInvalidRunningPid();
        this.mHasRun = this.mRunningPids.size() > 0;
    }

    public synchronized boolean isRunning() {
        removeInvalidRunningPid();
        this.mHasRun = this.mRunningPids.size() > 0;
        return this.mHasRun;
    }

    private void removeInvalidRunningPid() {
        Iterator<Integer> it = this.mRunningPids.iterator();
        while (it.hasNext()) {
            bks.C2484a m6534jE = bks.m6534jE(it.next().intValue());
            if (m6534jE == null || m6534jE.uid != Process.myUid()) {
                it.remove();
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.klInfo, i);
        parcel.writeParcelable(this.config, i);
        parcel.writeString(this.mPluginSourcePath);
        parcel.writeString(this.mPluginLibPath);
        parcel.writeString(this.mPluginBaseDataPath);
        parcel.writeString(this.mPluginDexOutPath);
        parcel.writeInt(this.mHasRun ? 1 : 0);
    }

    private KlPackage(Parcel parcel) {
        this.mRunningPids = new HashSet<>(2);
        this.mPluginSourcePath = "";
        this.mPluginLibPath = "";
        this.mPluginBaseDataPath = "";
        this.mPluginDexOutPath = "";
        this.mHasRun = false;
        readFromParcel(parcel);
    }

    private void readFromParcel(Parcel parcel) {
        this.klInfo = (KlInfo) parcel.readParcelable(KlInfo.class.getClassLoader());
        this.config = (KlConfig) parcel.readParcelable(KlConfig.class.getClassLoader());
        this.mPluginSourcePath = parcel.readString();
        this.mPluginLibPath = parcel.readString();
        this.mPluginBaseDataPath = parcel.readString();
        this.mPluginDexOutPath = parcel.readString();
        this.mHasRun = parcel.readInt() == 1;
    }
}
