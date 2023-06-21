package com.applisto.appcloner.classes;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.p004v4.app.NotificationCompat;
import android.support.p004v4.internal.view.SupportMenu;
import android.support.p004v4.view.InputDeviceCompat;
import android.support.p007v7.widget.helper.ItemTouchHelper;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import com.applisto.appcloner.classes.NotificationOptions;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.activity.OnAppExitListener;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class NotificationOptions extends OnAppExitListener {
    private static final String ACTION_SNOOZE_NOTIFICATION = "com.applisto.appcloner.action.SNOOZE_NOTIFICATION";
    private static final String EXTRA_SNOOZE_ACTION = "snooze_action";
    private static final String TAG = NotificationOptions.class.getSimpleName();
    private static boolean mAllowNotificationsWhenRunning;
    private static boolean mBlockAllNotifications;
    private static Integer mNotificationColor;
    private boolean mHeadsUpNotifications;
    private Icon mIcon;
    private boolean mLocalOnlyNotifications;
    private boolean mNoOngoingNotifications;
    private final Set<String> mNotificationFilterSet;
    private String mNotificationLightsColor;
    private String mNotificationLightsPattern;
    private String mNotificationPriority;
    private boolean mNotificationQuietTime;
    private int mNotificationQuietTimeEndHour;
    private int mNotificationQuietTimeEndMinute;
    private int mNotificationQuietTimeStartHour;
    private int mNotificationQuietTimeStartMinute;
    private int mNotificationSnoozeTimeout;
    private String mNotificationSound;
    private int mNotificationTimeout;
    private boolean mNotificationTintStatusBarIcon;
    private String mNotificationVibration;
    private String mNotificationVisibility;
    private boolean mRemoveNotificationActions;
    private boolean mRemoveNotificationIcon;
    private boolean mRemoveNotificationPeople;
    private boolean mReplaceNotificationIcon;
    private boolean mRunning;
    private boolean mShowNotificationTime;
    private boolean mSimpleNotifications;
    private String mSingleNotificationCategory;
    private List<Map<String, Object>> mNotificationCategories = new ArrayList();
    private List<Map<String, Object>> mNotificationTextReplacements = new ArrayList();
    private Handler mTimeoutHandler = new Handler();
    private Map<Integer, Runnable> mTimeoutRunnables = new HashMap();
    private Map<Integer, Notification> mSnoozeNotifications = new HashMap();

    public NotificationOptions(CloneSettings cloneSettings) {
        this.mNotificationLightsPattern = "NO_CHANGE";
        this.mNotificationLightsColor = "NO_CHANGE";
        mBlockAllNotifications = cloneSettings.getBoolean("blockAllNotifications", false).booleanValue();
        mAllowNotificationsWhenRunning = cloneSettings.getBoolean("allowNotificationsWhenRunning", false).booleanValue();
        String string = cloneSettings.getString("notificationFilter", null);
        this.mNotificationFilterSet = new HashSet();
        if (!TextUtils.isEmpty(string)) {
            for (String str : string.trim().split(",")) {
                String trim = str.trim();
                if (!TextUtils.isEmpty(trim)) {
                    this.mNotificationFilterSet.add(trim.toLowerCase(Locale.ENGLISH));
                }
            }
        }
        this.mNotificationQuietTime = cloneSettings.getBoolean("notificationQuietTime", false).booleanValue();
        try {
            String[] split = cloneSettings.getString("notificationQuietTimeStart", "21:00").split(":");
            this.mNotificationQuietTimeStartHour = Integer.parseInt(split[0]);
            this.mNotificationQuietTimeStartMinute = Integer.parseInt(split[1]);
            String[] split2 = cloneSettings.getString("notificationQuietTimeEnd", "07:00").split(":");
            this.mNotificationQuietTimeEndHour = Integer.parseInt(split2[0]);
            this.mNotificationQuietTimeEndMinute = Integer.parseInt(split2[1]);
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
        if (cloneSettings.getBoolean("notificationColorUseStatusBarColor", false).booleanValue()) {
            mNotificationColor = cloneSettings.getInteger("statusBarColor", null);
        } else {
            mNotificationColor = cloneSettings.getInteger("notificationColor", null);
        }
        this.mNotificationTintStatusBarIcon = cloneSettings.getBoolean("notificationTintStatusBarIcon", false).booleanValue();
        this.mNotificationSound = cloneSettings.getString("notificationSound", "NO_CHANGE");
        this.mNotificationVibration = cloneSettings.getString("notificationVibration", "NO_CHANGE");
        this.mNotificationTimeout = cloneSettings.getInteger("notificationTimeout", 0).intValue();
        this.mNotificationSnoozeTimeout = cloneSettings.getInteger("notificationSnoozeTimeout", 0).intValue();
        this.mHeadsUpNotifications = cloneSettings.getBoolean("headsUpNotifications", false).booleanValue();
        this.mLocalOnlyNotifications = cloneSettings.getBoolean("localOnlyNotifications", false).booleanValue();
        this.mNoOngoingNotifications = cloneSettings.getBoolean("noOngoingNotifications", false).booleanValue();
        this.mShowNotificationTime = cloneSettings.getBoolean("showNotificationTime", false).booleanValue();
        CloneSettings forObject = cloneSettings.forObject("defaultNotificationLights");
        if (forObject != null) {
            this.mNotificationLightsPattern = forObject.getString("notificationLightsPattern", "NO_CHANGE");
            this.mNotificationLightsColor = forObject.getString("notificationLightsColor", "NO_CHANGE");
        }
        this.mNotificationVisibility = cloneSettings.getString("notificationVisibility", "NO_CHANGE");
        this.mNotificationPriority = cloneSettings.getString("notificationPriority", "NO_CHANGE");
        this.mReplaceNotificationIcon = cloneSettings.getBoolean("replaceNotificationIcon", false).booleanValue();
        this.mRemoveNotificationIcon = cloneSettings.getBoolean("removeNotificationIcon", false).booleanValue();
        this.mRemoveNotificationActions = cloneSettings.getBoolean("removeNotificationActions", false).booleanValue();
        this.mRemoveNotificationPeople = cloneSettings.getBoolean("removeNotificationPeople", false).booleanValue();
        this.mSimpleNotifications = cloneSettings.getBoolean("simpleNotifications", false).booleanValue();
        List<CloneSettings> forObjectArray = cloneSettings.forObjectArray("notificationCategories");
        if (forObjectArray != null) {
            for (CloneSettings cloneSettings2 : forObjectArray) {
                HashMap hashMap = new HashMap();
                hashMap.put("name", cloneSettings2.getString("name", ""));
                hashMap.put("keywords", cloneSettings2.getString("keywords", ""));
                hashMap.put("ignoreCase", cloneSettings2.getBoolean("ignoreCase", true));
                this.mNotificationCategories.add(hashMap);
            }
        }
        this.mSingleNotificationCategory = cloneSettings.getString("singleNotificationCategory", null);
        List<CloneSettings> forObjectArray2 = cloneSettings.forObjectArray("notificationTextReplacements");
        if (forObjectArray2 != null) {
            for (CloneSettings cloneSettings3 : forObjectArray2) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put("replace", cloneSettings3.getString("replace", ""));
                hashMap2.put("with", cloneSettings3.getString("with", ""));
                hashMap2.put("ignoreCase", cloneSettings3.getBoolean("ignoreCase", true));
                hashMap2.put("replaceInTitle", cloneSettings3.getBoolean("replaceInTitle", true));
                hashMap2.put("replaceInContent", cloneSettings3.getBoolean("replaceInContent", true));
                hashMap2.put("replaceInMessages", cloneSettings3.getBoolean("replaceInMessages", true));
                hashMap2.put("replaceInActions", cloneSettings3.getBoolean("replaceInActions", true));
                this.mNotificationTextReplacements.add(hashMap2);
            }
        }
        Log.m13704i(TAG, "NotificationOptions; mBlockAllNotifications: " + mBlockAllNotifications);
        Log.m13704i(TAG, "NotificationOptions; mAllowNotificationsWhenRunning: " + mAllowNotificationsWhenRunning);
        Log.m13704i(TAG, "NotificationOptions; mNotificationFilterSet: " + this.mNotificationFilterSet);
        Log.m13704i(TAG, "NotificationOptions; mNotificationQuietTime: " + this.mNotificationQuietTime);
        Log.m13704i(TAG, "NotificationOptions; mNotificationQuietTimeStartHour: " + this.mNotificationQuietTimeStartHour);
        Log.m13704i(TAG, "NotificationOptions; mNotificationQuietTimeStartMinute: " + this.mNotificationQuietTimeStartMinute);
        Log.m13704i(TAG, "NotificationOptions; mNotificationQuietTimeEndHour: " + this.mNotificationQuietTimeEndHour);
        Log.m13704i(TAG, "NotificationOptions; mNotificationQuietTimeEndMinute: " + this.mNotificationQuietTimeEndMinute);
        Log.m13704i(TAG, "NotificationOptions; mNotificationColor: " + mNotificationColor);
        Log.m13704i(TAG, "NotificationOptions; mNotificationTintStatusBarIcon: " + this.mNotificationTintStatusBarIcon);
        Log.m13704i(TAG, "NotificationOptions; mNotificationSound: " + this.mNotificationSound);
        Log.m13704i(TAG, "NotificationOptions; mNotificationVibration: " + this.mNotificationVibration);
        Log.m13704i(TAG, "NotificationOptions; mNotificationTimeout: " + this.mNotificationTimeout);
        Log.m13704i(TAG, "NotificationOptions; mNotificationSnoozeTimeout: " + this.mNotificationSnoozeTimeout);
        Log.m13704i(TAG, "NotificationOptions; mHeadsUpNotifications: " + this.mHeadsUpNotifications);
        Log.m13704i(TAG, "NotificationOptions; mLocalOnlyNotifications: " + this.mLocalOnlyNotifications);
        Log.m13704i(TAG, "NotificationOptions; mNoOngoingNotifications: " + this.mNoOngoingNotifications);
        Log.m13704i(TAG, "NotificationOptions; mShowNotificationTime: " + this.mShowNotificationTime);
        Log.m13704i(TAG, "NotificationOptions; mNotificationLightsPattern: " + this.mNotificationLightsPattern);
        Log.m13704i(TAG, "NotificationOptions; mNotificationLightsColor: " + this.mNotificationLightsColor);
        Log.m13704i(TAG, "NotificationOptions; mNotificationVisibility: " + this.mNotificationVisibility);
        Log.m13704i(TAG, "NotificationOptions; mNotificationPriority: " + this.mNotificationPriority);
        Log.m13704i(TAG, "NotificationOptions; mReplaceNotificationIcon: " + this.mReplaceNotificationIcon);
        Log.m13704i(TAG, "NotificationOptions; mRemoveNotificationIcon: " + this.mRemoveNotificationIcon);
        Log.m13704i(TAG, "NotificationOptions; mRemoveNotificationActions: " + this.mRemoveNotificationActions);
        Log.m13704i(TAG, "NotificationOptions; mRemoveNotificationPeople: " + this.mRemoveNotificationPeople);
        Log.m13704i(TAG, "NotificationOptions; mSimpleNotifications: " + this.mSimpleNotifications);
        Log.m13704i(TAG, "NotificationOptions; mNotificationCategories: " + this.mNotificationCategories);
        Log.m13704i(TAG, "NotificationOptions; mSingleNotificationCategory: " + this.mSingleNotificationCategory);
        Log.m13704i(TAG, "NotificationOptions; mNotificationTextReplacements: " + this.mNotificationTextReplacements);
    }

    public void install(final Context context) {
        Log.m13704i(TAG, "install; ");
        if (mNotificationColor == null && !mBlockAllNotifications && this.mNotificationFilterSet.isEmpty() && !this.mNotificationQuietTime && "NO_CHANGE".equals(this.mNotificationSound) && "NO_CHANGE".equals(this.mNotificationVibration) && this.mNotificationTimeout == 0 && this.mNotificationSnoozeTimeout == 0 && !this.mHeadsUpNotifications && !this.mLocalOnlyNotifications && !this.mNoOngoingNotifications && !this.mShowNotificationTime && "NO_CHANGE".equals(this.mNotificationLightsPattern) && "NO_CHANGE".equals(this.mNotificationLightsColor) && "NO_CHANGE".equals(this.mNotificationVisibility) && "NO_CHANGE".equals(this.mNotificationPriority) && !this.mReplaceNotificationIcon && !this.mRemoveNotificationIcon && !this.mRemoveNotificationActions && !this.mRemoveNotificationPeople && !this.mSimpleNotifications && this.mNotificationCategories.isEmpty() && TextUtils.isEmpty(this.mSingleNotificationCategory) && this.mNotificationTextReplacements.isEmpty()) {
            return;
        }
        onCreate();
        try {
            Field declaredField = NotificationManager.class.getDeclaredField("sService");
            declaredField.setAccessible(true);
            if (declaredField.get(null) != null) {
                Log.m13704i(TAG, "onCreate; sService already initialized!!!");
            } else {
                Log.m13704i(TAG, "onCreate; sService == null");
            }
            NotificationManager.class.getMethod("getService", new Class[0]).invoke(null, new Object[0]);
            final Object obj = declaredField.get(null);
            declaredField.set(null, Proxy.newProxyInstance(NotificationOptions.class.getClassLoader(), new Class[]{Class.forName("android.app.INotificationManager")}, new InvocationHandler() { // from class: com.applisto.appcloner.classes.-$$Lambda$NotificationOptions$PMv6Pe-FXiJ1ET7L7mZ6zyF_y2c
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj2, Method method, Object[] objArr) {
                    return NotificationOptions.this.lambda$install$1$NotificationOptions(context, obj, obj2, method, objArr);
                }
            }));
            if (this.mNotificationSnoozeTimeout > 0) {
                context.registerReceiver(new C03431(), new IntentFilter(ACTION_SNOOZE_NOTIFICATION));
            }
            if (!this.mReplaceNotificationIcon || Build.VERSION.SDK_INT < 23) {
                return;
            }
            try {
                byte[] readFully = Utils.readFully(context.getAssets().open(".notificationIconFile"), true);
                this.mIcon = Icon.createWithData(readFully, 0, readFully.length);
                String str = TAG;
                Log.m13704i(str, "install; mIcon: " + this.mIcon);
            } catch (Exception e) {
                Log.m13698w(TAG, e);
            }
        } catch (Exception e2) {
            Log.m13698w(TAG, e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:249:0x0807  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x084c  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x08e2 A[Catch: Exception -> 0x0976, TryCatch #9 {Exception -> 0x0976, blocks: (B:6:0x0021, B:8:0x0039, B:15:0x0054, B:17:0x005a, B:21:0x0061, B:24:0x006a, B:27:0x0075, B:29:0x0079, B:30:0x0099, B:32:0x00da, B:33:0x00e0, B:35:0x0105, B:37:0x0109, B:38:0x0115, B:40:0x0137, B:41:0x0143, B:43:0x0149, B:45:0x0155, B:47:0x016d, B:57:0x01af, B:59:0x01b3, B:61:0x01f3, B:63:0x01fa, B:65:0x020c, B:73:0x0221, B:77:0x0288, B:80:0x029c, B:82:0x02a4, B:89:0x0314, B:91:0x031c, B:92:0x032e, B:94:0x0338, B:95:0x034a, B:97:0x0356, B:98:0x0371, B:100:0x037b, B:101:0x0396, B:103:0x03a0, B:104:0x03bb, B:106:0x03c5, B:83:0x02b5, B:85:0x02bf, B:86:0x02cf, B:88:0x02d9, B:107:0x03df, B:109:0x03e5, B:111:0x03f3, B:112:0x03f8, B:113:0x0432, B:115:0x0436, B:117:0x043c, B:118:0x045b, B:120:0x045f, B:121:0x047b, B:123:0x047f, B:124:0x04a1, B:131:0x04cf, B:133:0x04d6, B:135:0x04e0, B:136:0x04fa, B:138:0x0504, B:139:0x051f, B:141:0x0529, B:154:0x05cf, B:156:0x05d9, B:158:0x05dd, B:159:0x05df, B:161:0x05f8, B:162:0x0601, B:164:0x060b, B:165:0x0612, B:167:0x061c, B:168:0x0623, B:170:0x062d, B:171:0x0632, B:173:0x063c, B:174:0x0641, B:176:0x0649, B:178:0x064f, B:180:0x0657, B:181:0x065b, B:183:0x0674, B:184:0x0677, B:186:0x0681, B:187:0x0686, B:189:0x0690, B:190:0x0695, B:192:0x069f, B:193:0x06a5, B:195:0x06af, B:196:0x06b5, B:198:0x06bf, B:199:0x06c5, B:201:0x06cf, B:202:0x06d4, B:204:0x06d8, B:206:0x06de, B:208:0x0709, B:209:0x0712, B:210:0x0716, B:212:0x071c, B:214:0x0728, B:216:0x0734, B:217:0x0738, B:218:0x074d, B:220:0x0754, B:221:0x0759, B:222:0x0764, B:224:0x0768, B:226:0x0790, B:227:0x079e, B:229:0x07a2, B:231:0x07a6, B:247:0x0803, B:260:0x0843, B:261:0x0848, B:271:0x086a, B:272:0x086f, B:299:0x08de, B:301:0x08e2, B:303:0x08e6, B:304:0x08fb, B:306:0x08ff, B:315:0x0970, B:298:0x08d9, B:245:0x07fc, B:142:0x0544, B:144:0x054e, B:145:0x0568, B:147:0x0570, B:148:0x058a, B:150:0x0594, B:151:0x05ad, B:153:0x05b7, B:130:0x04ca, B:67:0x0212, B:69:0x0218, B:26:0x0070, B:10:0x0042, B:308:0x0907, B:309:0x090d, B:311:0x0913, B:264:0x084d, B:266:0x085b, B:267:0x0860, B:126:0x04a5, B:50:0x0173, B:52:0x0193, B:274:0x0873, B:276:0x0888, B:278:0x0890, B:280:0x0894, B:282:0x089a, B:283:0x08a6, B:284:0x08a9, B:286:0x08af, B:288:0x08b7, B:290:0x08ba, B:292:0x08c0, B:293:0x08cc, B:294:0x08cf, B:250:0x0808, B:252:0x0817, B:253:0x081c, B:255:0x0824, B:256:0x0829), top: B:356:0x0021, inners: #0, #1, #4, #5, #7, #10, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:306:0x08ff A[Catch: Exception -> 0x0976, TRY_LEAVE, TryCatch #9 {Exception -> 0x0976, blocks: (B:6:0x0021, B:8:0x0039, B:15:0x0054, B:17:0x005a, B:21:0x0061, B:24:0x006a, B:27:0x0075, B:29:0x0079, B:30:0x0099, B:32:0x00da, B:33:0x00e0, B:35:0x0105, B:37:0x0109, B:38:0x0115, B:40:0x0137, B:41:0x0143, B:43:0x0149, B:45:0x0155, B:47:0x016d, B:57:0x01af, B:59:0x01b3, B:61:0x01f3, B:63:0x01fa, B:65:0x020c, B:73:0x0221, B:77:0x0288, B:80:0x029c, B:82:0x02a4, B:89:0x0314, B:91:0x031c, B:92:0x032e, B:94:0x0338, B:95:0x034a, B:97:0x0356, B:98:0x0371, B:100:0x037b, B:101:0x0396, B:103:0x03a0, B:104:0x03bb, B:106:0x03c5, B:83:0x02b5, B:85:0x02bf, B:86:0x02cf, B:88:0x02d9, B:107:0x03df, B:109:0x03e5, B:111:0x03f3, B:112:0x03f8, B:113:0x0432, B:115:0x0436, B:117:0x043c, B:118:0x045b, B:120:0x045f, B:121:0x047b, B:123:0x047f, B:124:0x04a1, B:131:0x04cf, B:133:0x04d6, B:135:0x04e0, B:136:0x04fa, B:138:0x0504, B:139:0x051f, B:141:0x0529, B:154:0x05cf, B:156:0x05d9, B:158:0x05dd, B:159:0x05df, B:161:0x05f8, B:162:0x0601, B:164:0x060b, B:165:0x0612, B:167:0x061c, B:168:0x0623, B:170:0x062d, B:171:0x0632, B:173:0x063c, B:174:0x0641, B:176:0x0649, B:178:0x064f, B:180:0x0657, B:181:0x065b, B:183:0x0674, B:184:0x0677, B:186:0x0681, B:187:0x0686, B:189:0x0690, B:190:0x0695, B:192:0x069f, B:193:0x06a5, B:195:0x06af, B:196:0x06b5, B:198:0x06bf, B:199:0x06c5, B:201:0x06cf, B:202:0x06d4, B:204:0x06d8, B:206:0x06de, B:208:0x0709, B:209:0x0712, B:210:0x0716, B:212:0x071c, B:214:0x0728, B:216:0x0734, B:217:0x0738, B:218:0x074d, B:220:0x0754, B:221:0x0759, B:222:0x0764, B:224:0x0768, B:226:0x0790, B:227:0x079e, B:229:0x07a2, B:231:0x07a6, B:247:0x0803, B:260:0x0843, B:261:0x0848, B:271:0x086a, B:272:0x086f, B:299:0x08de, B:301:0x08e2, B:303:0x08e6, B:304:0x08fb, B:306:0x08ff, B:315:0x0970, B:298:0x08d9, B:245:0x07fc, B:142:0x0544, B:144:0x054e, B:145:0x0568, B:147:0x0570, B:148:0x058a, B:150:0x0594, B:151:0x05ad, B:153:0x05b7, B:130:0x04ca, B:67:0x0212, B:69:0x0218, B:26:0x0070, B:10:0x0042, B:308:0x0907, B:309:0x090d, B:311:0x0913, B:264:0x084d, B:266:0x085b, B:267:0x0860, B:126:0x04a5, B:50:0x0173, B:52:0x0193, B:274:0x0873, B:276:0x0888, B:278:0x0890, B:280:0x0894, B:282:0x089a, B:283:0x08a6, B:284:0x08a9, B:286:0x08af, B:288:0x08b7, B:290:0x08ba, B:292:0x08c0, B:293:0x08cc, B:294:0x08cf, B:250:0x0808, B:252:0x0817, B:253:0x081c, B:255:0x0824, B:256:0x0829), top: B:356:0x0021, inners: #0, #1, #4, #5, #7, #10, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:311:0x0913 A[Catch: Exception -> 0x096e, LOOP:4: B:309:0x090d->B:311:0x0913, LOOP_END, TRY_LEAVE, TryCatch #1 {Exception -> 0x096e, blocks: (B:308:0x0907, B:309:0x090d, B:311:0x0913), top: B:342:0x0907, outer: #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:352:0x0873 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ Object lambda$install$1$NotificationOptions(final Context context, Object obj, Object obj2, Method method, Object[] objArr) throws Throwable {
        final int intValue;
        Notification notification;
        boolean z;
        int i;
        Parcelable[] parcelableArray;
        Parcelable[] parcelableArray2;
        Icon smallIcon;
        int i2;
        if ("enqueueNotificationWithTag".equals(method.getName()) && !isAppClonerClassesNotification()) {
            try {
                Log.m13704i(TAG, "invoke; method: " + method);
                try {
                    intValue = ((Integer) objArr[3]).intValue();
                } catch (ClassCastException unused) {
                    intValue = ((Integer) objArr[2]).intValue();
                }
                if (intValue != 1621363246 && intValue != 4534513) {
                    boolean z2 = mBlockAllNotifications;
                    if (mAllowNotificationsWhenRunning && this.mRunning) {
                        z2 = false;
                    }
                    if (z2) {
                        Log.m13704i(TAG, "invoke; blocked notification");
                        return null;
                    }
                    try {
                        notification = (Notification) objArr[4];
                    } catch (ClassCastException unused2) {
                        notification = (Notification) objArr[3];
                    }
                    Notification notification2 = notification;
                    if (mNotificationColor != null) {
                        try {
                            notification2.color = mNotificationColor.intValue();
                            Log.m13704i(TAG, "invoke; set notification color; notificationColor: " + mNotificationColor);
                        } catch (NoSuchFieldError unused3) {
                        }
                    }
                    Bundle extras = getExtras(notification2);
                    Log.m13704i(TAG, "invoke; extras: " + extras);
                    StringBuilder sb = new StringBuilder();
                    sb.append(extras.getString(NotificationCompat.EXTRA_TITLE, ""));
                    sb.append(' ');
                    sb.append(extras.getString(NotificationCompat.EXTRA_TITLE_BIG, ""));
                    sb.append(' ');
                    Object obj3 = extras.get(NotificationCompat.EXTRA_TEXT);
                    if (obj3 != null) {
                        sb.append(obj3);
                        sb.append(' ');
                    }
                    sb.append(extras.getString(NotificationCompat.EXTRA_BIG_TEXT, ""));
                    sb.append(' ');
                    sb.append(extras.getString(NotificationCompat.EXTRA_INFO_TEXT, ""));
                    sb.append(' ');
                    sb.append(notification2.tickerText);
                    CharSequence[] charSequenceArray = extras.getCharSequenceArray(NotificationCompat.EXTRA_TEXT_LINES);
                    if (charSequenceArray != null) {
                        for (CharSequence charSequence : charSequenceArray) {
                            sb.append(charSequence);
                            sb.append(' ');
                        }
                    }
                    String sb2 = sb.toString();
                    Log.m13704i(TAG, "invoke; concatenatedText: " + sb2);
                    if (!this.mNotificationFilterSet.isEmpty()) {
                        String lowerCase = sb2.toLowerCase(Locale.ENGLISH);
                        for (String str : this.mNotificationFilterSet) {
                            if (lowerCase.contains(str)) {
                                Log.m13704i(TAG, "invoke; blocked notification; notificationFilterString: " + str);
                                return null;
                            }
                        }
                    }
                    if (Build.VERSION.SDK_INT >= 26) {
                        String notificationChannelId = getNotificationChannelId(context, sb2);
                        Log.m13704i(TAG, "invoke; channelId: " + notificationChannelId);
                        if (!TextUtils.isEmpty(notificationChannelId)) {
                            Field declaredField = Notification.class.getDeclaredField("mChannelId");
                            declaredField.setAccessible(true);
                            declaredField.set(notification2, notificationChannelId);
                            extras.putString("channel_id", notificationChannelId);
                        }
                    }
                    if (this.mNotificationQuietTime) {
                        Calendar calendar = Calendar.getInstance();
                        calendar.set(11, this.mNotificationQuietTimeStartHour);
                        calendar.set(12, this.mNotificationQuietTimeStartMinute);
                        calendar.set(13, 0);
                        calendar.set(14, 0);
                        Calendar calendar2 = Calendar.getInstance();
                        calendar2.set(11, this.mNotificationQuietTimeEndHour);
                        calendar2.set(12, this.mNotificationQuietTimeEndMinute);
                        calendar2.set(13, 0);
                        calendar2.set(14, 0);
                        if (calendar2.before(calendar)) {
                            i2 = 1;
                            calendar2.add(5, 1);
                        } else {
                            i2 = 1;
                        }
                        Calendar calendar3 = Calendar.getInstance();
                        Calendar calendar4 = Calendar.getInstance();
                        calendar4.add(5, i2);
                        z = (calendar.before(calendar3) && calendar2.after(calendar3)) || (calendar.before(calendar4) && calendar2.after(calendar4));
                        Log.m13704i(TAG, "invoke; start: " + calendar.getTime() + ", end: " + calendar2.getTime());
                        Log.m13704i(TAG, "invoke; c1: " + calendar3.getTime() + ", c2: " + calendar4.getTime());
                        String str2 = TAG;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("invoke; quietTime: ");
                        sb3.append(z);
                        Log.m13704i(str2, sb3.toString());
                    } else {
                        z = false;
                    }
                    if (z) {
                        notification2.sound = null;
                        notification2.vibrate = null;
                        notification2.defaults &= -2;
                        notification2.defaults &= -3;
                    }
                    if (!z) {
                        if ("DEFAULT".equals(this.mNotificationSound)) {
                            notification2.sound = null;
                            notification2.defaults |= 1;
                            Log.m13704i(TAG, "invoke; sound: default");
                        } else if ("SILENCE".equals(this.mNotificationSound)) {
                            notification2.sound = null;
                            notification2.defaults &= -2;
                            Log.m13704i(TAG, "invoke; sound: silence");
                        } else if ("CUSTOM".equals(this.mNotificationSound)) {
                            Uri parse = Uri.parse("content://" + context.getPackageName() + ".com.applisto.appcloner.classes.DefaultProvider/assets/.notificationSoundFile");
                            notification2.sound = parse;
                            notification2.defaults = notification2.defaults & (-2);
                            Log.m13704i(TAG, "invoke; sound: custom; uri: " + parse);
                        }
                        if ("DEFAULT".equals(this.mNotificationVibration)) {
                            notification2.vibrate = null;
                            notification2.defaults |= 2;
                            Log.m13704i(TAG, "invoke; vibration: default");
                        } else if ("SILENCE".equals(this.mNotificationVibration)) {
                            notification2.vibrate = null;
                            notification2.defaults &= -3;
                            Log.m13704i(TAG, "invoke; vibration: silence");
                        } else if ("VERY_SHORT".equals(this.mNotificationVibration)) {
                            notification2.vibrate = new long[]{0, 50};
                            notification2.defaults &= -3;
                            Log.m13704i(TAG, "invoke; vibration: very short");
                        } else if ("SHORT".equals(this.mNotificationVibration)) {
                            notification2.vibrate = new long[]{0, 100};
                            notification2.defaults &= -3;
                            Log.m13704i(TAG, "invoke; vibration: short");
                        } else if ("LONG".equals(this.mNotificationVibration)) {
                            notification2.vibrate = new long[]{0, 500};
                            notification2.defaults &= -3;
                            Log.m13704i(TAG, "invoke; vibration: long");
                        } else if ("VERY_LONG".equals(this.mNotificationVibration)) {
                            notification2.vibrate = new long[]{0, 1000};
                            notification2.defaults &= -3;
                            Log.m13704i(TAG, "invoke; vibration: very long");
                        }
                    }
                    if (this.mNotificationTimeout != 0) {
                        Runnable runnable = this.mTimeoutRunnables.get(Integer.valueOf(intValue));
                        if (runnable != null) {
                            this.mTimeoutHandler.removeCallbacks(runnable);
                        }
                        Runnable runnable2 = new Runnable() { // from class: com.applisto.appcloner.classes.-$$Lambda$NotificationOptions$2O_jZ-y83Mf4biiOxFjwdLR4w3o
                            @Override // java.lang.Runnable
                            public final void run() {
                                NotificationOptions.lambda$null$0(intValue, context);
                            }
                        };
                        this.mTimeoutHandler.postDelayed(runnable2, this.mNotificationTimeout * 1000);
                        this.mTimeoutRunnables.put(Integer.valueOf(intValue), runnable2);
                        Log.m13704i(TAG, "invoke; scheduled timeout; id: " + intValue + ", millis: " + (this.mNotificationTimeout * 1000));
                    }
                    if (this.mHeadsUpNotifications && Build.VERSION.SDK_INT >= 21) {
                        extras.putInt("headsup", 2);
                        notification2.priority = 1;
                        Log.m13704i(TAG, "invoke; headsUpNotifications; notification: " + notification2);
                    }
                    if (this.mLocalOnlyNotifications) {
                        notification2.flags |= 256;
                        Log.m13704i(TAG, "invoke; localOnlyNotifications; notification: " + notification2);
                    }
                    if (this.mNoOngoingNotifications) {
                        notification2.flags &= -3;
                        notification2.flags &= -33;
                        Log.m13704i(TAG, "invoke; noOngoingNotifications; notification: " + notification2);
                    }
                    if (this.mShowNotificationTime) {
                        try {
                            notification2.when = System.currentTimeMillis();
                            extras.putBoolean(NotificationCompat.EXTRA_SHOW_WHEN, true);
                            Log.m13704i(TAG, "invoke; showNotificationTime; notification: " + notification2);
                        } catch (Exception e) {
                            Log.m13698w(TAG, e);
                        }
                    }
                    if (Build.VERSION.SDK_INT >= 21) {
                        if ("PUBLIC".equals(this.mNotificationVisibility)) {
                            notification2.visibility = 1;
                            Log.m13704i(TAG, "invoke; made notification public; notification: " + notification2);
                        } else if ("PRIVATE".equals(this.mNotificationVisibility)) {
                            notification2.visibility = -1;
                            notification2.publicVersion = null;
                            Log.m13704i(TAG, "invoke; made notification private; notification: " + notification2);
                        }
                    }
                    if ("MAX".equals(this.mNotificationPriority)) {
                        notification2.priority = 2;
                        Log.m13704i(TAG, "invoke; PRIORITY_MAX; notification: " + notification2);
                    } else if ("HIGH".equals(this.mNotificationPriority)) {
                        notification2.priority = 1;
                        Log.m13704i(TAG, "invoke; PRIORITY_HIGH; notification: " + notification2);
                    } else if ("DEFAULT".equals(this.mNotificationPriority)) {
                        notification2.priority = 0;
                        Log.m13704i(TAG, "invoke; PRIORITY_DEFAULT; notification: " + notification2);
                    } else if ("LOW".equals(this.mNotificationPriority)) {
                        notification2.priority = -1;
                        Log.m13704i(TAG, "invoke; PRIORITY_LOW; notification: " + notification2);
                    } else if ("MIN".equals(this.mNotificationPriority)) {
                        notification2.priority = -2;
                        Log.m13704i(TAG, "invoke; PRIORITY_MIN; notification: " + notification2);
                    }
                    if (!"NO_CHANGE".equals(this.mNotificationLightsPattern)) {
                        if (notification2.ledARGB == 0) {
                            notification2.ledARGB = -1;
                        }
                        notification2.defaults &= -5;
                        notification2.flags |= 1;
                        notification2.priority = 0;
                        if ("ON".equals(this.mNotificationLightsPattern)) {
                            notification2.ledOnMS = 100000000;
                            notification2.ledOffMS = 1;
                        } else if ("FLASH_SLOW".equals(this.mNotificationLightsPattern)) {
                            notification2.ledOnMS = 1000;
                            notification2.ledOffMS = 2000;
                        } else if ("FLASH_MEDIUM".equals(this.mNotificationLightsPattern)) {
                            notification2.ledOnMS = 500;
                            notification2.ledOffMS = 1000;
                        } else if ("FLASH_FAST".equals(this.mNotificationLightsPattern)) {
                            notification2.ledOnMS = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
                            notification2.ledOffMS = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
                        } else if ("OFF".equals(this.mNotificationLightsPattern)) {
                            notification2.ledOnMS = 0;
                            notification2.ledOffMS = 0;
                        }
                    }
                    if (!"NO_CHANGE".equals(this.mNotificationLightsColor)) {
                        if ((notification2.defaults & 4) != 0 && !"NO_CHANGE".equals(this.mNotificationLightsPattern)) {
                            notification2.ledOnMS = 1000;
                            notification2.ledOffMS = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
                        }
                        notification2.defaults &= -5;
                        notification2.flags |= 1;
                        notification2.priority = 0;
                        if ("WHITE".equals(this.mNotificationLightsColor)) {
                            notification2.ledARGB = -1;
                        } else if ("RED".equals(this.mNotificationLightsColor)) {
                            notification2.ledARGB = SupportMenu.CATEGORY_MASK;
                        } else if ("YELLOW".equals(this.mNotificationLightsColor)) {
                            notification2.ledARGB = InputDeviceCompat.SOURCE_ANY;
                        } else if ("GREEN".equals(this.mNotificationLightsColor)) {
                            notification2.ledARGB = -16711936;
                        } else if ("CYAN".equals(this.mNotificationLightsColor)) {
                            notification2.ledARGB = -16711681;
                        } else if ("BLUE".equals(this.mNotificationLightsColor)) {
                            notification2.ledARGB = -16776961;
                        } else if ("MAGENTA".equals(this.mNotificationLightsColor)) {
                            notification2.ledARGB = -65281;
                        }
                    }
                    if (this.mNotificationSnoozeTimeout > 0 && Build.VERSION.SDK_INT >= 16) {
                        Intent intent = new Intent(ACTION_SNOOZE_NOTIFICATION);
                        intent.setPackage(context.getPackageName());
                        intent.putExtra("id", intValue);
                        PendingIntent broadcast = PendingIntent.getBroadcast(context, intValue, intent, 1073741824);
                        this.mSnoozeNotifications.put(Integer.valueOf(intValue), notification2);
                        ArrayList arrayList = new ArrayList();
                        if (notification2.actions != null) {
                            arrayList.addAll(Arrays.asList(notification2.actions));
                        }
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            Notification.Action action = (Notification.Action) it.next();
                            if (action.getExtras() != null && action.getExtras().getBoolean(EXTRA_SNOOZE_ACTION)) {
                                it.remove();
                            }
                        }
                        Notification.Action action2 = new Notification.Action(0, "Snooze", broadcast);
                        action2.getExtras().putBoolean(EXTRA_SNOOZE_ACTION, true);
                        arrayList.add(action2);
                        while (arrayList.size() > 3) {
                            arrayList.remove(0);
                        }
                        notification2.actions = (Notification.Action[]) arrayList.toArray(new Notification.Action[0]);
                    }
                    if (this.mIcon != null) {
                        Notification.class.getMethod("setSmallIcon", Icon.class).invoke(notification2, this.mIcon);
                        Log.m13704i(TAG, "invoke; replaced small icon");
                        if (extras.containsKey(NotificationCompat.EXTRA_LARGE_ICON)) {
                            extras.putParcelable(NotificationCompat.EXTRA_LARGE_ICON, this.mIcon);
                            Log.m13704i(TAG, "invoke; replaced large icon");
                        }
                    }
                    if (mNotificationColor != null && this.mNotificationTintStatusBarIcon && Build.VERSION.SDK_INT >= 23) {
                        try {
                            smallIcon = notification2.getSmallIcon();
                        } catch (Throwable th) {
                            th = th;
                            i = 0;
                        }
                        if (smallIcon != null) {
                            Drawable loadDrawable = smallIcon.loadDrawable(context);
                            int intrinsicWidth = loadDrawable.getIntrinsicWidth();
                            int intrinsicHeight = loadDrawable.getIntrinsicHeight();
                            Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
                            Canvas canvas = new Canvas(createBitmap);
                            loadDrawable.setColorFilter(mNotificationColor.intValue(), PorterDuff.Mode.SRC_ATOP);
                            loadDrawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
                            loadDrawable.draw(canvas);
                            Icon createWithBitmap = Icon.createWithBitmap(createBitmap);
                            Class[] clsArr = new Class[1];
                            i = 0;
                            try {
                                clsArr[0] = Icon.class;
                                Notification.class.getMethod("setSmallIcon", clsArr).invoke(notification2, createWithBitmap);
                            } catch (Throwable th2) {
                                th = th2;
                                Log.m13698w(TAG, th);
                                if (this.mRemoveNotificationIcon) {
                                }
                                if (this.mRemoveNotificationActions) {
                                }
                                if (this.mRemoveNotificationPeople) {
                                }
                                if (this.mSimpleNotifications) {
                                }
                                if (this.mNotificationTextReplacements != null) {
                                }
                                return method.invoke(obj, objArr);
                            }
                            if (this.mRemoveNotificationIcon) {
                                try {
                                    notification2.largeIcon = null;
                                    extras.remove(NotificationCompat.EXTRA_LARGE_ICON);
                                    Bundle bundle = extras.getBundle("android.wearable.EXTENSIONS");
                                    if (bundle != null) {
                                        bundle.remove("background");
                                    }
                                    Bundle bundle2 = extras.getBundle("android.car.EXTENSIONS");
                                    if (bundle2 != null) {
                                        bundle2.remove("large_icon");
                                    }
                                    Field declaredField2 = Notification.class.getDeclaredField("mLargeIcon");
                                    declaredField2.setAccessible(true);
                                    declaredField2.set(notification2, null);
                                    Log.m13704i(TAG, "invoke; removed notification icon");
                                } catch (Exception e2) {
                                    Log.m13698w(TAG, e2);
                                }
                            }
                            if (this.mRemoveNotificationActions) {
                                try {
                                    notification2.contentIntent = null;
                                    notification2.deleteIntent = null;
                                    notification2.actions = null;
                                    Bundle bundle3 = extras.getBundle("android.wearable.EXTENSIONS");
                                    if (bundle3 != null) {
                                        bundle3.remove("actions");
                                    }
                                    Log.m13704i(TAG, "invoke; removed notification actions");
                                } catch (Exception e3) {
                                    Log.m13698w(TAG, e3);
                                }
                            }
                            if (this.mRemoveNotificationPeople) {
                                try {
                                    extras.remove("android.messagingUser");
                                    extras.remove("android.people.list");
                                    extras.remove(NotificationCompat.EXTRA_PEOPLE);
                                    if (Build.VERSION.SDK_INT >= 24 && (parcelableArray2 = extras.getParcelableArray(NotificationCompat.EXTRA_MESSAGES)) != null) {
                                        for (Parcelable parcelable : parcelableArray2) {
                                            if (parcelable instanceof Bundle) {
                                                Bundle bundle4 = (Bundle) parcelable;
                                                bundle4.remove("sender");
                                                bundle4.remove("sender_person");
                                            }
                                        }
                                    }
                                    if (Build.VERSION.SDK_INT >= 26 && (parcelableArray = extras.getParcelableArray("android.messages.historic")) != null) {
                                        int length = parcelableArray.length;
                                        while (i < length) {
                                            Parcelable parcelable2 = parcelableArray[i];
                                            if (parcelable2 instanceof Bundle) {
                                                Bundle bundle5 = (Bundle) parcelable2;
                                                bundle5.remove("sender");
                                                bundle5.remove("sender_person");
                                            }
                                            i++;
                                        }
                                    }
                                    Log.m13704i(TAG, "invoke; removed notification people");
                                } catch (Exception e4) {
                                    Log.m13698w(TAG, e4);
                                }
                            }
                            if (this.mSimpleNotifications && notification2.extras != null) {
                                notification2.extras.remove(NotificationCompat.EXTRA_PICTURE);
                                notification2.extras.remove(NotificationCompat.EXTRA_LARGE_ICON_BIG);
                                notification2.extras.remove(NotificationCompat.EXTRA_TEMPLATE);
                            }
                            if (this.mNotificationTextReplacements != null && !this.mNotificationTextReplacements.isEmpty()) {
                                try {
                                    for (Map<String, Object> map : this.mNotificationTextReplacements) {
                                        replaceNotificationText(notification2, (String) map.get("replace"), (String) map.get("with"), ((Boolean) map.get("ignoreCase")).booleanValue(), ((Boolean) map.get("replaceInTitle")).booleanValue(), ((Boolean) map.get("replaceInContent")).booleanValue(), ((Boolean) map.get("replaceInMessages")).booleanValue(), ((Boolean) map.get("replaceInActions")).booleanValue());
                                    }
                                } catch (Exception e5) {
                                    Log.m13698w(TAG, e5);
                                }
                            }
                        }
                    }
                    i = 0;
                    if (this.mRemoveNotificationIcon) {
                    }
                    if (this.mRemoveNotificationActions) {
                    }
                    if (this.mRemoveNotificationPeople) {
                    }
                    if (this.mSimpleNotifications) {
                        notification2.extras.remove(NotificationCompat.EXTRA_PICTURE);
                        notification2.extras.remove(NotificationCompat.EXTRA_LARGE_ICON_BIG);
                        notification2.extras.remove(NotificationCompat.EXTRA_TEMPLATE);
                    }
                    if (this.mNotificationTextReplacements != null) {
                        while (r11.hasNext()) {
                        }
                    }
                }
            } catch (Exception e6) {
                Log.m13698w(TAG, e6);
            }
        } else {
            if (("createNotificationChannelGroups".equals(method.getName()) || "createNotificationChannels".equals(method.getName()) || "createNotificationChannelsForPackage".equals(method.getName())) && !TextUtils.isEmpty(this.mSingleNotificationCategory)) {
                StackTraceElement[] stackTrace = new Exception().getStackTrace();
                for (int i3 = 1; i3 < stackTrace.length; i3++) {
                    if (stackTrace[i3].getClassName().contains(BuildConfig.APPLICATION_ID)) {
                        return method.invoke(obj, objArr);
                    }
                }
                return null;
            }
        }
        return method.invoke(obj, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$null$0(int i, Context context) {
        try {
            String str = TAG;
            Log.m13704i(str, "run; cancelling notification; id: " + i);
            ((NotificationManager) context.getSystemService("notification")).cancel(i);
        } catch (Throwable th) {
            Log.m13698w(TAG, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applisto.appcloner.classes.NotificationOptions$1 */
    /* loaded from: classes2.dex */
    public class C03431 extends BroadcastReceiver {
        C03431() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                final int intExtra = intent.getIntExtra("id", 0);
                final Notification notification = (Notification) NotificationOptions.this.mSnoozeNotifications.remove(Integer.valueOf(intExtra));
                if (notification != null) {
                    final NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
                    notificationManager.cancel(intExtra);
                    Runnable runnable = (Runnable) NotificationOptions.this.mTimeoutRunnables.get(Integer.valueOf(intExtra));
                    if (runnable != null) {
                        NotificationOptions.this.mTimeoutHandler.removeCallbacks(runnable);
                    }
                    Runnable runnable2 = new Runnable() { // from class: com.applisto.appcloner.classes.-$$Lambda$NotificationOptions$1$3W4-9Dj5LfZQOeUnizMcb6bp1D0
                        @Override // java.lang.Runnable
                        public final void run() {
                            NotificationOptions.C03431.lambda$onReceive$0(notificationManager, intExtra, notification);
                        }
                    };
                    NotificationOptions.this.mTimeoutHandler.postDelayed(runnable2, NotificationOptions.this.mNotificationSnoozeTimeout * 1000);
                    NotificationOptions.this.mTimeoutRunnables.put(Integer.valueOf(intExtra), runnable2);
                }
            } catch (Throwable th) {
                Log.m13698w(NotificationOptions.TAG, th);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void lambda$onReceive$0(NotificationManager notificationManager, int i, Notification notification) {
            try {
                notificationManager.notify(i, notification);
            } catch (Throwable th) {
                Log.m13698w(NotificationOptions.TAG, th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener, com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    public void onActivityCreated(Activity activity) {
        super.onActivityCreated(activity);
        this.mRunning = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener
    public void onAppExit(Context context) {
        Log.m13704i(TAG, "onAppExit; ");
        this.mRunning = false;
    }

    private boolean isAppClonerClassesNotification() {
        boolean z = false;
        for (StackTraceElement stackTraceElement : new Exception().getStackTrace()) {
            String className = stackTraceElement.getClassName();
            if ("android.app.NotificationManager".equals(className)) {
                z = true;
            } else if (z) {
                return className.startsWith(DefaultProvider.PREF_KEY_PREFIX);
            }
        }
        return false;
    }

    private static Bundle getExtras(Notification notification) {
        Bundle bundle;
        try {
            try {
                bundle = notification.extras;
            } catch (Throwable unused) {
                Field declaredField = Notification.class.getDeclaredField("extras");
                declaredField.setAccessible(true);
                bundle = (Bundle) declaredField.get(notification);
            }
        } catch (Exception e) {
            Log.m13698w(TAG, e);
            bundle = null;
        }
        return bundle == null ? new Bundle() : bundle;
    }

    private String getNotificationChannelId(Context context, String str) {
        String notificationChannelName = getNotificationChannelName(str);
        if (notificationChannelName == null) {
            return null;
        }
        String str2 = "app_cloner_" + Math.abs(notificationChannelName.hashCode());
        Log.m13704i(TAG, "getNotificationChannelId; channelId: " + str2 + ", channelName: " + notificationChannelName);
        ((NotificationManager) context.getSystemService("notification")).createNotificationChannel(new NotificationChannel(str2, notificationChannelName, 3));
        return str2;
    }

    private String getNotificationChannelName(String str) {
        if (!TextUtils.isEmpty(this.mSingleNotificationCategory)) {
            Log.m13704i(TAG, "getNotificationChannelName; returning mSingleNotificationCategory: " + this.mSingleNotificationCategory);
            return this.mSingleNotificationCategory;
        }
        for (Map<String, Object> map : this.mNotificationCategories) {
            String str2 = (String) map.get("name");
            if (!TextUtils.isEmpty(str2)) {
                String str3 = (String) map.get("keywords");
                if (TextUtils.isEmpty(str3)) {
                    continue;
                } else {
                    boolean booleanValue = ((Boolean) map.get("ignoreCase")).booleanValue();
                    String lowerCase = booleanValue ? str.toLowerCase(Locale.ENGLISH) : str;
                    Log.m13704i(TAG, "getNotificationChannelName; name: " + str2 + ", keywords: " + str3 + ", ignoreCase: " + booleanValue + ", matchText: " + lowerCase);
                    for (String str4 : str3.split(",")) {
                        String trim = str4.trim();
                        if (booleanValue) {
                            trim = trim.toLowerCase(Locale.ENGLISH);
                        }
                        if (lowerCase.contains(trim)) {
                            Log.m13704i(TAG, "getNotificationChannelName; found keyword; keyword: " + trim);
                            return str2;
                        }
                    }
                    continue;
                }
            }
        }
        return null;
    }

    private void replaceNotificationText(Notification notification, String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        String str3;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        Parcelable[] parcelableArray;
        int i;
        Parcelable[] parcelableArr;
        int i2;
        Notification notification2;
        ArrayList parcelableArrayList;
        Notification.Action[] actionArr;
        Parcelable[] parcelableArray2;
        Log.m13704i(TAG, "replaceNotificationText; replace: " + str + ", with: " + str2 + ", ignoreCase: " + z + ", replaceInTitle: " + z2 + ", replaceInContent: " + z3 + ", replaceInMessages: " + z4 + ", replaceInActions: " + z5);
        notification.tickerText = replaceText(notification.tickerText, str, str2, z);
        if (Build.VERSION.SDK_INT >= 19) {
            Bundle extras = getExtras(notification);
            if (z2) {
                CharSequence charSequence = extras.getCharSequence(NotificationCompat.EXTRA_TITLE);
                if (!TextUtils.isEmpty(charSequence)) {
                    CharSequence replaceText = replaceText(charSequence, str, str2, z);
                    if (!TextUtils.isEmpty(replaceText)) {
                        extras.putCharSequence(NotificationCompat.EXTRA_TITLE, replaceText);
                    } else {
                        extras.remove(NotificationCompat.EXTRA_TITLE_BIG);
                    }
                }
                CharSequence charSequence2 = extras.getCharSequence(NotificationCompat.EXTRA_TITLE_BIG);
                if (!TextUtils.isEmpty(charSequence2)) {
                    CharSequence replaceText2 = replaceText(charSequence2, str, str2, z);
                    if (!TextUtils.isEmpty(replaceText2)) {
                        extras.putCharSequence(NotificationCompat.EXTRA_TITLE_BIG, replaceText2);
                    } else {
                        extras.remove(NotificationCompat.EXTRA_TITLE_BIG);
                    }
                }
                if (Build.VERSION.SDK_INT >= 24) {
                    CharSequence charSequence3 = extras.getCharSequence(NotificationCompat.EXTRA_CONVERSATION_TITLE);
                    if (!TextUtils.isEmpty(charSequence3)) {
                        CharSequence replaceText3 = replaceText(charSequence3, str, str2, z);
                        if (!TextUtils.isEmpty(replaceText3)) {
                            extras.putCharSequence(NotificationCompat.EXTRA_CONVERSATION_TITLE, replaceText3);
                        } else {
                            extras.remove(NotificationCompat.EXTRA_CONVERSATION_TITLE);
                        }
                    }
                    CharSequence charSequence4 = extras.getCharSequence("android.hiddenConversationTitle");
                    if (!TextUtils.isEmpty(charSequence4)) {
                        CharSequence replaceText4 = replaceText(charSequence4, str, str2, z);
                        if (!TextUtils.isEmpty(replaceText4)) {
                            extras.putCharSequence("android.hiddenConversationTitle", replaceText4);
                        } else {
                            extras.remove("android.hiddenConversationTitle");
                        }
                    }
                }
            }
            if (z3) {
                CharSequence charSequence5 = extras.getCharSequence(NotificationCompat.EXTRA_TEXT);
                if (!TextUtils.isEmpty(charSequence5)) {
                    CharSequence replaceText5 = replaceText(charSequence5, str, str2, z);
                    if (!TextUtils.isEmpty(replaceText5)) {
                        extras.putCharSequence(NotificationCompat.EXTRA_TEXT, replaceText5);
                    } else {
                        extras.remove(NotificationCompat.EXTRA_TEXT);
                    }
                }
                CharSequence charSequence6 = extras.getCharSequence(NotificationCompat.EXTRA_SUB_TEXT);
                if (!TextUtils.isEmpty(charSequence6)) {
                    CharSequence replaceText6 = replaceText(charSequence6, str, str2, z);
                    if (!TextUtils.isEmpty(replaceText6)) {
                        extras.putCharSequence(NotificationCompat.EXTRA_SUB_TEXT, replaceText6);
                    } else {
                        extras.remove(NotificationCompat.EXTRA_SUB_TEXT);
                    }
                }
                CharSequence charSequence7 = extras.getCharSequence(NotificationCompat.EXTRA_INFO_TEXT);
                if (!TextUtils.isEmpty(charSequence7)) {
                    CharSequence replaceText7 = replaceText(charSequence7, str, str2, z);
                    if (!TextUtils.isEmpty(replaceText7)) {
                        extras.putCharSequence(NotificationCompat.EXTRA_INFO_TEXT, replaceText7);
                    } else {
                        extras.remove(NotificationCompat.EXTRA_INFO_TEXT);
                    }
                }
                CharSequence charSequence8 = extras.getCharSequence(NotificationCompat.EXTRA_SUMMARY_TEXT);
                if (!TextUtils.isEmpty(charSequence8)) {
                    CharSequence replaceText8 = replaceText(charSequence8, str, str2, z);
                    if (!TextUtils.isEmpty(replaceText8)) {
                        extras.putCharSequence(NotificationCompat.EXTRA_SUMMARY_TEXT, replaceText8);
                    } else {
                        extras.remove(NotificationCompat.EXTRA_SUMMARY_TEXT);
                    }
                }
                if (Build.VERSION.SDK_INT >= 21) {
                    CharSequence charSequence9 = extras.getCharSequence(NotificationCompat.EXTRA_BIG_TEXT);
                    if (!TextUtils.isEmpty(charSequence9)) {
                        CharSequence replaceText9 = replaceText(charSequence9, str, str2, z);
                        if (!TextUtils.isEmpty(replaceText9)) {
                            extras.putCharSequence(NotificationCompat.EXTRA_BIG_TEXT, replaceText9);
                        } else {
                            extras.remove(NotificationCompat.EXTRA_BIG_TEXT);
                        }
                    }
                }
                if (Build.VERSION.SDK_INT >= 24) {
                    CharSequence charSequence10 = extras.getCharSequence(NotificationCompat.EXTRA_SELF_DISPLAY_NAME);
                    if (!TextUtils.isEmpty(charSequence10)) {
                        CharSequence replaceText10 = replaceText(charSequence10, str, str2, z);
                        if (!TextUtils.isEmpty(replaceText10)) {
                            extras.putCharSequence(NotificationCompat.EXTRA_SELF_DISPLAY_NAME, replaceText10);
                        } else {
                            extras.remove(NotificationCompat.EXTRA_SELF_DISPLAY_NAME);
                        }
                    }
                }
            }
            String str4 = "text";
            if (z4) {
                CharSequence[] charSequenceArray = extras.getCharSequenceArray(NotificationCompat.EXTRA_TEXT_LINES);
                if (charSequenceArray != null) {
                    ArrayList arrayList = new ArrayList();
                    int length = charSequenceArray.length;
                    int i3 = 0;
                    while (i3 < length) {
                        int i4 = length;
                        CharSequence charSequence11 = charSequenceArray[i3];
                        CharSequence replaceText11 = replaceText(charSequence11, str, str2, z);
                        if (!TextUtils.isEmpty(replaceText11)) {
                            if (charSequence11 instanceof String) {
                                replaceText11 = replaceText11.toString();
                            }
                            arrayList.add(replaceText11);
                        }
                        i3++;
                        length = i4;
                    }
                    if (!arrayList.isEmpty()) {
                        extras.putCharSequenceArray(NotificationCompat.EXTRA_TEXT_LINES, (CharSequence[]) arrayList.toArray(new CharSequence[0]));
                    } else {
                        extras.remove(NotificationCompat.EXTRA_TEXT_LINES);
                    }
                }
                if (Build.VERSION.SDK_INT >= 24 && (parcelableArray2 = extras.getParcelableArray(NotificationCompat.EXTRA_MESSAGES)) != null) {
                    ArrayList arrayList2 = new ArrayList();
                    int length2 = parcelableArray2.length;
                    int i5 = 0;
                    while (i5 < length2) {
                        Parcelable[] parcelableArr2 = parcelableArray2;
                        Bundle bundle4 = (Bundle) parcelableArray2[i5];
                        int i6 = length2;
                        String string = bundle4.getString("sender");
                        if (!TextUtils.isEmpty(string)) {
                            string = "" + ((Object) replaceText(string, str, str2, z));
                            bundle4.putString("sender", string);
                        }
                        String string2 = bundle4.getString("text");
                        if (!TextUtils.isEmpty(string2)) {
                            string2 = "" + ((Object) replaceText(string2, str, str2, z));
                            bundle4.putString("text", string2);
                        }
                        if (!TextUtils.isEmpty(string) || !TextUtils.isEmpty(string2)) {
                            arrayList2.add(bundle4);
                        }
                        i5++;
                        length2 = i6;
                        parcelableArray2 = parcelableArr2;
                    }
                    if (!arrayList2.isEmpty()) {
                        extras.putParcelableArray(NotificationCompat.EXTRA_MESSAGES, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
                    } else {
                        extras.remove(NotificationCompat.EXTRA_MESSAGES);
                    }
                }
            }
            if (z5 && notification.actions != null) {
                ArrayList arrayList3 = new ArrayList();
                for (Notification.Action action : notification.actions) {
                    action.title = replaceText(action.title, str, str2, z);
                    if (!TextUtils.isEmpty(action.title)) {
                        arrayList3.add(action);
                    }
                }
                if (!arrayList3.isEmpty()) {
                    notification.actions = (Notification.Action[]) arrayList3.toArray(new Notification.Action[0]);
                } else {
                    notification.actions = null;
                }
            }
            try {
                Bundle bundle5 = extras.getBundle("android.wearable.EXTENSIONS");
                if (bundle5 != null) {
                    if (z5 && (parcelableArrayList = bundle5.getParcelableArrayList("actions")) != null) {
                        Iterator it = parcelableArrayList.iterator();
                        while (it.hasNext()) {
                            Notification.Action action2 = (Notification.Action) it.next();
                            action2.title = replaceText(action2.title, str, str2, z);
                            if (TextUtils.isEmpty(action2.title)) {
                                it.remove();
                            }
                        }
                    }
                    Parcelable[] parcelableArray3 = bundle5.getParcelableArray("pages");
                    if (parcelableArray3 != null) {
                        int length3 = parcelableArray3.length;
                        int i7 = 0;
                        while (i7 < length3) {
                            try {
                                notification2 = (Notification) parcelableArray3[i7];
                                parcelableArr = parcelableArray3;
                                str3 = str4;
                                i2 = length3;
                                bundle = extras;
                                i = i7;
                            } catch (Exception e) {
                                e = e;
                                i = i7;
                                parcelableArr = parcelableArray3;
                                i2 = length3;
                                str3 = str4;
                                bundle = extras;
                            }
                            try {
                                replaceNotificationText(notification2, str, str2, z, z2, z3, z4, z5);
                            } catch (Exception e2) {
                                e = e2;
                                try {
                                    Log.m13698w(TAG, e);
                                    i7 = i + 1;
                                    str4 = str3;
                                    extras = bundle;
                                    length3 = i2;
                                    parcelableArray3 = parcelableArr;
                                } catch (Exception e3) {
                                    e = e3;
                                    Log.m13698w(TAG, e);
                                    bundle2 = bundle.getBundle("android.car.EXTENSIONS");
                                    if (bundle2 != null) {
                                        return;
                                    }
                                    return;
                                }
                            }
                            i7 = i + 1;
                            str4 = str3;
                            extras = bundle;
                            length3 = i2;
                            parcelableArray3 = parcelableArr;
                        }
                    }
                }
                str3 = str4;
                bundle = extras;
            } catch (Exception e4) {
                e = e4;
                str3 = str4;
                bundle = extras;
            }
            try {
                bundle2 = bundle.getBundle("android.car.EXTENSIONS");
                if (bundle2 != null || !z4 || (bundle3 = bundle2.getBundle("car_conversation")) == null || (parcelableArray = bundle3.getParcelableArray("messages")) == null) {
                    return;
                }
                for (Parcelable parcelable : parcelableArray) {
                    Bundle bundle6 = (Bundle) parcelable;
                    CharSequence charSequence12 = bundle6.getCharSequence("author");
                    if (!TextUtils.isEmpty(charSequence12)) {
                        bundle6.putCharSequence("author", replaceText(charSequence12, str, str2, z));
                    }
                    CharSequence charSequence13 = bundle6.getCharSequence(str3);
                    if (!TextUtils.isEmpty(charSequence13)) {
                        bundle6.putCharSequence(str3, replaceText(charSequence13, str, str2, z));
                    }
                }
            } catch (Exception e5) {
                Log.m13698w(TAG, e5);
            }
        }
    }

    private CharSequence replaceText(CharSequence charSequence, String str, CharSequence charSequence2, boolean z) {
        if (TextUtils.isEmpty(charSequence)) {
            return charSequence;
        }
        if (TextUtils.isEmpty(str)) {
            return charSequence2;
        }
        while (true) {
            try {
                CharSequence replace = replace(charSequence, str, charSequence2, z);
                if (charSequence.toString().equals(replace.toString())) {
                    break;
                }
                charSequence = replace;
            } catch (Exception e) {
                Log.m13698w(TAG, e);
            }
        }
        return charSequence;
    }

    private static CharSequence replace(CharSequence charSequence, String str, CharSequence charSequence2, boolean z) {
        int indexOf;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        if (z) {
            indexOf = charSequence.toString().toLowerCase(Locale.ENGLISH).indexOf(str.toLowerCase(Locale.ENGLISH));
        } else {
            indexOf = charSequence.toString().indexOf(str);
        }
        if (indexOf == -1) {
            return charSequence;
        }
        spannableStringBuilder.setSpan(str, indexOf, str.length() + indexOf, 33);
        int spanStart = spannableStringBuilder.getSpanStart(str);
        int spanEnd = spannableStringBuilder.getSpanEnd(str);
        if (spanStart != -1) {
            spannableStringBuilder.replace(spanStart, spanEnd, charSequence2);
        }
        return spannableStringBuilder;
    }
}
