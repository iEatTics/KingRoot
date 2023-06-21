package com.kingroot.loader.host.stub;

import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.p004v4.app.Fragment;
import android.support.p004v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.kingroot.kinguser.bjz;
import com.kingroot.kinguser.bkq;
import com.kingroot.loader.common.KlConst;
import com.kingroot.loader.common.KlServiceManager;
import com.kingroot.loader.sdk.AbsKlApplication;
import com.kingroot.loader.sdk.KlContext;
import com.kingroot.loader.sdk.service.IKlApplicationManager;
/* loaded from: classes.dex */
public class KlActivity extends FragmentActivity {

    /* renamed from: a */
    private static final String f4119a = KlActivity.class.getName();
    private KlContext bze;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v4.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        bkq.m6545i(f4119a, toString() + " onNewIntent");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        bkq.m6545i(f4119a, toString() + " onActivityResult, requestCode : " + i + ", resultCode : " + i2 + ", data : " + intent);
    }

    @Override // android.support.p004v4.app.FragmentActivity, android.support.p004v4.app.BaseFragmentActivityDonut, android.app.Activity
    public void onCreate(Bundle bundle) {
        AbsKlApplication runningPluginApplication;
        bkq.m6545i(f4119a, toString() + " onCreate");
        if (bundle != null && bundle.containsKey(KlConst.KlBundleKey.PLUGIN_ID)) {
            int i = bundle.getInt(KlConst.KlBundleKey.PLUGIN_ID);
            bkq.m6545i(f4119a, "onCreate restore pluginId : " + i);
            IKlApplicationManager iKlApplicationManager = (IKlApplicationManager) KlServiceManager.getKService(IKlApplicationManager.class);
            AbsKlApplication runningPluginApplication2 = iKlApplicationManager.getRunningPluginApplication(i);
            if (runningPluginApplication2 != null) {
                this.bze = runningPluginApplication2.getKlContext();
            } else if (iKlApplicationManager.launchPlugin(i) && (runningPluginApplication = iKlApplicationManager.getRunningPluginApplication(i)) != null) {
                this.bze = runningPluginApplication.getKlContext();
            } else {
                bkq.m6545i(f4119a, "Try to restore fragment, but application is STOP!");
                setIntent(null);
                bundle = null;
            }
        }
        super.onCreate(bundle);
        if (bundle == null) {
            FrameLayout frameLayout = new FrameLayout(this);
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            frameLayout.setId(16908290);
            setContentView(frameLayout);
            Intent intent = getIntent();
            if (intent == null) {
                bkq.m6545i(f4119a, "Intent can't be null!");
                finish();
                return;
            }
            int intExtra = intent.getIntExtra(KlConst.KlBundleKey.PLUGIN_ID, -1);
            if (intExtra == -1) {
                bkq.m6545i(f4119a, "Must specify plugin id!");
                finish();
                return;
            }
            String stringExtra = intent.getStringExtra(KlConst.KlBundleKey.FRAGMENT_NAME);
            if (TextUtils.isEmpty(stringExtra)) {
                bkq.m6545i(f4119a, "Must specify fragment entry!");
                finish();
                return;
            }
            AbsKlApplication runningPluginApplication3 = ((IKlApplicationManager) KlServiceManager.getKService(IKlApplicationManager.class)).getRunningPluginApplication(intExtra);
            if (runningPluginApplication3 != null) {
                this.bze = runningPluginApplication3.getKlContext();
                Bundle bundleExtra = intent.getBundleExtra(KlConst.KlBundleKey.ARGV);
                if (bundleExtra != null) {
                    bundleExtra.setClassLoader(getClassLoader());
                }
                Fragment instantiate = Fragment.instantiate(this.bze, stringExtra, bundleExtra);
                if (instantiate == null) {
                    bkq.m6545i(f4119a, "Create fragment fail!");
                    finish();
                    return;
                }
                getSupportFragmentManager().beginTransaction().replace(16908290, instantiate).commit();
                return;
            }
            bkq.m6545i(f4119a, "Try to create fragment, but application is STOP!");
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v4.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        bkq.m6545i(f4119a, toString() + " onStart");
        bjz.m6593m(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v4.app.FragmentActivity, android.app.Activity
    public void onStop() {
        bkq.m6545i(f4119a, toString() + " onStop");
        bjz.m6592n(this);
        super.onStop();
    }

    public final KlContext aeI() {
        return this.bze;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v4.app.FragmentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        if (this.bze != null) {
            try {
                bundle.putInt(KlConst.KlBundleKey.PLUGIN_ID, this.bze.getPluginId());
            } catch (Exception e) {
                bkq.m6550d(e);
            }
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.bze != null ? this.bze.getResources() : super.getResources();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.bze != null ? this.bze.getAssets() : super.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ClassLoader getClassLoader() {
        return this.bze != null ? this.bze.getClassLoader() : super.getClassLoader();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Context getApplicationContext() {
        return this.bze != null ? this.bze.getApplicationContext() : super.getApplicationContext();
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Object getSystemService(@NonNull String str) {
        Object systemService = super.getSystemService(str);
        if (this.bze != null && "layout_inflater".equals(str)) {
            return ((LayoutInflater) systemService).cloneInContext(this.bze);
        }
        return systemService;
    }
}
