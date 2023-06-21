package com.kingroot.kinguser;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.service.notification.StatusBarNotification;
import android.support.p004v4.app.NotificationCompat;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
/* renamed from: com.kingroot.kinguser.pk */
/* loaded from: classes.dex */
public class C3424pk {

    /* renamed from: yL */
    private StatusBarNotification f3292yL;

    /* synthetic */ C3424pk(C3426pl c3426pl) {
        this();
    }

    /* renamed from: com.kingroot.kinguser.pk$a */
    /* loaded from: classes.dex */
    static class C3425a {

        /* renamed from: zc */
        private static final C3424pk f3293zc = new C3424pk(null);
    }

    private C3424pk() {
    }

    /* renamed from: gk */
    public static C3424pk m2629gk() {
        return C3425a.f3293zc;
    }

    /* renamed from: b */
    public void m2634b(Context context, C3871x c3871x, C3683u c3683u, C0708ad c0708ad, InterfaceC3443pv interfaceC3443pv, cbe cbeVar) {
        boolean z;
        if (c0708ad != null && cbeVar != null) {
            try {
                if (!TextUtils.isEmpty(c0708ad.f1391gP)) {
                    Iterator<Integer> it = m2631ci(c0708ad.f1391gP).iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        } else if (it.next().intValue() == m2628gl()) {
                            z = true;
                            break;
                        }
                    }
                } else {
                    z = true;
                }
                if (z && m2630f(c0708ad.f1388gM, interfaceC3443pv)) {
                    m2633c(context, c3871x, c3683u, c0708ad, interfaceC3443pv, cbeVar);
                } else {
                    cbeVar.mo1789m(String.valueOf(c3871x.f3936gt), "0", null);
                }
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: c */
    private void m2633c(Context context, C3871x c3871x, C3683u c3683u, C0708ad c0708ad, InterfaceC3443pv interfaceC3443pv, cbe cbeVar) {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context);
        ArrayList<String> m2632ch = m2632ch(c0708ad.content);
        String str = m2632ch.get(0);
        String str2 = m2632ch.get(1);
        String str3 = m2632ch.get(2);
        String str4 = m2632ch.get(3);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            int mo5021Tp = cbeVar.mo5021Tp();
            if (mo5021Tp == 0) {
                try {
                    mo5021Tp = cca.akH().getApplicationInfo(context.getPackageName(), 1).icon;
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
            if (TextUtils.isEmpty(str)) {
                builder.setSmallIcon(mo5021Tp);
                m2642a(context, c0708ad.type, c3871x, c3683u, builder, str2, str3, str4, c0708ad, interfaceC3443pv, cbeVar);
                return;
            }
            new C3426pl(this, str, builder, mo5021Tp, context, c0708ad, c3871x, c3683u, str2, str3, str4, interfaceC3443pv, cbeVar).m5104ny();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m2642a(Context context, int i, C3871x c3871x, C3683u c3683u, NotificationCompat.Builder builder, String str, String str2, String str3, C0708ad c0708ad, InterfaceC3443pv interfaceC3443pv, cbe cbeVar) {
        switch (i) {
            case 0:
                builder.setTicker(str).setContentTitle(str).setContentText(str2).setAutoCancel(true).setDefaults(1);
                m2641a(context, c3683u.conchSeqno + 100, c3871x, c3683u, str, builder, c0708ad, interfaceC3443pv, cbeVar);
                return;
            case 1:
                builder.setTicker(str).setContentTitle(str).setContentText(str2).setAutoCancel(true).setStyle(new NotificationCompat.BigTextStyle().bigText(str2)).setDefaults(1);
                m2641a(context, c3683u.conchSeqno + 110, c3871x, c3683u, str, builder, c0708ad, interfaceC3443pv, cbeVar);
                return;
            case 2:
                new C3435pn(this, str3, builder, str, str2, new NotificationCompat.BigPictureStyle(), context, c3683u, c3871x, c0708ad, interfaceC3443pv, cbeVar).m5104ny();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m2641a(Context context, int i, C3871x c3871x, C3683u c3683u, String str, NotificationCompat.Builder builder, C0708ad c0708ad, InterfaceC3443pv interfaceC3443pv, cbe cbeVar) {
        ArrayList<String> m2635a = m2635a(c0708ad.f1390gO, '|');
        String str2 = m2635a.get(0);
        String str3 = m2635a.get(1);
        switch (c0708ad.f1389gN) {
            case 0:
                m2643a(context, i + 0, cbeVar.mo5013jO(c0708ad.f1390gO), c3871x, c3683u, builder, interfaceC3443pv, cbeVar);
                return;
            case 1:
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.addFlags(268435456);
                intent.setData(Uri.parse(str2));
                m2643a(context, i + 1, intent, c3871x, c3683u, builder, interfaceC3443pv, cbeVar);
                return;
            case 2:
                m2643a(context, i + 2, cbeVar.mo5017aD(str2, str3), c3871x, c3683u, builder, interfaceC3443pv, cbeVar);
                return;
            case 3:
                new C3438pq(this, str2, context, i, c3871x, c3683u, builder, interfaceC3443pv, cbeVar).m5104ny();
                return;
            case 4:
                Intent intent2 = new Intent();
                intent2.setFlags(268435456);
                intent2.setClassName(bzu.m5098ge(), str2);
                m2643a(context, i + 4, intent2, c3871x, c3683u, builder, interfaceC3443pv, cbeVar);
                return;
            case 5:
                cbd mo5012jP = cbeVar.mo5012jP(c0708ad.f1390gO);
                if (mo5012jP != null) {
                    m2643a(context, mo5012jP.getId(), mo5012jP.getIntent(), c3871x, c3683u, builder, interfaceC3443pv, cbeVar);
                    return;
                } else {
                    cbeVar.mo1789m(String.valueOf(c3871x.f3936gt), "2", "");
                    return;
                }
            default:
                return;
        }
    }

    /* renamed from: f */
    private boolean m2630f(String str, InterfaceC3443pv interfaceC3443pv) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        return interfaceC3443pv.mo2618cj(str).success();
    }

    /* renamed from: a */
    public void m2643a(Context context, int i, Intent intent, C3871x c3871x, C3683u c3683u, NotificationCompat.Builder builder, InterfaceC3443pv interfaceC3443pv, cbe cbeVar) {
        Intent intent2 = new Intent("com.kingcom.action.NOTIFY_PUSH_CLICK");
        intent2.putExtra("extra_notify_push_click", intent);
        intent2.putExtra("extra_task_id", c3871x.f3936gt);
        builder.setContentIntent(PendingIntent.getBroadcast(context, UUID.randomUUID().hashCode(), intent2, 268435456));
        try {
            ((NotificationManager) context.getSystemService("notification")).notify(i, builder.build());
            new C3439pr(this, i, interfaceC3443pv, cbeVar, c3871x, c3683u).m5104ny();
        } catch (Throwable th) {
        }
    }

    /* renamed from: ch */
    private ArrayList<String> m2632ch(String str) {
        return m2635a(str, '|');
    }

    /* renamed from: a */
    private static ArrayList<String> m2635a(String str, char c) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (str.indexOf(c) == -1) {
            arrayList.add(str);
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i = 0;
        for (int i2 = 0; i2 < length - 1; i2++) {
            if (charArray[i2] == c) {
                i++;
            }
        }
        while (true) {
            int indexOf = str.indexOf(c);
            if (indexOf == -1) {
                break;
            }
            arrayList.add(str.substring(0, indexOf));
            str = str.substring(indexOf + 1);
            if (str.indexOf(c) == -1 && str.length() > 0) {
                arrayList.add(str.substring(0));
            }
        }
        while (arrayList.size() < 4) {
            arrayList.add("");
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m2636a(C3871x c3871x, C3683u c3683u, int i, int i2) {
        if (c3871x != null && c3683u != null) {
            C3820w m5025a = cba.m5025a(c3871x.f3936gt, c3871x.f3937gu, 0, c3683u.conchSeqno, c3683u.f3608gh, i, 0, i2);
            C3498r c3498r = new C3498r();
            c3498r.f3460ge = new ArrayList<>();
            c3498r.f3460ge.add(m5025a);
            cay.akw().m5029a(c3498r, null);
        }
    }

    /* renamed from: ci */
    private static ArrayList<Integer> m2631ci(String str) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        for (String str2 : str.split(",")) {
            try {
                arrayList.add(Integer.valueOf(Integer.valueOf(str2).intValue()));
            } catch (Exception e) {
                arrayList.add(0);
            } catch (Throwable th) {
                arrayList.add(0);
                throw th;
            }
        }
        return arrayList;
    }

    /* renamed from: gl */
    private static int m2628gl() {
        int i = 0;
        try {
            String language = C3138gv.m3651aH().getConfiguration().locale.getLanguage();
            String country = C3138gv.m3651aH().getConfiguration().locale.getCountry();
            if (language.equalsIgnoreCase("zh")) {
                if (country.equalsIgnoreCase("TW") || country.equalsIgnoreCase("HK") || country.equalsIgnoreCase("MO")) {
                    i = 2;
                } else {
                    i = 1;
                }
            } else if (language.equalsIgnoreCase("ES")) {
                i = 3;
            } else if (language.equalsIgnoreCase("PT")) {
                i = 4;
            } else if (language.equalsIgnoreCase("IN")) {
                i = 5;
            } else if (language.equalsIgnoreCase("HI")) {
                i = 6;
            } else if (language.equalsIgnoreCase("RU")) {
                i = 7;
            } else if (language.equalsIgnoreCase("EN")) {
                i = 8;
            }
        } catch (Throwable th) {
        }
        return i;
    }
}
