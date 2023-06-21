package com.kingroot.kinguser;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.Build;
import android.os.PowerManager;
import android.support.p004v4.app.NotificationCompat;
import android.support.p004v4.internal.view.SupportMenu;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RemoteViews;
import android.widget.TextView;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.activitys.AntiInjectLogActivity;
import com.kingroot.kinguser.activitys.AppDownloadActivity;
import com.kingroot.kinguser.activitys.AppDownloadManagerActivity;
import com.kingroot.kinguser.activitys.KuInstallNotifyActivity;
import com.kingroot.kinguser.activitys.MainActivity;
import com.kingroot.kinguser.activitys.SilentInstallNotifyJumpActivity;
import com.kingroot.kinguser.activitys.SliderMainActivity;
import com.kingroot.kinguser.adm;
import com.kingroot.kinguser.advance.model.SilentInstallLogInfo;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.anf;
import com.kingroot.kinguser.apu;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.ast;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppHistoryListener;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.p015ai.AntiInjectLogModel;
import com.kingroot.kinguser.receiver.AntiInjectLogDeleteReceiver;
import com.kingroot.kinguser.xmod.dao.ExploitLog;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import oicq.wlogin_sdk.request.WtloginHelper;
/* loaded from: classes.dex */
public class adm {
    private static volatile adm acT = null;
    private static int acZ = Color.argb(255, 245, 248, 252);
    private static int ada = Color.argb(255, 167, 170, 174);
    private Notification acU = null;
    private RemoteViews acV = null;
    private bis acW = new bis(KUApplication.m13453ge());
    private bed acX = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.adm.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            List<AntiInjectLogModel> allLogs = ahl.m11725xm().getAllLogs();
            List<ExploitLog> adj = adm.this.acW.adj();
            long m11104Cc = aks.m11143BP().m11104Cc();
            long currentTimeMillis = System.currentTimeMillis();
            long j = currentTimeMillis - 2592000000L;
            int i = 0;
            for (AntiInjectLogModel antiInjectLogModel : allLogs) {
                if (antiInjectLogModel.time <= currentTimeMillis && antiInjectLogModel.time >= j) {
                    i = antiInjectLogModel.time > m11104Cc ? i + 1 : i;
                }
            }
            int i2 = i;
            for (ExploitLog exploitLog : adj) {
                if (exploitLog.mTimeStamp <= currentTimeMillis && exploitLog.mTimeStamp >= j) {
                    i2 = exploitLog.mTimeStamp > m11104Cc ? i2 + 1 : i2;
                }
            }
            if (i2 > 0) {
                if (aks.m11143BP().m11101Cf()) {
                    aks.m11143BP().m10842bg(false);
                    adm.this.m12500cz(i2);
                    return;
                }
                long m11102Ce = aks.m11143BP().m11102Ce();
                if (i2 >= 5 && acu.m12573b(m11102Ce, currentTimeMillis, 259200000L)) {
                    adm.this.m12500cz(i2);
                }
            }
        }
    });
    private bed acY = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.adm.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            List<AntiInjectLogModel> allLogs = ahl.m11725xm().getAllLogs();
            LinkedList linkedList = new LinkedList();
            long currentTimeMillis = System.currentTimeMillis();
            long j = currentTimeMillis - 86400000;
            for (AntiInjectLogModel antiInjectLogModel : allLogs) {
                if (antiInjectLogModel.time <= currentTimeMillis && antiInjectLogModel.time >= j) {
                    linkedList.add(antiInjectLogModel);
                }
            }
            int size = linkedList.size();
            if (size > 0) {
                aks.m11143BP().m10909aM(currentTimeMillis);
                adm.this.m12507b((AntiInjectLogModel) linkedList.get(size - 1));
            }
        }
    });
    private bed adb = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.adm.3
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.adm.3.1
                @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                public Object execute(List<Object> list) {
                    if (aix.m11519aP(true) == 0) {
                        try {
                            int m12488sH = adm.this.m12488sH();
                            boolean m10991El = aks.m11143BP().m10991El();
                            if (m12488sH == 0 && !m10991El) {
                                ady.m12308tK().mo1746bi(100319);
                                adm.this.m12489sG();
                                aks.m11143BP().m10990Em();
                            } else if (aks.m11143BP().m10928Fw()) {
                                adm.this.m12489sG();
                                aks.m11143BP().m10927Fx();
                            }
                            return null;
                        } catch (Exception e) {
                            return null;
                        }
                    }
                    return null;
                }
            }, new Object[0]);
        }
    });
    private Context mContext = KApplication.m13453ge();
    private NotificationManager mNotificationManager = (NotificationManager) this.mContext.getSystemService("notification");

    private adm() {
    }

    /* renamed from: st */
    public static adm m12480st() {
        if (acT == null) {
            synchronized (adm.class) {
                if (acT == null) {
                    acT = new adm();
                }
            }
        }
        return acT;
    }

    /* renamed from: a */
    public void m12512a(String str, String str2, Bitmap bitmap, boolean z) {
        String string;
        cancelNotification(str, 23);
        try {
            RemoteViews m12492sD = m12492sD();
            Intent intent = new Intent(this.mContext, AppDownloadManagerActivity.class);
            intent.putExtra("key_is_from_game_summon_notification", true);
            intent.putExtra("key_id_to_cancel_notification", str);
            if (!z) {
                intent.putExtra("key_game_summon_install_pkg_from_notification", str);
            }
            PendingIntent activity = PendingIntent.getActivity(this.mContext, str.hashCode(), intent, WtloginHelper.SigType.WLOGIN_PT4Token);
            C3953zi m1311pr = C3953zi.m1311pr();
            Notification m12521a = m12521a(m12492sD, m1311pr.getString(R.string.game_summon_notification_title_end), "");
            if (Build.VERSION.SDK_INT > 16) {
                m12521a.bigContentView = m12492sD;
            } else if (Build.VERSION.SDK_INT <= 10) {
                m12521a.contentView = m12492sD;
            }
            m12492sD.setImageViewBitmap(R.id.notify_icon, bitmap);
            m12492sD.setTextViewText(R.id.notify_title, m1311pr.getString(R.string.game_summon_notification_title_start));
            m12492sD.setTextViewText(R.id.notify_title_app_name, str2);
            m12492sD.setTextViewText(R.id.notify_title_end, m1311pr.getString(R.string.game_summon_notification_title_end));
            if (z) {
                string = m1311pr.getString(R.string.game_summon_notification_sub_title_downloading);
            } else {
                string = m1311pr.getString(R.string.game_summon_notification_sub_title_install);
            }
            m12492sD.setTextViewText(R.id.notify_msg, string);
            m12492sD.setOnClickPendingIntent(R.id.notify_ku_view, activity);
            if (Build.VERSION.SDK_INT < 11) {
                m12521a.contentIntent = activity;
            }
            m12513a(str, 23, m12521a);
            if (z) {
                ady.m12308tK().mo1746bi(100663);
            } else {
                ady.m12308tK().mo1746bi(100665);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: eA */
    public void m12499eA(String str) {
        cancelNotification(str, 23);
    }

    @TargetApi(16)
    /* renamed from: a */
    public void m12515a(File file, String str, String str2, boolean z) {
        String string;
        PendingIntent m12473z;
        m12501cy(3);
        try {
            RemoteViews m12493sC = m12493sC();
            if (z) {
                if (file != null) {
                    string = C3953zi.m1311pr().getString(R.string.version_update_btn_install);
                    m12473z = m12473z(2, file.getAbsolutePath());
                    ady.m12308tK().mo1746bi(100422);
                } else {
                    return;
                }
            } else {
                string = C3953zi.m1311pr().getString(R.string.version_update_btn_update);
                m12473z = m12473z(1, "");
                ady.m12308tK().mo1746bi(100421);
            }
            Notification m12521a = m12521a(m12493sC, C3953zi.m1311pr().getString(R.string.version_update_ku_update_info), str);
            if (Build.VERSION.SDK_INT > 16) {
                m12521a.bigContentView = m12493sC;
            } else if (Build.VERSION.SDK_INT <= 10) {
                m12521a.contentView = m12493sC;
            }
            m12493sC.setImageViewResource(R.id.notify_icon, R.drawable.ic_launcher);
            m12493sC.setTextViewText(R.id.notify_title, str);
            m12493sC.setTextViewText(R.id.notify_msg, m12496eD(str2));
            m12493sC.setTextViewText(R.id.notify_install, string);
            m12493sC.setOnClickPendingIntent(R.id.notify_install, m12473z);
            if (Build.VERSION.SDK_INT < 11) {
                m12493sC.setViewVisibility(R.id.notify_install, 8);
                m12521a.contentIntent = m12473z;
            }
            m12527a(3, m12521a);
            ady.m12308tK().m12327b(1, z ? 2 : 1, 0, 0, 0);
        } catch (Exception e) {
        }
    }

    /* renamed from: su */
    public void m12479su() {
        m12501cy(3);
    }

    /* renamed from: z */
    private PendingIntent m12473z(int i, String str) {
        return PendingIntent.getActivity(this.mContext, 0, KuInstallNotifyActivity.m12617d(this.mContext, str, i), WtloginHelper.SigType.WLOGIN_PT4Token);
    }

    /* renamed from: a */
    public void m12514a(String str, int i, int i2, boolean z) {
        m12501cy(5);
        if (this.acU == null) {
            NotificationCompat.Builder ticker = new NotificationCompat.Builder(this.mContext).setWhen(System.currentTimeMillis()).setSmallIcon(m12478sv()).setTicker(C3953zi.m1311pr().getString(R.string.version_update_ku_update_info));
            if (abd.m12839qb() < 11) {
                ticker.setContentIntent(PendingIntent.getActivity(this.mContext, 0, new Intent(), 0));
            }
            this.acU = ticker.build();
        }
        if (this.acV == null) {
            this.acV = new RemoteViews(this.mContext.getPackageName(), (int) R.layout.notify_progress_view);
            this.acV.setImageViewResource(R.id.notify_icon, R.drawable.ic_launcher);
            this.acV.setTextViewText(R.id.notify_title, str);
            this.acV.setTextColor(R.id.notify_title, m12490sF().intValue());
            this.acU.contentView = this.acV;
        }
        this.acV.setProgressBar(R.id.notify_progressbar, i, i2, z);
        m12527a(5, this.acU);
    }

    /* renamed from: sv */
    private int m12478sv() {
        return Build.VERSION.SDK_INT < 21 ? R.drawable.ic_launcher : R.drawable.ic_launcher_material;
    }

    /* renamed from: cw */
    public void m12503cw(int i) {
        if (this.acV != null) {
            this.acV.setProgressBar(R.id.notify_progressbar, 100, i, false);
        }
        m12527a(5, this.acU);
    }

    /* renamed from: sw */
    public void m12477sw() {
        m12501cy(5);
        this.acV = null;
        this.acU = null;
    }

    /* renamed from: cx */
    public void m12502cx(int i) {
        m12501cy(7);
        m12527a(7, m12520a(null, C3953zi.m1311pr().getString(R.string.main_page_root_power_notify_ticker_abnormal), C3953zi.m1311pr().getString(R.string.main_page_root_power_notify_ticker_abnormal), null, PendingIntent.getActivity(this.mContext, 0, new Intent(this.mContext, MainActivity.class), WtloginHelper.SigType.WLOGIN_PT4Token)));
    }

    /* renamed from: sx */
    public void m12476sx() {
        m12501cy(7);
    }

    /* renamed from: a */
    public void m12516a(AntiInjectLogModel antiInjectLogModel) {
        long m11103Cd = aks.m11143BP().m11103Cd();
        boolean m11077DD = aks.m11143BP().m11077DD();
        boolean isScreenOn = ((PowerManager) this.mContext.getSystemService("power")).isScreenOn();
        if (!m11077DD && isScreenOn && acu.m12573b(m11103Cd, System.currentTimeMillis(), 86400000L)) {
            aks.m11143BP().m10909aM(System.currentTimeMillis());
            m12507b(antiInjectLogModel);
        }
    }

    /* renamed from: sy */
    public void m12475sy() {
        long m11103Cd = aks.m11143BP().m11103Cd();
        boolean m11077DD = aks.m11143BP().m11077DD();
        boolean isScreenOn = ((PowerManager) this.mContext.getSystemService("power")).isScreenOn();
        if (!m11077DD && isScreenOn && acu.m12573b(m11103Cd, System.currentTimeMillis(), 86400000L)) {
            beg.m7461Zj().m7450c(this.acY);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m12507b(AntiInjectLogModel antiInjectLogModel) {
        m12501cy(14);
        m12510b(14, m12505c(antiInjectLogModel));
    }

    /* renamed from: c */
    private String m12505c(AntiInjectLogModel antiInjectLogModel) {
        StringBuilder sb = new StringBuilder(255);
        String m12498eB = m12498eB(antiInjectLogModel.apY);
        boolean m12497eC = m12497eC(antiInjectLogModel.processName);
        int m11074DG = aks.m11143BP().m11074DG();
        int m11072DI = aks.m11143BP().m11072DI();
        if (m12498eB != null && m12497eC) {
            if (m11074DG == 0) {
                aks.m11143BP().m10744ew(new Random().nextInt(10));
            }
            sb.append(C3953zi.m1311pr().getString(R.string.anti_log_prevent_success));
            sb.append(m12498eB);
            if (m11074DG == aks.m11143BP().m11073DH()) {
                sb.append(C3953zi.m1311pr().getString(R.string.anti_log_hijack_system));
            } else {
                sb.append(C3953zi.m1311pr().getString(R.string.anti_log_modify_system));
            }
            int i = m11074DG + 1;
            aks.m11143BP().m10745ev(i);
            if (i == 10) {
                aks.m11143BP().m10745ev(0);
            }
        } else if (m12498eB != null && !m12497eC) {
            sb.append(C3953zi.m1311pr().getString(R.string.anti_log_prevent_success));
            sb.append(m12498eB);
            sb.append(C3953zi.m1311pr().getString(R.string.anti_log_modify_software));
        } else if (m12498eB == null && m12497eC) {
            if (m11072DI == 0) {
                aks.m11143BP().m10742ey(new Random().nextInt(10));
            }
            if (m11072DI == aks.m11143BP().m11071DJ()) {
                sb.append(C3953zi.m1311pr().getString(R.string.anti_log_prevent_hijack_system_success));
            } else {
                sb.append(C3953zi.m1311pr().getString(R.string.anti_log_prevent_modify_system_success));
            }
            int i2 = m11072DI + 1;
            aks.m11143BP().m10743ex(i2);
            if (i2 == 10) {
                aks.m11143BP().m10743ex(0);
            }
        } else if (m12498eB == null && !m12497eC) {
            sb.append(C3953zi.m1311pr().getString(R.string.anti_log_prevent_modify_software_success));
        }
        return sb.toString();
    }

    /* renamed from: eB */
    private String m12498eB(String str) {
        String substring;
        C3952zh m1312pq = C3952zh.m1312pq();
        if (str.indexOf("/data/data") == -1) {
            return null;
        }
        if (str.indexOf("/data/data-lib") == -1) {
            String substring2 = str.substring(11);
            substring = substring2.substring(0, substring2.indexOf("/"));
        } else {
            String substring3 = str.substring(15);
            substring = substring3.substring(0, substring3.indexOf("/"));
        }
        try {
            return m1312pq.getApplicationLabel(m1312pq.getApplicationInfo(substring, 0)).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: eC */
    private boolean m12497eC(String str) {
        return str.equalsIgnoreCase("zygote") || str.equalsIgnoreCase("system_server");
    }

    /* renamed from: sz */
    public void m12474sz() {
        beg.m7461Zj().m7450c(this.acX);
    }

    /* renamed from: sA */
    public void m12495sA() {
        m12501cy(6);
    }

    /* renamed from: cy */
    public void m12501cy(int i) {
        cancelNotification(null, i);
    }

    public void cancelNotification(String str, int i) {
        try {
            this.mNotificationManager.cancel(str, i);
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    private void m12527a(int i, Notification notification) {
        m12513a((String) null, i, notification);
    }

    /* renamed from: a */
    private void m12513a(String str, int i, Notification notification) {
        if (!akh.m11295Au() || i == 21) {
            try {
                if (this.mNotificationManager != null) {
                    this.mNotificationManager.notify(str, i, notification);
                }
            } catch (Throwable th) {
            }
        }
    }

    @TargetApi(16)
    /* renamed from: a */
    public void m12525a(int i, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, Intent intent, boolean z) {
        m12522a(i, charSequence, charSequence2, charSequence3, charSequence4, null, intent, z, false);
    }

    @TargetApi(16)
    /* renamed from: a */
    public void m12524a(int i, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, Intent intent, boolean z, boolean z2) {
        m12522a(i, charSequence, charSequence2, charSequence3, charSequence4, null, intent, z, z2);
    }

    @TargetApi(16)
    /* renamed from: a */
    public void m12523a(int i, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, Bitmap bitmap, Intent intent, boolean z) {
        m12522a(i, charSequence, charSequence2, charSequence3, charSequence4, bitmap, intent, z, false);
    }

    @TargetApi(16)
    /* renamed from: a */
    public void m12522a(int i, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, Bitmap bitmap, Intent intent, boolean z, boolean z2) {
        m12501cy(i);
        try {
            RemoteViews m12493sC = m12493sC();
            PendingIntent pendingIntent = null;
            if (intent != null) {
                if (z) {
                    pendingIntent = PendingIntent.getService(this.mContext, 0, intent, WtloginHelper.SigType.WLOGIN_PT4Token);
                } else {
                    pendingIntent = PendingIntent.getActivity(this.mContext, 0, intent, WtloginHelper.SigType.WLOGIN_PT4Token);
                }
            }
            Notification m12521a = m12521a(m12493sC, charSequence, charSequence2);
            if (Build.VERSION.SDK_INT > 16) {
                m12521a.bigContentView = m12493sC;
            } else if (Build.VERSION.SDK_INT <= 10) {
                m12521a.contentView = m12493sC;
            }
            if (z2) {
                m12521a.flags |= 2;
            }
            if (bitmap != null) {
                m12493sC.setImageViewBitmap(R.id.notify_icon, bitmap);
            } else {
                m12493sC.setImageViewResource(R.id.notify_icon, R.drawable.ic_launcher);
            }
            if (TextUtils.isEmpty(charSequence2)) {
                m12493sC.setViewVisibility(R.id.notify_title, 8);
            } else {
                m12493sC.setViewVisibility(R.id.notify_title, 0);
                m12493sC.setTextViewText(R.id.notify_title, charSequence2);
            }
            m12493sC.setTextViewText(R.id.notify_msg, charSequence3);
            if (charSequence4 != null) {
                m12493sC.setTextViewText(R.id.notify_install, charSequence4);
                m12493sC.setOnClickPendingIntent(R.id.notify_install, pendingIntent);
            }
            if (charSequence4 == null || Build.VERSION.SDK_INT < 11) {
                m12493sC.setViewVisibility(R.id.notify_install, 8);
                m12521a.contentIntent = pendingIntent;
            }
            m12527a(i, m12521a);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public void m12526a(int i, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, Intent intent, Bitmap bitmap, Intent intent2, boolean z, boolean z2) {
        PendingIntent pendingIntent;
        RemoteViews remoteViews;
        m12501cy(i);
        try {
            if (intent2 == null) {
                pendingIntent = null;
            } else if (z) {
                pendingIntent = PendingIntent.getService(this.mContext, 0, intent2, WtloginHelper.SigType.WLOGIN_PT4Token);
            } else {
                pendingIntent = PendingIntent.getActivity(this.mContext, 0, intent2, WtloginHelper.SigType.WLOGIN_PT4Token);
            }
            if (!TextUtils.isEmpty(charSequence4) && intent != null && Build.VERSION.SDK_INT >= 11) {
                RemoteViews remoteViews2 = new RemoteViews(this.mContext.getPackageName(), (int) R.layout.notify_imageview__with_button_layout);
                PendingIntent activity = PendingIntent.getActivity(this.mContext, 1, intent, WtloginHelper.SigType.WLOGIN_PT4Token);
                remoteViews2.setTextViewText(R.id.notify_button, charSequence4);
                remoteViews2.setOnClickPendingIntent(R.id.notify_button, activity);
                remoteViews = remoteViews2;
            } else {
                remoteViews = new RemoteViews(this.mContext.getPackageName(), (int) R.layout.notify_imageview_layout);
            }
            View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.notify_custom_view, (ViewGroup) null);
            ImageView imageView = (ImageView) inflate.findViewById(R.id.notify_icon);
            if (bitmap != null) {
                imageView.setImageBitmap(bitmap);
            } else {
                imageView.setImageResource(R.drawable.ic_launcher);
            }
            TextView textView = (TextView) inflate.findViewById(R.id.notify_title);
            if (TextUtils.isEmpty(charSequence2)) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
                textView.setText(charSequence2);
            }
            TextView textView2 = (TextView) inflate.findViewById(R.id.notify_msg);
            if (TextUtils.isEmpty(charSequence3)) {
                textView2.setVisibility(8);
            } else {
                textView2.setVisibility(0);
                textView2.setText(charSequence3);
            }
            remoteViews.setImageViewBitmap(R.id.notify_image, bhd.m7060d(inflate, abg.m12836qc(), abg.m12835r(64.0f)));
            Notification m12521a = m12521a(remoteViews, charSequence, charSequence2);
            if (z2) {
                m12521a.flags |= 2;
            }
            m12521a.contentView = remoteViews;
            m12521a.contentIntent = pendingIntent;
            m12521a.flags |= 16;
            m12527a(i, m12521a);
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cz */
    public void m12500cz(int i) {
        m12501cy(13);
        try {
            m12509b(13, String.format(C3953zi.m1311pr().getString(R.string.anti_log_notify_msg_title), Integer.valueOf(i)), String.format(C3953zi.m1311pr().getString(R.string.anti_log_notify_msg_title), Integer.valueOf(i)), "", C3953zi.m1311pr().getString(R.string.anti_log_notify_btn), new Intent(this.mContext, AntiInjectLogActivity.class), false);
        } catch (Exception e) {
        }
    }

    /* renamed from: sB */
    public void m12494sB() {
        aks.m11143BP().m10867bM(false);
        m12501cy(13);
    }

    @TargetApi(16)
    /* renamed from: b */
    public void m12509b(int i, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, Intent intent, boolean z) {
        m12501cy(i);
        RemoteViews m12491sE = m12491sE();
        PendingIntent pendingIntent = null;
        if (intent != null) {
            if (z) {
                pendingIntent = PendingIntent.getService(this.mContext, 0, intent, WtloginHelper.SigType.WLOGIN_PT4Token);
            } else {
                pendingIntent = PendingIntent.getActivity(this.mContext, 0, intent, WtloginHelper.SigType.WLOGIN_PT4Token);
            }
        }
        Notification m12521a = m12521a(m12491sE, charSequence, charSequence2);
        if (Build.VERSION.SDK_INT > 16) {
            m12521a.bigContentView = m12491sE;
        } else if (Build.VERSION.SDK_INT <= 10) {
            m12521a.contentView = m12491sE;
        }
        m12491sE.setImageViewResource(R.id.notify_icon, R.drawable.ic_launcher);
        m12491sE.setTextViewText(R.id.notify_title, charSequence2);
        m12491sE.setTextViewText(R.id.notify_msg, charSequence3);
        m12491sE.setTextViewText(R.id.notify_install, charSequence4);
        m12491sE.setOnClickPendingIntent(R.id.notify_install, pendingIntent);
        if (Build.VERSION.SDK_INT < 11) {
            m12491sE.setViewVisibility(R.id.notify_install, 8);
            m12521a.contentIntent = pendingIntent;
        }
        Intent intent2 = new Intent(this.mContext, AntiInjectLogDeleteReceiver.class);
        intent2.setAction("com.kingroot.kinguser.ANTILOG_DELETE");
        m12521a.deleteIntent = PendingIntent.getBroadcast(this.mContext, i, intent2, 268435456);
        aks.m11143BP().m10867bM(true);
        aks.m11143BP().m10908aN(System.currentTimeMillis());
        m12527a(i, m12521a);
    }

    @TargetApi(16)
    /* renamed from: b */
    public void m12510b(int i, CharSequence charSequence) {
        m12501cy(i);
        m12527a(i, new NotificationCompat.Builder(this.mContext).setWhen(System.currentTimeMillis()).setSmallIcon(m12478sv()).setTicker(charSequence).setAutoCancel(true).setDefaults(5).build());
        m12501cy(i);
    }

    /* renamed from: eD */
    private SpannableStringBuilder m12496eD(String str) {
        if (TextUtils.isEmpty(str)) {
            return new SpannableStringBuilder(str);
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        String string = C3953zi.m1311pr().getString(R.string.version_update_install_title);
        int length = string.length();
        int indexOf = str.indexOf(string);
        if (indexOf != -1) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((int) SupportMenu.CATEGORY_MASK), indexOf, length + indexOf, 33);
            return spannableStringBuilder;
        }
        return spannableStringBuilder;
    }

    /* renamed from: sC */
    private RemoteViews m12493sC() {
        Integer m12490sF = m12490sF();
        RemoteViews remoteViews = new RemoteViews(this.mContext.getPackageName(), (int) R.layout.notify_install_ku_view);
        remoteViews.setTextColor(R.id.notify_title, m12490sF.intValue());
        remoteViews.setTextColor(R.id.notify_msg, m12490sF.intValue());
        remoteViews.setTextColor(R.id.notify_install, m12490sF.intValue());
        remoteViews.setInt(R.id.notify_install, "setBackgroundResource", m12504cA(m12490sF.intValue()));
        return remoteViews;
    }

    /* renamed from: sD */
    private RemoteViews m12492sD() {
        return new RemoteViews(this.mContext.getPackageName(), (int) R.layout.notify_market_game_reservation_view);
    }

    /* renamed from: sE */
    private RemoteViews m12491sE() {
        Integer m12490sF = m12490sF();
        RemoteViews remoteViews = new RemoteViews(this.mContext.getPackageName(), (int) R.layout.notify_anti_log_view);
        remoteViews.setTextColor(R.id.notify_title, m12490sF.intValue());
        remoteViews.setTextColor(R.id.notify_msg, m12490sF.intValue());
        remoteViews.setTextColor(R.id.notify_install, m12490sF.intValue());
        remoteViews.setInt(R.id.notify_install, "setBackgroundResource", m12504cA(m12490sF.intValue()));
        return remoteViews;
    }

    /* renamed from: sF */
    private Integer m12490sF() {
        int i;
        Integer m12469sS = adp.m12469sS();
        if (m12469sS == null) {
            Context m13453ge = KApplication.m13453ge();
            TextView textView = new TextView(m13453ge);
            try {
                if (abd.m12839qb() >= 9 && abd.m12839qb() < 21) {
                    textView.setTextAppearance(m13453ge, C3953zi.getSystem().getIdentifier("TextAppearance.StatusBar.EventContent.Title", "style", "android"));
                    i = Integer.valueOf(textView.getTextColors().getDefaultColor());
                } else if (abd.m12839qb() >= 21) {
                    textView.setTextAppearance(m13453ge, C3953zi.getSystem().getIdentifier("TextAppearance.Material.Notification.Title", "style", "android"));
                    i = Integer.valueOf(textView.getTextColors().getDefaultColor());
                } else {
                    i = -1;
                }
                return i;
            } catch (Throwable th) {
                return -1;
            }
        }
        return m12469sS;
    }

    /* renamed from: cA */
    private int m12504cA(int i) {
        return (Math.abs(Color.red(i) - Color.red(acZ)) + Math.abs(Color.green(i) - Color.green(acZ))) + Math.abs(Color.blue(i) - Color.blue(acZ)) < (Math.abs(Color.red(i) - Color.red(ada)) + Math.abs(Color.green(i) - Color.green(ada))) + Math.abs(Color.blue(i) - Color.blue(ada)) ? R.drawable.notify_install_btn : R.drawable.notify_install_gray_btn;
    }

    /* renamed from: a */
    private final Notification m12521a(RemoteViews remoteViews, CharSequence charSequence, CharSequence charSequence2) {
        return m12520a(remoteViews, charSequence, charSequence2, null, null);
    }

    /* renamed from: a */
    private Notification m12520a(RemoteViews remoteViews, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, PendingIntent pendingIntent) {
        NotificationCompat.Builder defaults = new NotificationCompat.Builder(this.mContext).setWhen(System.currentTimeMillis()).setSmallIcon(m12478sv()).setContent(remoteViews).setTicker(charSequence).setContentIntent(pendingIntent).setContentTitle(charSequence2).setContentText(charSequence3).setAutoCancel(true).setDefaults(5);
        int i = 0;
        if (abd.m12839qb() >= 16) {
            defaults.setPriority(2);
        } else if (abd.m12839qb() >= 11) {
            i = 128;
        }
        Notification build = defaults.build();
        build.flags = i | build.flags;
        return build;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(16)
    /* renamed from: sG */
    public void m12489sG() {
        m12501cy(15);
        try {
            Intent m12589i = SliderMainActivity.m12589i(this.mContext, 1);
            String string = C3953zi.m1311pr().getString(R.string.notify_ku_installed_success_title);
            String string2 = C3953zi.m1311pr().getString(R.string.notify_ku_installed_success_title);
            Spanned fromHtml = Html.fromHtml(C3953zi.m1311pr().getString(R.string.notify_ku_installed_success_content_format, KApplication.m13436ii()));
            PendingIntent activity = PendingIntent.getActivity(this.mContext, 0, m12589i, WtloginHelper.SigType.WLOGIN_PT4Token);
            RemoteViews remoteViews = new RemoteViews(this.mContext.getPackageName(), (int) R.layout.notify_imageview_layout);
            View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.notify_install_ku_success_view, (ViewGroup) null);
            ((TextView) inflate.findViewById(R.id.notify_title)).setText(string2);
            ((TextView) inflate.findViewById(R.id.notify_msg)).setText(fromHtml);
            remoteViews.setImageViewBitmap(R.id.notify_image, bhd.m7060d(inflate, abg.m12836qc(), abg.m12835r(64.0f)));
            Notification m12521a = m12521a(remoteViews, string, string2);
            if (Build.VERSION.SDK_INT >= 16) {
                RemoteViews remoteViews2 = new RemoteViews(this.mContext.getPackageName(), (int) R.layout.notify_imageview_layout);
                String string3 = C3953zi.m1311pr().getString(R.string.notify_ku_installed_success_big_title);
                String string4 = C3953zi.m1311pr().getString(R.string.notify_ku_installed_success_big_content_title);
                Spanned fromHtml2 = Html.fromHtml(C3953zi.m1311pr().getString(R.string.notify_ku_installed_success_big_btn_format, KApplication.m13436ii()));
                View inflate2 = LayoutInflater.from(this.mContext).inflate(R.layout.notify_install_ku_view_big, (ViewGroup) null);
                ((TextView) inflate2.findViewById(R.id.notify_title)).setText(string3);
                ((TextView) inflate2.findViewById(R.id.notify_msg)).setText(string4);
                ((TextView) inflate2.findViewById(R.id.notify_btn)).setText(fromHtml2);
                remoteViews2.setImageViewBitmap(R.id.notify_image, bhd.m7060d(inflate2, abg.m12836qc(), abg.m12835r(128.0f)));
                m12521a.bigContentView = remoteViews2;
            }
            m12521a.contentView = remoteViews;
            m12521a.contentIntent = activity;
            m12527a(15, m12521a);
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sH */
    public int m12488sH() {
        try {
            ApplicationInfo applicationInfo = C3952zh.m1312pq().getApplicationInfo(KUApplication.m13453ge().getPackageName(), 0);
            if (applicationInfo != null) {
                File file = new File(applicationInfo.publicSourceDir);
                if (file.isFile()) {
                    long lastModified = file.lastModified();
                    long currentTimeMillis = System.currentTimeMillis();
                    if (adk.m12539b(lastModified, currentTimeMillis, 259200000L)) {
                        return 1;
                    }
                    if (adk.m12539b(lastModified, currentTimeMillis, 86400000L)) {
                        return 0;
                    }
                }
            }
            return -1;
        } catch (Exception e) {
            return -1;
        }
    }

    /* renamed from: sI */
    public void m12487sI() {
        if (!aks.m11143BP().m10928Fw()) {
            if (aks.m11143BP().m10997Ef()) {
                if (aks.m11143BP().m10991El() && aks.m11143BP().m10989En()) {
                    return;
                }
            } else {
                return;
            }
        }
        beg.m7461Zj().m7450c(this.adb);
    }

    /* renamed from: sJ */
    public void m12486sJ() {
        beg.m7461Zj().m7450c(new bed(bem.MEDIUM, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.adm.4
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                int i = 0;
                super.run();
                long currentTimeMillis = System.currentTimeMillis();
                long m10930Fu = aks.m11143BP().m10930Fu();
                if (aks.m11143BP().m10948Fc() && adk.m12539b(m10930Fu, currentTimeMillis, 57600000L)) {
                    aks.m11143BP().m10929Fv();
                    ady.m12308tK().mo1746bi(100528);
                }
                if (aks.m11143BP().m10946Fe() && adk.m12539b(aks.m11143BP().m10945Ff(), System.currentTimeMillis(), 86400000L)) {
                    List<SilentInstallLogInfo> m11873ah = agy.m11867wk().m11873ah(86400000L);
                    if (!C3942yy.m1352c(m11873ah)) {
                        int i2 = 0;
                        for (SilentInstallLogInfo silentInstallLogInfo : m11873ah) {
                            if (silentInstallLogInfo.mState == 1) {
                                i++;
                            } else if (silentInstallLogInfo.mState == 0) {
                                i2++;
                            }
                            i2 = i2;
                        }
                        aks.m11143BP().m10815bu(System.currentTimeMillis());
                        adm.this.m12529F(i, i2);
                    }
                }
            }
        }));
    }

    /* renamed from: F */
    public void m12529F(int i, int i2) {
        m12485sK();
        ady.m12308tK().mo1746bi(100504);
        m12525a(20, C3953zi.m1311pr().getString(R.string.notify_silent_install_info), C3953zi.m1311pr().getString(R.string.notify_silent_install_info), Html.fromHtml(C3953zi.m1311pr().getString(R.string.notify_silent_install_content_format, Integer.valueOf(i2), Integer.valueOf(i))), C3953zi.m1311pr().getString(R.string.notify_silent_install_button), new Intent(this.mContext, SilentInstallNotifyJumpActivity.class), false);
    }

    /* renamed from: sK */
    public void m12485sK() {
        m12501cy(20);
    }

    /* renamed from: a */
    public void m12511a(List<String> list, int i) {
        CharSequence string;
        if (!C3942yy.m1351d(list)) {
            int size = list.size();
            switch (i) {
                case 1:
                    string = C3953zi.m1311pr().getString(R.string.apps_market_notification_new_task, Integer.valueOf(size));
                    break;
                case 2:
                    string = C3953zi.m1311pr().getString(R.string.apps_market_notification_download_paused, Integer.valueOf(size));
                    break;
                case 3:
                    string = C3953zi.m1311pr().getString(R.string.apps_market_notification_install_wait_start, Integer.valueOf(size));
                    break;
                default:
                    return;
            }
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < size - 1; i2++) {
                sb.append(list.get(i2));
                sb.append("、");
            }
            sb.append(list.get(size - 1));
            if (sb.length() > 14) {
                if (sb.charAt(13) == 12289) {
                    sb.delete(13, sb.length());
                } else {
                    sb.delete(14, sb.length());
                }
                sb.append("...");
            }
            Intent intent = new Intent(this.mContext, AppDownloadManagerActivity.class);
            intent.putExtra("key_notify_type", 1);
            PendingIntent activity = PendingIntent.getActivity(this.mContext, 0, intent, WtloginHelper.SigType.WLOGIN_PT4Token);
            ady.m12308tK().mo1746bi(100611);
            m12501cy(22);
            m12527a(22, m12520a(null, string, string, sb, activity));
        }
    }

    /* renamed from: sL */
    public void m12484sL() {
        m12501cy(22);
    }

    /* renamed from: sM */
    public void m12483sM() {
        if (bgv.bgg != -1 && bgv.bgg != bgv.bpg) {
            akl m11257AS = akl.m11257AS();
            long currentTimeMillis = System.currentTimeMillis();
            long m11224Bs = m11257AS.m11224Bs();
            int m11223Bt = m11257AS.m11223Bt();
            if (m11223Bt < 2 && acu.m12573b(m11224Bs, currentTimeMillis, 172800000L)) {
                Bitmap decodeResource = BitmapFactory.decodeResource(C3953zi.m1311pr(), R.drawable.brand_00 + bgv.bgg);
                String string = C3953zi.m1311pr().getString(R.string.phone_app_guide_notify_title, bgv.bpf);
                String string2 = C3953zi.m1311pr().getString(R.string.phone_app_guide_notify_content);
                Intent intent = new Intent(KApplication.m13453ge(), AppDownloadActivity.class);
                intent.putExtra("app_download_page_title", C3953zi.m1311pr().getString(R.string.phone_app_guide_page_title, bgv.bpf));
                intent.putExtra("app_download_page_category_id", 5010018);
                intent.putExtra("app_download_page_is_show_logo", true);
                ady.m12308tK().mo1746bi(100704);
                m12526a(25, string2, string, string2, "", null, decodeResource, intent, false, false);
                m11257AS.m11190eb(m11223Bt + 1);
                m11257AS.m11200av(currentTimeMillis);
            }
        }
    }

    /* renamed from: sN */
    public void m12482sN() {
        akl m11257AS = akl.m11257AS();
        long currentTimeMillis = System.currentTimeMillis();
        long m11221Bv = m11257AS.m11221Bv();
        int m11220Bw = m11257AS.m11220Bw();
        if (acu.m12573b(m11221Bv, currentTimeMillis, 432000000L) && m11220Bw < 4) {
            beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new C07275(m11257AS, currentTimeMillis, m11220Bw)));
        }
    }

    /* renamed from: com.kingroot.kinguser.adm$5 */
    /* loaded from: classes.dex */
    public class C07275 extends bek {
        public final /* synthetic */ akl ade;
        public final /* synthetic */ long adf;
        public final /* synthetic */ int adg;

        C07275(akl aklVar, long j, int i) {
            this.ade = aklVar;
            this.adf = j;
            this.adg = i;
        }

        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            ArrayList<String> mo9333GT = alm.m10566GQ().mo9333GT();
            List<DownloaderTaskInfo> m10363IL = amz.m10365II().m10363IL();
            if (C3942yy.m1351d(mo9333GT) && C3942yy.m1351d(m10363IL)) {
                amz.m10365II().m10362a(new ILoadAppHistoryListener.Stub() { // from class: com.kingroot.kingmaster.framework.module.ui.AttentionHelper$6$1
                    @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppHistoryListener
                    public void onComplete(List<AppDownLoadModel> list) {
                        final ArrayList arrayList = new ArrayList();
                        final ArrayList arrayList2 = new ArrayList();
                        final long j = 0;
                        for (AppDownLoadModel appDownLoadModel : list) {
                            if (appDownLoadModel.m4186Ij() && apu.m9738k(appDownLoadModel)) {
                                arrayList.add(appDownLoadModel);
                                arrayList2.add(appDownLoadModel.iconUrl);
                                j += appDownLoadModel.fileSize;
                            }
                        }
                        if (C3942yy.m1351d(arrayList)) {
                            adm.this.m12501cy(26);
                            return;
                        }
                        final ArrayList arrayList3 = new ArrayList();
                        try {
                            final CountDownLatch countDownLatch = new CountDownLatch(arrayList.size());
                            apv.m9735LO().m9727a(arrayList2, new apv.InterfaceC1441b() { // from class: com.kingroot.kingmaster.framework.module.ui.AttentionHelper$6$1.1
                                @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                                /* renamed from: a */
                                public void mo4137a(String str, Bitmap bitmap) {
                                    if (arrayList2.contains(str)) {
                                        arrayList3.add(bitmap);
                                    }
                                    countDownLatch.countDown();
                                }

                                @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                                /* renamed from: eE */
                                public void mo4136eE(String str) {
                                }
                            });
                            countDownLatch.await(10L, TimeUnit.SECONDS);
                        } catch (Exception e) {
                        }
                        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kingmaster.framework.module.ui.AttentionHelper$6$1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                Bitmap m9365r = ast.m9365r(arrayList3);
                                String string = C3953zi.m1311pr().getString(R.string.no_install_apk_notify_title, Integer.valueOf(arrayList.size()));
                                String string2 = C3953zi.m1311pr().getString(R.string.no_install_apk_notify_content, anf.m10285bQ(j));
                                Intent intent = new Intent(KApplication.m13453ge(), AppDownloadManagerActivity.class);
                                intent.putExtra("key_from_uninstall_notification_id", 26);
                                Intent intent2 = new Intent(KApplication.m13453ge(), AppDownloadManagerActivity.class);
                                intent2.putExtra("key_from_uninstall_notification_id", 26);
                                intent2.putExtra("key_is_auto_install", true);
                                ady.m12308tK().mo1746bi(100709);
                                adm.this.m12526a(26, string2, string, string2, C3953zi.m1311pr().getString(R.string.app_install_state_btn), intent2, m9365r, intent, false, false);
                                adm.C07275.this.ade.m11196az(adm.C07275.this.adf);
                                adm.C07275.this.ade.m11189ec(adm.C07275.this.adg + 1);
                            }
                        });
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public void m12528a(int i, long j, ArrayList<Bitmap> arrayList) {
        Bitmap m9365r = ast.m9365r(arrayList);
        String string = C3953zi.m1311pr().getString(R.string.apps_market_app_update_notify_title, Integer.valueOf(i));
        String string2 = C3953zi.m1311pr().getString(R.string.apps_market_app_update_save_memory, anf.m10285bQ(j));
        Intent intent = new Intent(KApplication.m13453ge(), AppDownloadManagerActivity.class);
        intent.putExtra("key_click_content_from_app_update_notification", true);
        Intent intent2 = new Intent(KApplication.m13453ge(), AppDownloadManagerActivity.class);
        intent2.putExtra("key_click_btn_from_app_update_notification", true);
        m12526a(27, string2, string, string2, C3953zi.m1311pr().getString(R.string.apps_market_app_update_notify_btn), intent2, m9365r, intent, false, false);
        akl.m11257AS().m11214aC(System.currentTimeMillis());
        ady.m12308tK().mo1746bi(100719);
    }

    /* renamed from: sO */
    public void m12481sO() {
        m12501cy(27);
    }
}
