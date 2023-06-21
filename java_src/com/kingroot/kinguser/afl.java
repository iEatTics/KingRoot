package com.kingroot.kinguser;

import android.app.WallpaperInfo;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.provider.Settings;
import com.kingroot.kingmaster.toolbox.process.manager.RunningServer;
import com.kingroot.kinguses.R;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Comparator;
/* loaded from: classes.dex */
public class afl {
    private ArrayList<String> ahT;
    private Context mContext;
    final Comparator<RunningServer.PackageRunningInfo> ahU = new Comparator<RunningServer.PackageRunningInfo>() { // from class: com.kingroot.kinguser.afl.1
        private Collator ahV = Collator.getInstance();

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(RunningServer.PackageRunningInfo packageRunningInfo, RunningServer.PackageRunningInfo packageRunningInfo2) {
            if (packageRunningInfo.mChecked != packageRunningInfo2.mChecked) {
                return packageRunningInfo.mChecked ? -1 : 1;
            }
            return this.ahV.compare(packageRunningInfo.mDisplayName, packageRunningInfo2.mDisplayName);
        }
    };
    private String ahQ = C3953zi.m1311pr().getString(R.string.process_manager_suggest_keep);
    private String ahR = C3953zi.m1311pr().getString(R.string.process_manager_protected_app);
    private ArrayList<String> ahS = m12055vm();

    public afl(Context context) {
        this.mContext = context;
        this.ahT = m12057aH(this.mContext);
    }

    /* renamed from: d */
    public boolean m12056d(PackageInfo packageInfo) {
        C3952zh m1312pq = C3952zh.m1312pq();
        return (m1312pq == null || afn.m12046b(m1312pq, packageInfo)) ? false : true;
    }

    /* renamed from: aH */
    public static ArrayList<String> m12057aH(Context context) {
        String[] split = context.getSharedPreferences("user_whitelist", 0).getString("packages", "").split(":");
        int length = split == null ? 0 : split.length;
        ArrayList<String> arrayList = new ArrayList<>(length);
        for (int i = 0; i < length; i++) {
            if (split[i].length() != 0) {
                arrayList.add(split[i]);
            }
        }
        return arrayList;
    }

    /* renamed from: vm */
    private ArrayList<String> m12055vm() {
        ArrayList<String> arrayList = new ArrayList<>();
        C3952zh m1312pq = C3952zh.m1312pq();
        if (m1312pq == null) {
            return arrayList;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo resolveActivity = m1312pq.resolveActivity(intent, 65536);
        if (resolveActivity != null) {
            arrayList.add(resolveActivity.activityInfo.packageName);
        }
        String string = Settings.Secure.getString(this.mContext.getContentResolver(), "default_input_method");
        if (string != null) {
            int indexOf = string.indexOf(47);
            if (indexOf >= 0) {
                string = string.substring(0, indexOf);
            }
            arrayList.add(string);
        }
        WallpaperInfo wallpaperInfo = WallpaperManager.getInstance(this.mContext).getWallpaperInfo();
        if (wallpaperInfo != null) {
            arrayList.add(wallpaperInfo.getPackageName());
        }
        return arrayList;
    }
}
