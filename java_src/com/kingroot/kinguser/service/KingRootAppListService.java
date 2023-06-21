package com.kingroot.kinguser.service;

import android.app.Service;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.IBinder;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.aaz;
import com.kingroot.kinguser.bbt;
import com.kingroot.kinguser.bgh;
import com.kingroot.kinguser.bhc;
import com.kingroot.kinguser.model.AppRuleEntity;
import com.kingroot.kinguser.service.IKingrootAppList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class KingRootAppListService extends Service {
    private C3586a bjb = null;

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.bjb = new C3586a();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return new KingrootAppListMgr();
    }

    /* loaded from: classes.dex */
    public class KingrootAppListMgr extends IKingrootAppList.Stub {
        public KingrootAppListMgr() {
        }

        @Override // com.kingroot.kinguser.service.IKingrootAppList
        public int addItem(String str, int i, String str2, long j) {
            if (KingRootAppListService.this.bjb.checkPermission()) {
                bbt.m7780WG().addRule(j > 0 ? j : bhc.ach(), str2 != null ? str2 : bgh.m7115jf(str), str, i == 1 ? 1 : 0, 0L);
                return 1;
            }
            return 0;
        }

        @Override // com.kingroot.kinguser.service.IKingrootAppList
        public int modifyItem(String str, int i, String str2, long j) {
            return addItem(str, i, str2, j);
        }

        @Override // com.kingroot.kinguser.service.IKingrootAppList
        public int delelteItem(String str) {
            if (!KingRootAppListService.this.bjb.checkPermission()) {
                return 0;
            }
            bbt.m7780WG().deleteRule(str);
            return 1;
        }

        @Override // com.kingroot.kinguser.service.IKingrootAppList
        public Map<String, KingrootAppItem> getAllAppList() {
            if (!KingRootAppListService.this.bjb.checkPermission()) {
                return null;
            }
            HashMap<String, AppRuleEntity> allAppRuleList = bbt.m7780WG().getAllAppRuleList();
            HashMap hashMap = new HashMap(allAppRuleList.size());
            for (Map.Entry<String, AppRuleEntity> entry : allAppRuleList.entrySet()) {
                AppRuleEntity value = entry.getValue();
                KingrootAppItem kingrootAppItem = new KingrootAppItem();
                kingrootAppItem.m2273kO(value.mPackageName);
                kingrootAppItem.m2275il(value.mRule == 1 ? 1 : 0);
                kingrootAppItem.m2274kN(value.mAppName);
                kingrootAppItem.setTime(value.mTime);
                hashMap.put(value.mPackageName, kingrootAppItem);
            }
            return hashMap;
        }

        @Override // com.kingroot.kinguser.service.IKingrootAppList
        public Map<String, KingrootAppItem> getAllowAppList() {
            if (!KingRootAppListService.this.bjb.checkPermission()) {
                return null;
            }
            HashMap<String, AppRuleEntity> allowAppRuleList = bbt.m7780WG().getAllowAppRuleList();
            HashMap hashMap = new HashMap(allowAppRuleList.size());
            for (Map.Entry<String, AppRuleEntity> entry : allowAppRuleList.entrySet()) {
                AppRuleEntity value = entry.getValue();
                KingrootAppItem kingrootAppItem = new KingrootAppItem();
                kingrootAppItem.m2273kO(value.mPackageName);
                kingrootAppItem.m2275il(value.mRule == 1 ? 1 : 0);
                kingrootAppItem.m2274kN(value.mAppName);
                kingrootAppItem.setTime(value.mTime);
                hashMap.put(value.mPackageName, kingrootAppItem);
            }
            return hashMap;
        }

        @Override // com.kingroot.kinguser.service.IKingrootAppList
        public Map<String, KingrootAppItem> getDenyAppList() {
            if (!KingRootAppListService.this.bjb.checkPermission()) {
                return null;
            }
            HashMap<String, AppRuleEntity> denyAppRuleList = bbt.m7780WG().getDenyAppRuleList();
            HashMap hashMap = new HashMap(denyAppRuleList.size());
            for (Map.Entry<String, AppRuleEntity> entry : denyAppRuleList.entrySet()) {
                AppRuleEntity value = entry.getValue();
                KingrootAppItem kingrootAppItem = new KingrootAppItem();
                kingrootAppItem.m2273kO(value.mPackageName);
                kingrootAppItem.m2275il(value.mRule == 1 ? 1 : 0);
                kingrootAppItem.m2274kN(value.mAppName);
                kingrootAppItem.setTime(value.mTime);
                hashMap.put(value.mPackageName, kingrootAppItem);
            }
            return hashMap;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.service.KingRootAppListService$a */
    /* loaded from: classes.dex */
    public final class C3586a {
        private PackageManager mPackageManager = C3952zh.m1312pq();
        private HashMap<Long, Boolean> bjc = new HashMap<>();
        private ArrayList<String> bjd = new ArrayList<>();

        public C3586a() {
            this.bjd.add(aaz.m12867qy().toLowerCase());
            this.bjd.add("13fd04e376114fcb2a248547c949b885");
        }

        public boolean checkPermission() {
            String[] packagesForUid;
            Long valueOf = Long.valueOf(Binder.getCallingUid());
            if (!this.bjc.containsKey(valueOf) && (packagesForUid = this.mPackageManager.getPackagesForUid(valueOf.intValue())) != null && packagesForUid.length > 0) {
                String m12872dZ = aaz.m12872dZ(packagesForUid[0]);
                this.bjc.put(valueOf, Boolean.valueOf(m12872dZ != null ? this.bjd.contains(m12872dZ.trim().toLowerCase()) : false));
            }
            return this.bjc.get(valueOf).booleanValue();
        }
    }
}
