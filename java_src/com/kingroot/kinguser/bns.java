package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.support.p004v4.app.Fragment;
import com.kingroot.loader.common.KlConst;
import com.tencent.connect.common.AssistActivity;
/* loaded from: classes.dex */
public abstract class bns {
    public static String bEU = null;
    public static String bEV = null;
    public static String bEW = null;
    public static boolean bEX = false;
    protected bno bEQ;
    protected bnr bET;

    public bns(bnr bnrVar, bno bnoVar) {
        this.bET = bnrVar;
        this.bEQ = bnoVar;
    }

    public bns(bno bnoVar) {
        this(null, bnoVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Bundle agr() {
        Bundle bundle = new Bundle();
        bundle.putString("format", "json");
        bundle.putString("status_os", Build.VERSION.RELEASE);
        bundle.putString("status_machine", Build.MODEL);
        bundle.putString("status_version", Build.VERSION.SDK);
        bundle.putString("sdkv", "3.2.1.lite");
        bundle.putString("sdkp", "a");
        if (this.bEQ != null && this.bEQ.agl()) {
            bundle.putString("access_token", this.bEQ.agn());
            bundle.putString("oauth_consumer_key", this.bEQ.agm());
            bundle.putString("openid", this.bEQ.ago());
            bundle.putString("appid_for_getting_config", this.bEQ.agm());
        }
        SharedPreferences sharedPreferences = bqo.agA().getSharedPreferences("pfStore", 0);
        if (bEX) {
            bundle.putString("pf", "desktop_m_qq-" + bEV + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + "android" + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + bEU + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + bEW);
        } else {
            bundle.putString("pf", sharedPreferences.getString("pf", "openmobile_android"));
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Bundle ags() {
        Bundle bundle = new Bundle();
        bundle.putString("appid", this.bEQ.agm());
        if (this.bEQ.agl()) {
            bundle.putString("keystr", this.bEQ.agn());
            bundle.putString("keytype", "0x80");
        }
        String ago = this.bEQ.ago();
        if (ago != null) {
            bundle.putString("hopenid", ago);
        }
        bundle.putString("platform", "androidqz");
        SharedPreferences sharedPreferences = bqo.agA().getSharedPreferences("pfStore", 0);
        if (bEX) {
            bundle.putString("pf", "desktop_m_qq-" + bEV + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + "android" + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + bEU + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + bEW);
        } else {
            bundle.putString("pf", sharedPreferences.getString("pf", "openmobile_android"));
            bundle.putString("pf", "openmobile_android");
        }
        bundle.putString("sdkv", "3.2.1.lite");
        bundle.putString("sdkp", "a");
        return bundle;
    }

    /* renamed from: a */
    private Intent m6158a(Activity activity, Intent intent) {
        Intent intent2 = new Intent(activity.getApplicationContext(), AssistActivity.class);
        intent2.putExtra("is_login", true);
        intent2.putExtra("openSDK_LOG.AssistActivity.ExtraIntent", intent);
        return intent2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m6157a(Activity activity, Intent intent, int i) {
        intent.putExtra("key_request_code", i);
        activity.startActivityForResult(m6158a(activity, intent), i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m6156a(Fragment fragment, Intent intent, int i) {
        intent.putExtra("key_request_code", i);
        fragment.startActivityForResult(m6158a(fragment.getActivity(), intent), i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: o */
    public boolean m6154o(Intent intent) {
        if (intent != null) {
            return bqr.m5758e(bqo.agA(), intent);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: mI */
    public Intent m6155mI(String str) {
        Intent intent = new Intent();
        if (bqt.m5739k(bqo.agA())) {
            intent.setClassName("com.tencent.minihd.qq", str);
            if (bqr.m5758e(bqo.agA(), intent)) {
                return intent;
            }
        }
        intent.setClassName("com.tencent.mobileqq", str);
        if (!bqr.m5758e(bqo.agA(), intent)) {
            intent.setClassName("com.tencent.tim", str);
            if (!bqr.m5758e(bqo.agA(), intent)) {
                return null;
            }
            return intent;
        }
        return intent;
    }

    public void agk() {
    }
}
