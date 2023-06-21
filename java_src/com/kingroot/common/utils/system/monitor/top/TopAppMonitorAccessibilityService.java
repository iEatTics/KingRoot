package com.kingroot.common.utils.system.monitor.top;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.app.ActivityManager;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.p004v4.view.accessibility.AccessibilityEventCompat;
import android.view.Menu;
import android.view.accessibility.AccessibilityEvent;
import android.widget.PopupWindow;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.network.statics.ActionStatsID;
import com.kingroot.kinguser.C3799vt;
import com.kingroot.kinguser.aao;
import com.kingroot.kinguser.abp;
import com.kingroot.kinguser.abr;
import com.tencent.feedback.eup.CrashReport;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class TopAppMonitorAccessibilityService extends AccessibilityService {

    /* renamed from: ZF */
    private static aao.C0615a f1195ZF;

    /* renamed from: ZE */
    private static final Handler f1194ZE = new Handler(Looper.getMainLooper()) { // from class: com.kingroot.common.utils.system.monitor.top.TopAppMonitorAccessibilityService.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 1 && (message.obj instanceof aao.C0615a)) {
                aao.C0615a unused = TopAppMonitorAccessibilityService.f1195ZF = (aao.C0615a) message.obj;
            }
        }
    };

    /* renamed from: ZG */
    private static AtomicBoolean f1196ZG = new AtomicBoolean(false);

    @Override // android.accessibilityservice.AccessibilityService
    public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        switch (accessibilityEvent.getEventType()) {
            case 32:
                String valueOf = String.valueOf(AccessibilityEventCompat.asRecord(accessibilityEvent).getClassName());
                String valueOf2 = String.valueOf(accessibilityEvent.getPackageName());
                Class<?> cls = null;
                try {
                    cls = Class.forName(valueOf);
                } catch (Throwable th) {
                }
                if (cls != null) {
                    try {
                        if (!Dialog.class.isAssignableFrom(cls) && !PopupWindow.class.isAssignableFrom(cls)) {
                            if (Menu.class.isAssignableFrom(cls)) {
                                return;
                            }
                        } else {
                            return;
                        }
                    } catch (Throwable th2) {
                    }
                }
                ActivityManager.RunningTaskInfo runningTaskInfo = new ActivityManager.RunningTaskInfo();
                runningTaskInfo.topActivity = new ComponentName(valueOf2, valueOf);
                abp.m12781qW().m12782d(runningTaskInfo);
                return;
            default:
                return;
        }
    }

    @Override // android.accessibilityservice.AccessibilityService
    public void onInterrupt() {
    }

    @Override // android.accessibilityservice.AccessibilityService
    protected void onServiceConnected() {
        super.onServiceConnected();
        f1196ZG.set(true);
        m13127rg();
        abr.m12763rk().m12766ak(true);
    }

    /* renamed from: rg */
    private void m13127rg() {
        AccessibilityServiceInfo accessibilityServiceInfo = new AccessibilityServiceInfo();
        accessibilityServiceInfo.eventTypes = 32;
        accessibilityServiceInfo.notificationTimeout = 0L;
        accessibilityServiceInfo.feedbackType = 1;
        try {
            setServiceInfo(accessibilityServiceInfo);
        } catch (Exception e) {
            CrashReport.handleCatchException(new Thread(), e, e.getMessage(), null);
        }
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        f1196ZG.set(false);
        abr.m12763rk().m12766ak(false);
        return super.onUnbind(intent);
    }

    /* renamed from: ah */
    public static void m13129ah(boolean z) {
        aao.C0615a m12962a = aao.m12962a(new ComponentName(KApplication.m13453ge().getPackageName(), TopAppMonitorAccessibilityService.class.getName()), z);
        if (z) {
            Message obtainMessage = f1194ZE.obtainMessage();
            obtainMessage.what = 1;
            obtainMessage.obj = m12962a;
            obtainMessage.sendToTarget();
            m13126rh();
        }
    }

    /* renamed from: rh */
    private static void m13126rh() {
        f1194ZE.postDelayed(new Runnable() { // from class: com.kingroot.common.utils.system.monitor.top.TopAppMonitorAccessibilityService.2
            @Override // java.lang.Runnable
            public void run() {
                if (TopAppMonitorAccessibilityService.f1195ZF != null && TopAppMonitorAccessibilityService.f1195ZF.retCode != 1) {
                    TopAppMonitorAccessibilityService.f1195ZF.f1244XG = TopAppMonitorAccessibilityService.f1196ZG.get();
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(Integer.valueOf(TopAppMonitorAccessibilityService.f1195ZF.retCode));
                    arrayList.add(Boolean.valueOf(TopAppMonitorAccessibilityService.f1195ZF.f1244XG));
                    if (!TopAppMonitorAccessibilityService.f1195ZF.f1244XG) {
                        arrayList.add(TopAppMonitorAccessibilityService.f1195ZF.f1242XE);
                        arrayList.add(TopAppMonitorAccessibilityService.f1195ZF.f1243XF);
                    }
                    C3799vt.m1728lT().mo1747a(ActionStatsID.EMID_KingCom_Top_Monitor_Accessibility_Enable_Result, arrayList);
                }
            }
        }, 5000L);
    }
}
