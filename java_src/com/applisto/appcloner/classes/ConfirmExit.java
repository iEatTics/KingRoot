package com.applisto.appcloner.classes;

import android.app.Activity;
import android.content.DialogInterface;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.activity.BackKeyHandler;
import java.util.Properties;
/* loaded from: classes2.dex */
public class ConfirmExit extends BackKeyHandler {
    private static final String TAG = ConfirmExit.class.getSimpleName();
    private boolean mConfirmExit;
    private Properties mStringsProperties;

    public ConfirmExit(CloneSettings cloneSettings) {
        this.mConfirmExit = cloneSettings.getBoolean("confirmExit", false).booleanValue();
        String str = TAG;
        Log.m13704i(str, "ConfirmExit; confirmExit: " + this.mConfirmExit);
    }

    public void install(Properties properties) {
        Log.m13704i(TAG, "install; ");
        this.mStringsProperties = properties;
        if (this.mConfirmExit) {
            onCreate();
        }
    }

    @Override // com.applisto.appcloner.classes.util.activity.BackKeyHandler
    protected boolean handleBackPressed(final Activity activity, Object obj) {
        if (activity != null) {
            Utils.getDialogBuilder(activity).setMessage(this.mStringsProperties.getProperty("confirm_exit_app_message").replace("%s", Utils.getAppName(activity))).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.applisto.appcloner.classes.-$$Lambda$ConfirmExit$_VlRN7CNq_MRopvpQpFzZtXWCcA
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    activity.finish();
                }
            }).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).show();
            return false;
        }
        return true;
    }
}
