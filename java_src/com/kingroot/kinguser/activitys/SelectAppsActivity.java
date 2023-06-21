package com.kingroot.kinguser.activitys;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.afk;
import com.kingroot.kinguser.agy;
import com.kingroot.kinguser.ahl;
import com.kingroot.kinguser.akc;
import com.kingroot.kinguser.ake;
import com.kingroot.kinguser.akg;
import com.kingroot.kinguser.asm;
import com.kingroot.kinguser.awe;
import com.kingroot.kinguser.axb;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class SelectAppsActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        Intent intent = getIntent();
        switch (intent != null ? intent.getIntExtra("software.protect_list.page", 0) : 0) {
            case 0:
                return m12605f(this);
            case 1:
                return new axb(this, ake.m11308Al(), new axb.AbstractC1772b() { // from class: com.kingroot.kinguser.activitys.SelectAppsActivity.1
                    @Override // com.kingroot.kinguser.axb.AbstractC1772b
                    /* renamed from: ab */
                    public List<afk> mo8513ab(List<afk> list) {
                        ArrayList arrayList = new ArrayList();
                        List<String> m9426Oe = asm.m9427Od().m9426Oe();
                        for (afk afkVar : list) {
                            if (!m9426Oe.contains(afkVar.mPackageName)) {
                                arrayList.add(afkVar);
                            }
                        }
                        return arrayList;
                    }
                });
            case 2:
                return m12604g(this);
            default:
                return m12605f(this);
        }
    }

    /* renamed from: f */
    private static AbstractC3922ym m12605f(Activity activity) {
        return new axb(activity, akc.m11313Ai(), new axb.AbstractC1772b() { // from class: com.kingroot.kinguser.activitys.SelectAppsActivity.2
            @Override // com.kingroot.kinguser.axb.AbstractC1772b
            /* renamed from: a */
            public void mo8514a(HashSet<afk> hashSet) {
                final ArrayList arrayList = new ArrayList();
                Iterator<afk> it = hashSet.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().mPackageName);
                }
                beg.m7461Zj().m7450c(new bed(bem.MEDIUM, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.activitys.SelectAppsActivity.2.1
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        ahl.m11725xm().addProtectedPackages(arrayList);
                    }
                }));
            }
        });
    }

    /* renamed from: g */
    private static AbstractC3922ym m12604g(Activity activity) {
        return new axb(activity, akg.m11300Ap(), new axb.AbstractC1772b() { // from class: com.kingroot.kinguser.activitys.SelectAppsActivity.3
            @Override // com.kingroot.kinguser.axb.AbstractC1772b
            /* renamed from: ab */
            public List<afk> mo8513ab(List<afk> list) {
                Iterator<afk> it = list.iterator();
                Map<String, Integer> m8678RX = awe.m8677SI().m8678RX();
                while (it.hasNext()) {
                    afk next = it.next();
                    if (next != null) {
                        String str = next.mPackageName;
                        if (!TextUtils.isEmpty(str)) {
                            if ("com.kingroot.master".equals(str) || "com.kingroot.purify".equals(str) || KApplication.m13453ge().getPackageName().equals(str)) {
                                it.remove();
                            } else {
                                Integer num = m8678RX.get(str);
                                if (num != null && (num.intValue() == 4 || num.intValue() == 5)) {
                                    it.remove();
                                }
                            }
                        }
                    }
                }
                return list;
            }

            @Override // com.kingroot.kinguser.axb.AbstractC1772b
            /* renamed from: ac */
            public List<afk> mo8512ac(List<afk> list) {
                if (!akg.m11300Ap().contains("com.android.shell")) {
                    list.add(0, new afk(C3953zi.m1311pr().getString(R.string.silent_install_setting_app_page_usb_item), "com.android.shell", C3953zi.m1311pr().getDrawable(R.drawable.usb_icon)));
                }
                return list;
            }

            @Override // com.kingroot.kinguser.axb.AbstractC1772b
            /* renamed from: a */
            public void mo8514a(HashSet<afk> hashSet) {
                final ArrayList arrayList = new ArrayList();
                Iterator<afk> it = hashSet.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().mPackageName);
                }
                ady.m12308tK().mo1746bi(100501);
                beg.m7461Zj().m7450c(new bed(bem.MEDIUM, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.activitys.SelectAppsActivity.3.1
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        agy.m11867wk().m11871b(arrayList, 1);
                    }
                }));
            }
        }, C3953zi.m1311pr().getString(R.string.silent_install_app_select_page_title));
    }
}
