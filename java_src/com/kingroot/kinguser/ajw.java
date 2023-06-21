package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.support.annotation.NonNull;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.kinguser.activitys.DisablePkgActorActivity;
import com.kingroot.kinguser.bed;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ajw {
    private bed auy = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ajw.1
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            int m11374zE;
            boolean z;
            super.mo1208a(interfaceC2117a);
            if (abc.m12845qK().isRootPermition(false) && (m11374zE = ajw.this.m11374zE()) != 3) {
                List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                if (mo7445nF.size() > 0 && (mo7445nF.get(0) instanceof Integer)) {
                    int intValue = ((Integer) mo7445nF.get(0)).intValue();
                    if (intValue == 0 && mo7445nF.size() > 1 && (mo7445nF.get(1) instanceof String)) {
                        String str = (String) mo7445nF.get(1);
                        Iterator<String> it = avs.m8774RY().m8771ha(16).iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z = false;
                                break;
                            } else if (it.next().equals(str)) {
                                z = true;
                                break;
                            }
                        }
                    } else {
                        z = true;
                    }
                    if (z) {
                        ArrayList<String> m11371zI = ajw.this.m11371zI();
                        if (m11371zI.size() > 0) {
                            if (intValue == 1) {
                                aks.m11143BP().m11123CJ();
                            } else if (intValue == 2) {
                                aks.m11143BP().m11121CL();
                            }
                            boolean m7093iK = bgq.abS().m7093iK(1);
                            switch (m11374zE) {
                                case 0:
                                    if (!m7093iK) {
                                        ajw.this.m11375p(m11371zI);
                                        return;
                                    }
                                    return;
                                case 1:
                                    if (!m7093iK) {
                                        ajw.this.m11379c(m11371zI, null);
                                        ajw.this.m11375p(m11371zI);
                                        return;
                                    }
                                    return;
                                case 2:
                                    ajw.this.m11379c(m11371zI, null);
                                    return;
                                case 3:
                                default:
                                    return;
                                case 4:
                                    if (!m7093iK) {
                                        ajw.this.m11379c(m11371zI, null);
                                        ajw.this.m11375p(m11371zI);
                                        return;
                                    }
                                    return;
                            }
                        }
                    }
                }
            }
        }
    });
    private bed auz = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ajw.2
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            if (abc.m12845qK().isRootPermition(false)) {
                List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                if (mo7445nF.size() > 0 && (mo7445nF.get(0) instanceof Integer)) {
                    int intValue = ((Integer) mo7445nF.get(0)).intValue();
                    if (mo7445nF.size() > 2 && (mo7445nF.get(1) instanceof String) && (mo7445nF.get(2) instanceof Integer)) {
                        String str = (String) mo7445nF.get(1);
                        int intValue2 = ((Integer) mo7445nF.get(2)).intValue();
                        for (String str2 : avs.m8774RY().m8771ha(32)) {
                            if (str2.equals(str)) {
                                ajw.this.m11382L(intValue, intValue2);
                                return;
                            }
                        }
                    }
                }
            }
        }
    });

    /* renamed from: zE */
    public int m11374zE() {
        aks m11143BP = aks.m11143BP();
        if (m11143BP.m11113CT()) {
            return 2;
        }
        if (m11143BP.m11115CR()) {
            return 1;
        }
        if (m11143BP.m11114CS()) {
            return 4;
        }
        if (m11143BP.m11116CQ()) {
            return 0;
        }
        return 3;
    }

    /* renamed from: gC */
    public void m11377gC(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(0);
        arrayList.add(str);
        beg.m7461Zj().m7456a(this.auy, arrayList);
    }

    /* renamed from: zF */
    public void m11373zF() {
        if (!aks.m11143BP().m11124CI()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(1);
            beg.m7461Zj().m7456a(this.auy, arrayList);
        }
    }

    /* renamed from: zG */
    public void m11372zG() {
        if (!aks.m11143BP().m11122CK()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(2);
            beg.m7461Zj().m7456a(this.auy, arrayList);
        }
    }

    /* renamed from: a */
    public void m11380a(List<String> list, Map<String, Boolean> map) {
        HashMap hashMap = new HashMap();
        ajo.m11453a(list, hashMap);
        for (Map.Entry entry : hashMap.entrySet()) {
            String str = (String) entry.getKey();
            int intValue = ((Integer) entry.getValue()).intValue();
            if (intValue != -1) {
                if (map != null) {
                    map.put(str, Boolean.valueOf(intValue == 0));
                }
                ady.m12308tK().m12347D(intValue, str);
            }
        }
    }

    /* renamed from: d */
    public void m11378d(int i, int i2, String str) {
        ArrayList arrayList = new ArrayList();
        if (i == 0) {
            arrayList.add(0);
        } else if (i == 2) {
            arrayList.add(3);
        }
        arrayList.add(str);
        arrayList.add(Integer.valueOf(i2));
        beg.m7461Zj().m7456a(this.auz, arrayList);
    }

    /* renamed from: c */
    public void m11379c(List<String> list, Map<String, Boolean> map) {
        for (String str : list) {
            boolean m11376gD = m11376gD(str);
            if (map != null) {
                map.put(str, Boolean.valueOf(m11376gD));
            }
        }
    }

    /* renamed from: gD */
    public boolean m11376gD(String str) {
        List<VTCmdResult> runRootCommands;
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition(true)) {
            if (abd.m12839qb() >= 11) {
                String format = String.format(Locale.US, "pm disable-user %s", str);
                ArrayList arrayList = new ArrayList();
                arrayList.add(format);
                arrayList.add("su -c '" + format + "'");
                runRootCommands = m12845qK.runRootCommands(arrayList);
            } else {
                String format2 = String.format(Locale.US, "pm disable %s", str);
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(format2);
                arrayList2.add("su -c '" + format2 + "'");
                runRootCommands = m12845qK.runRootCommands(arrayList2);
            }
            ady.m12308tK().m12348C(runRootCommands.get(0).success() ? 0 : 1, str);
            return runRootCommands.get(0).success();
        }
        return false;
    }

    /* renamed from: p */
    public void m11375p(ArrayList<String> arrayList) {
        if (!akh.m11295Au() && arrayList.size() > 0) {
            try {
                Context ge = KUApplication.m13453ge();
                Intent intent = new Intent(ge, DisablePkgActorActivity.class);
                intent.setFlags(268435456);
                intent.putExtra("dpkg", arrayList);
                ge.startActivity(intent);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: zI */
    public ArrayList<String> m11371zI() {
        List<String> m8771ha = avs.m8774RY().m8771ha(16);
        ArrayList<String> arrayList = new ArrayList<>();
        if (m8771ha.size() > 0) {
            for (String str : m8771ha) {
                try {
                    PackageInfo packageInfo = C3952zh.m1312pq().getPackageInfo(str, 0);
                    if (packageInfo != null) {
                        if (m11374zE() == 1) {
                            arrayList.add(str);
                        } else if (packageInfo.applicationInfo.enabled) {
                            arrayList.add(str);
                        }
                    }
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L */
    public void m11382L(int i, int i2) {
        if (i2 != -1) {
            try {
                if (i == 0) {
                    C3524rk.m2456aP(i2);
                } else if (i == 3) {
                    C3524rk.m2455aQ(i2);
                }
            } catch (Exception e) {
            }
        }
    }
}
