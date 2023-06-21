package com.applisto.appcloner.classes.test;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.os.Bundle;
import android.view.View;
import com.kingroot.kinguses.R;
/* loaded from: classes2.dex */
public class DummyActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.abc_action_bar_decor_overlay);
    }

    public void showNotification(View view) {
        ((NotificationManager) getSystemService("notification")).notify(1, new Notification.Builder(this).setDefaults(-1).setSmallIcon(17301543).setContentTitle("Content title").setContentText("Content text").getNotification());
    }

    public void hideNotifications(View view) {
        ((NotificationManager) getSystemService("notification")).cancelAll();
    }
}
