package com.kingroot.loader.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p004v4.app.Fragment;
import android.support.p004v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import com.kingroot.kinguser.bke;
import com.kingroot.kinguser.bkq;
import com.kingroot.loader.common.KlConst;
import com.kingroot.loader.common.KlServiceManager;
import com.kingroot.loader.host.stub.KlActivity;
import com.kingroot.loader.sdk.service.IKlApplicationManager;
/* loaded from: classes.dex */
public class KlFragment extends Fragment {
    private static final String TAG = KlFragment.class.getName();
    private KlContext mKlContext;

    public KlContext getKlContext() {
        if (this.mKlContext == null) {
            bkq.m6548e(TAG, "getKlContext == null!");
        }
        return this.mKlContext;
    }

    @Override // android.support.p004v4.app.Fragment
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        return super.getLayoutInflater(bundle).cloneInContext(getKlContext());
    }

    @Override // android.support.p004v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof KlActivity) {
            this.mKlContext = ((KlActivity) context).aeI();
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof KlActivity) {
            this.mKlContext = ((KlActivity) activity).aeI();
        }
        bkq.m6548e(TAG, "onAttach but can't get KlContext!");
    }

    private AbsKlApplication getKlApplication() {
        if (this.mKlContext == null) {
            return null;
        }
        return ((IKlApplicationManager) KlServiceManager.getKService(IKlApplicationManager.class)).getRunningPluginApplication(this.mKlContext.getPluginId());
    }

    private Intent obtainActivityIntentFromKlFragmentIntent(@NonNull Activity activity, @NonNull Intent intent, @NonNull AbsKlApplication absKlApplication) {
        String className;
        ComponentName component = intent.getComponent();
        if ("android.intent.action.MAIN".equals(intent.getAction())) {
            Class<? extends KlFragment> mainKlFragmentClass = absKlApplication.getMainKlFragmentClass();
            if (mainKlFragmentClass == null) {
                bkq.m6544w(TAG, "No main fragment!");
                return null;
            }
            className = mainKlFragmentClass.getName();
        } else if (component != null && !TextUtils.isEmpty(component.getClassName())) {
            className = component.getClassName();
        } else {
            bkq.m6544w(TAG, "Must specify fragment entry!");
            return null;
        }
        intent.putExtra(KlConst.KlBundleKey.FRAGMENT_NAME, className);
        bkq.m6545i(TAG, "Fragment class = " + className);
        int pluginId = absKlApplication.getKlContext().getPluginId();
        intent.putExtra(KlConst.KlBundleKey.PLUGIN_ID, pluginId);
        intent.setClass(activity, bke.m6570f(pluginId, className, absKlApplication.getLaunchMode(className)));
        return intent;
    }

    @Override // android.support.p004v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        bkq.m6545i(TAG, toString() + " onActivityResult, requestCode : " + i + ", resultCode : " + i2 + ", data : " + intent);
    }

    public final void startKlFragment(Intent intent) {
        Intent obtainActivityIntentFromKlFragmentIntent;
        if (intent != null) {
            AbsKlApplication klApplication = getKlApplication();
            FragmentActivity activity = getActivity();
            if (klApplication != null && activity != null && (obtainActivityIntentFromKlFragmentIntent = obtainActivityIntentFromKlFragmentIntent(activity, intent, klApplication)) != null) {
                startActivity(obtainActivityIntentFromKlFragmentIntent);
            }
        }
    }

    @TargetApi(16)
    public final void startKlFragment(Intent intent, @Nullable Bundle bundle) {
        Intent obtainActivityIntentFromKlFragmentIntent;
        if (intent != null) {
            AbsKlApplication klApplication = getKlApplication();
            FragmentActivity activity = getActivity();
            if (klApplication != null && activity != null && (obtainActivityIntentFromKlFragmentIntent = obtainActivityIntentFromKlFragmentIntent(activity, intent, klApplication)) != null) {
                startActivity(obtainActivityIntentFromKlFragmentIntent, bundle);
            }
        }
    }

    public final void startKlFragmentForResult(Intent intent, int i) {
        Intent obtainActivityIntentFromKlFragmentIntent;
        if (intent != null) {
            AbsKlApplication klApplication = getKlApplication();
            FragmentActivity activity = getActivity();
            if (klApplication != null && activity != null && (obtainActivityIntentFromKlFragmentIntent = obtainActivityIntentFromKlFragmentIntent(activity, intent, klApplication)) != null) {
                startActivityForResult(obtainActivityIntentFromKlFragmentIntent, i);
            }
        }
    }

    @TargetApi(16)
    public final void startKlFragmentForResult(Intent intent, int i, @Nullable Bundle bundle) {
        Intent obtainActivityIntentFromKlFragmentIntent;
        if (intent != null) {
            AbsKlApplication klApplication = getKlApplication();
            FragmentActivity activity = getActivity();
            if (klApplication != null && activity != null && (obtainActivityIntentFromKlFragmentIntent = obtainActivityIntentFromKlFragmentIntent(activity, intent, klApplication)) != null) {
                startActivityForResult(obtainActivityIntentFromKlFragmentIntent, i, bundle);
            }
        }
    }
}
