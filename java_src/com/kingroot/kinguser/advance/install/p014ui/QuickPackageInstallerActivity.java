package com.kingroot.kinguser.advance.install.p014ui;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.AbstractC3682tz;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.C3636tj;
import com.kingroot.kinguser.C3637tk;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.aam;
import com.kingroot.kinguser.aaz;
import com.kingroot.kinguser.activitys.AppDetailActivity;
import com.kingroot.kinguser.activitys.AppDownloadActivity;
import com.kingroot.kinguser.activitys.AppsMarketMainActivity;
import com.kingroot.kinguser.activitys.KUBaseActivity;
import com.kingroot.kinguser.advance.model.QuickInstallerInfo;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.ags;
import com.kingroot.kinguser.ahd;
import com.kingroot.kinguser.ajh;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.anf;
import com.kingroot.kinguser.arv;
import com.kingroot.kinguser.aso;
import com.kingroot.kinguser.awe;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.examination.service.CloudCheckCallback;
import com.kingroot.kinguser.examination.service.ICloudCheckCallback;
import com.kingroot.kinguser.gamebox.common.ApkInstallRequest;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import com.tencent.feedback.eup.BuglyBroadcastRecevier;
import com.tencent.securemodule.api.AppInfo;
import java.io.File;
/* renamed from: com.kingroot.kinguser.advance.install.ui.QuickPackageInstallerActivity */
/* loaded from: classes.dex */
public class QuickPackageInstallerActivity extends KUBaseActivity {
    private static final int anS = ((int) (Math.random() * 1000.0d)) + 1000;
    private C3637tk anQ;
    private QuickInstallerInfo anR;
    private Handler mHandler = new Handler() { // from class: com.kingroot.kinguser.advance.install.ui.QuickPackageInstallerActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            ahd ahdVar = (ahd) QuickPackageInstallerActivity.this.m13159oB();
            switch (message.what) {
                case 1:
                    QuickPackageInstallerActivity.this.anR.state = 1;
                    ahdVar.m11816wB();
                    return;
                case 2:
                    QuickPackageInstallerActivity.this.anR.state = 2;
                    ahdVar.m11816wB();
                    return;
                case 3:
                    QuickPackageInstallerActivity.this.anR.state = 3;
                    QuickPackageInstallerActivity.this.anR.apF = message.arg1;
                    QuickPackageInstallerActivity.this.anR.apI = message.obj == null ? "" : (String) message.obj;
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("quick_installer_info", QuickPackageInstallerActivity.this.anR);
                    C3636tj.m2172a(C0745a.class, bundle);
                    ahdVar.m11816wB();
                    return;
                case 4:
                    QuickPackageInstallerActivity.this.mHandler.removeCallbacks(QuickPackageInstallerActivity.this.anT);
                    QuickPackageInstallerActivity.this.anR.state = 4;
                    QuickPackageInstallerActivity.this.anR.apG = ((Integer) message.obj).intValue();
                    ahdVar.m11816wB();
                    return;
                default:
                    return;
            }
        }
    };
    private Runnable anT = new Runnable() { // from class: com.kingroot.kinguser.advance.install.ui.QuickPackageInstallerActivity.2
        @Override // java.lang.Runnable
        public void run() {
            ady.m12308tK().mo1746bi(100735);
            QuickPackageInstallerActivity.this.m12425ww();
        }
    };
    private IAppInstallListener.Stub akB = new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.advance.install.ui.QuickPackageInstallerActivity.3
        @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
        public void onState(String str, int i, String str2) {
            if (i == 10) {
                QuickPackageInstallerActivity.this.mHandler.obtainMessage(3, 1, 0, "").sendToTarget();
            } else if (i >= 12 && i <= 16) {
                if (i == 15 && str2 != null && !str2.contains("Failure")) {
                    aks.m11143BP().m10919Gf();
                }
                QuickPackageInstallerActivity.this.mHandler.obtainMessage(3, 2, 0, str2).sendToTarget();
            }
        }
    };
    private View.OnClickListener mOnClickListener = new View.OnClickListener() { // from class: com.kingroot.kinguser.advance.install.ui.QuickPackageInstallerActivity.4
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.app_task_recommend_more /* 2131689665 */:
                    AppDownloadActivity.m12644c(view.getContext(), C3953zi.m1311pr().getString(R.string.app_download_task_recommend_title), 5012412);
                    return;
                case R.id.btn_left /* 2131689962 */:
                case R.id.btn_right /* 2131689963 */:
                    Button button = (Button) view;
                    if (C3953zi.m1311pr().getString(R.string.app_open_state_btn).equals(button.getText())) {
                        anf.m10277t(KApplication.m13453ge(), QuickPackageInstallerActivity.this.anR.pkgName);
                        QuickPackageInstallerActivity.this.finish();
                        return;
                    } else if (C3953zi.m1311pr().getString(R.string.anti_open_fail_dialog_confirm).equals(button.getText())) {
                        QuickPackageInstallerActivity.this.m12424wx();
                        return;
                    } else if (C3953zi.m1311pr().getString(R.string.unroot_dialog_fail_report_commit_success_btn_finish).equals(button.getText())) {
                        QuickPackageInstallerActivity.this.finish();
                        return;
                    } else if (C3953zi.m1311pr().getString(R.string.quick_install_use_system_interface).equals(button.getText())) {
                        QuickPackageInstallerActivity.this.m12433b(QuickPackageInstallerActivity.this.getIntent().getData());
                        QuickPackageInstallerActivity.this.finish();
                        return;
                    } else {
                        return;
                    }
                case R.id.app_task_suggestion_more /* 2131690215 */:
                    AppDownloadActivity.m12644c(view.getContext(), C3953zi.m1311pr().getString(R.string.apps_market_main_topic_title_most_download_app), 5012410);
                    return;
                case R.id.btn_goto_safe_download /* 2131690227 */:
                    AppDownLoadModel appDownLoadModel = new AppDownLoadModel();
                    appDownLoadModel.pkgName = QuickPackageInstallerActivity.this.anR.pkgName;
                    AppDetailActivity.m12646a(view.getContext(), appDownLoadModel, true);
                    QuickPackageInstallerActivity.this.anR.apH = 1;
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("quick_installer_info", QuickPackageInstallerActivity.this.anR);
                    C3636tj.m2172a(C0745a.class, bundle);
                    QuickPackageInstallerActivity.this.finish();
                    return;
                case R.id.btn_continue_install /* 2131690228 */:
                    QuickPackageInstallerActivity.this.anR.apH = 2;
                    QuickPackageInstallerActivity.this.m12424wx();
                    return;
                case R.id.btn_cancel /* 2131690230 */:
                    QuickPackageInstallerActivity.this.anR.apH = 1;
                    Bundle bundle2 = new Bundle();
                    bundle2.putParcelable("quick_installer_info", QuickPackageInstallerActivity.this.anR);
                    C3636tj.m2172a(C0745a.class, bundle2);
                    QuickPackageInstallerActivity.this.finish();
                    return;
                case R.id.btn_install /* 2131690231 */:
                    if (!C3953zi.m1311pr().getString(R.string.quick_install_btn_skip_scan).equals(((Button) view).getText())) {
                        QuickPackageInstallerActivity.this.anR.apH = 2;
                        QuickPackageInstallerActivity.this.m12424wx();
                        return;
                    }
                    ady.m12308tK().mo1746bi(100734);
                    QuickPackageInstallerActivity.this.m12425ww();
                    return;
                case R.id.btn_enter_app_market /* 2131690234 */:
                    AppsMarketMainActivity.m12637aL(view.getContext());
                    return;
                default:
                    return;
            }
        }
    };
    private bed anU = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.advance.install.ui.QuickPackageInstallerActivity.5
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            if (interfaceC2117a != null && !C3942yy.m1351d(interfaceC2117a.mo7445nF())) {
                try {
                    String str = (String) interfaceC2117a.mo7445nF().get(0);
                    if (ajh.m11471D(new File(str)) == 1) {
                        QuickPackageInstallerActivity.this.mHandler.sendMessageDelayed(Message.obtain(QuickPackageInstallerActivity.this.mHandler, 4, Integer.MIN_VALUE), QuickPackageInstallerActivity.anS);
                    } else {
                        arv.m9499Nz().cloudCheckApks(str, QuickPackageInstallerActivity.this.anV);
                    }
                } catch (Exception e) {
                    QuickPackageInstallerActivity.this.mHandler.sendMessageDelayed(Message.obtain(QuickPackageInstallerActivity.this.mHandler, 4, 0), QuickPackageInstallerActivity.anS);
                }
            }
        }
    });
    private ICloudCheckCallback anV = new ICloudCheckCallback.Stub() { // from class: com.kingroot.kinguser.advance.install.ui.QuickPackageInstallerActivity.6
        /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
        /* JADX WARN: Removed duplicated region for block: B:6:0x0014  */
        @Override // com.kingroot.kinguser.examination.service.ICloudCheckCallback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onRiskFound(Bundle bundle) {
            AppInfo appInfo;
            AppInfo appInfo2;
            try {
                appInfo = (AppInfo) bundle.getSerializable(CloudCheckCallback.RISK_APP_INFO_KEY);
            } catch (Exception e) {
                appInfo = null;
            }
            try {
                appInfo2 = (AppInfo) bundle.getSerializable("unknown");
            } catch (Exception e2) {
                appInfo2 = null;
                if (appInfo == null) {
                }
            }
            if (appInfo == null) {
                QuickPackageInstallerActivity.this.mHandler.sendMessage(Message.obtain(QuickPackageInstallerActivity.this.mHandler, 4, Integer.valueOf(appInfo.aiE())));
            } else if (appInfo2 != null) {
                QuickPackageInstallerActivity.this.mHandler.sendMessage(Message.obtain(QuickPackageInstallerActivity.this.mHandler, 4, Integer.valueOf(appInfo2.aiE())));
            } else {
                QuickPackageInstallerActivity.this.mHandler.sendMessage(Message.obtain(QuickPackageInstallerActivity.this.mHandler, 4, 1));
            }
        }

        @Override // com.kingroot.kinguser.examination.service.ICloudCheckCallback
        public void onFinish(int i) {
            QuickPackageInstallerActivity.this.mHandler.sendMessage(Message.obtain(QuickPackageInstallerActivity.this.mHandler, 4, 1));
        }
    };

    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        if (aks.m11143BP().m10920Ge() >= 3) {
            m12433b(getIntent().getData());
            finish();
            ags.m11911aF(false);
        }
        this.anR = QuickInstallerInfo.m12405b(getIntent(), m12423wy());
        super.onCreate(bundle);
        if (this.anR == null || !this.anR.valid() || this.anR.m12403xa()) {
            m12433b(getIntent().getData());
            finish();
            return;
        }
        this.anQ = C3637tk.m2167cS("safe install");
        if (this.anQ != null) {
            this.anQ.m2161s(BuglyBroadcastRecevier.UPLOADLIMITED);
        }
        if (awe.m8677SI().m8667jw(this.anR.apD) == 5) {
            this.anR.apH = 3;
            m12424wx();
            return;
        }
        m12426wv();
    }

    /* renamed from: wv */
    private void m12426wv() {
        beg.m7461Zj().m7454a(this.anU, this.anR.apkPath);
        ady.m12308tK().mo1746bi(100733);
        this.mHandler.sendEmptyMessage(1);
        this.mHandler.postDelayed(this.anT, 10000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ww */
    public void m12425ww() {
        arv.m9499Nz().unregisterCallback(this.anR.apkPath);
        this.mHandler.removeMessages(4);
        this.mHandler.sendMessage(Message.obtain(this.mHandler, 4, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wx */
    public void m12424wx() {
        ApkInstallRequest m3786a = ApkInstallRequest.m3786a(this.anR);
        m3786a.aNe = 1;
        m3786a.isUpdate = true;
        m3786a.aNf = false;
        if (TextUtils.isEmpty(m3786a.apkPath)) {
            this.mHandler.obtainMessage(3, 2, 0, "apk path invalid").sendToTarget();
            return;
        }
        this.mHandler.sendEmptyMessage(2);
        aso.m9417Ol().mo9331a(m3786a, this.akB);
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return new ahd(this, this.anR, this.mOnClickListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.activitys.KUBaseActivity, com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        arv.m9499Nz().unregisterCallback(this.anR.apkPath);
        aso.m9417Ol().mo9330a(this.akB);
        if (this.anQ != null) {
            this.anQ.release();
        }
    }

    /* renamed from: wy */
    private int m12423wy() {
        try {
            return ((Integer) aam.m12967a("android.app.IActivityManager", "getLaunchedFromUid", new Class[]{IBinder.class}, aam.m12968a("android.app.ActivityManagerNative", "getDefault", (Object) null), new Object[]{aam.m12965b(Activity.class, "getActivityToken", this)})).intValue();
        } catch (Exception e) {
            Log.w("common_quickinstaller", "Could not determine the launching uid.");
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m12433b(Uri uri) {
        ComponentName m12422wz = m12422wz();
        if (m12422wz != null) {
            Intent intent = new Intent();
            intent.setComponent(m12422wz);
            intent.setDataAndType(uri, "application/vnd.android.package-archive");
            startActivity(intent);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* renamed from: wz */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private ComponentName m12422wz() {
        int i;
        Boolean bool;
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(getIntent().getData(), "application/vnd.android.package-archive");
        if (Build.VERSION.SDK_INT >= 23) {
            Object m12972a = aam.m12972a(PackageManager.class, "MATCH_ALL", (Object) null);
            if (m12972a instanceof Integer) {
                i = ((Integer) m12972a).intValue() | 0;
                ComponentName componentName = null;
                for (ResolveInfo resolveInfo : getPackageManager().queryIntentActivities(intent, i)) {
                    if (resolveInfo.activityInfo != null) {
                        if (!TextUtils.equals((resolveInfo.activityInfo.enabled && resolveInfo.activityInfo.exported) ? resolveInfo.activityInfo.packageName : null, getPackageName()) && (bool = (Boolean) aam.m12972a(ResolveInfo.class, "system", resolveInfo)) != null && bool.booleanValue()) {
                            componentName = new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
                        }
                    }
                }
                return componentName;
            }
        }
        i = 0;
        ComponentName componentName2 = null;
        while (r4.hasNext()) {
        }
        return componentName2;
    }

    /* renamed from: com.kingroot.kinguser.advance.install.ui.QuickPackageInstallerActivity$a */
    /* loaded from: classes.dex */
    public static class C0745a extends AbstractC3682tz {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.AbstractC3682tz, com.kingroot.kinguser.AbstractC3681ty
        /* renamed from: kr */
        public String mo2067kr() {
            return "QuickInstallReportTask";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.AbstractC3682tz, com.kingroot.kinguser.AbstractC3675tx
        /* renamed from: b */
        public Bundle mo2068e(Bundle bundle) {
            try {
                return m12421d(bundle);
            } catch (Throwable th) {
                return null;
            }
        }

        /* renamed from: d */
        private Bundle m12421d(Bundle bundle) {
            int i = 1;
            C3956zk.m1300y(1, "MyWakelockTag");
            try {
                QuickInstallerInfo quickInstallerInfo = (QuickInstallerInfo) bundle.getParcelable("quick_installer_info");
                if (quickInstallerInfo != null) {
                    if (quickInstallerInfo.apG != 1 && quickInstallerInfo.apG != 0) {
                        if (quickInstallerInfo.apG == Integer.MIN_VALUE) {
                            i = 3;
                        } else {
                            i = 2;
                        }
                    }
                    ady.m12308tK().m12329a(quickInstallerInfo.apD, aaz.m12872dZ(quickInstallerInfo.apD), quickInstallerInfo.pkgName, aaz.m12871ea(quickInstallerInfo.apkPath), quickInstallerInfo.apH, i, quickInstallerInfo.apF, quickInstallerInfo.apI);
                    C3956zk.m1301dw("MyWakelockTag");
                } else {
                    C3956zk.m1301dw("MyWakelockTag");
                }
            } catch (Throwable th) {
                C3956zk.m1301dw("MyWakelockTag");
            }
            return null;
        }
    }
}
