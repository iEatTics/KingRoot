package com.kingroot.kinguser;

import android.content.Context;
import android.provider.Settings;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.kinguser.advance.model.DefaultSettingInfo;
import com.kingroot.kinguser.ala;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class ahg extends AbstractC3704uo {
    private static cce<ahg> apk = new cce<ahg>() { // from class: com.kingroot.kinguser.ahg.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: wX */
        public ahg create() {
            return new ahg();
        }
    };

    /* renamed from: com.kingroot.kinguser.ahg$a */
    /* loaded from: classes.dex */
    public static class C0938a {
        public int apl = 0;
        public String apm = null;
        public String akM = null;
        public boolean apn = true;
    }

    private ahg() {
    }

    /* renamed from: wT */
    public static ahg m11770wT() {
        return apk.get();
    }

    /* renamed from: wU */
    public List<DefaultSettingInfo> m11769wU() {
        return (List) m2019aY(1).getResult();
    }

    /* renamed from: wV */
    public int m11768wV() {
        Integer num = (Integer) m2019aY(2).getResult();
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* renamed from: wW */
    public List<DefaultSettingInfo> m11767wW() {
        return (List) m2019aY(4).getResult();
    }

    public void refresh() {
        m2020aX(3);
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C0939b.class;
    }

    /* renamed from: com.kingroot.kinguser.ahg$b */
    /* loaded from: classes.dex */
    public static class C0939b implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            switch (i) {
                case 3:
                    ahh.m11759wY().refresh();
                    return;
                default:
                    return;
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            switch (i) {
                case 1:
                    return ahh.m11759wY().m11762wU();
                case 2:
                    return Integer.valueOf(ahh.m11759wY().m11761wV());
                case 3:
                default:
                    return null;
                case 4:
                    return ahh.m11759wY().m11760wW();
            }
        }
    }

    @WorkerThread
    /* renamed from: a */
    public static boolean m11774a(int i, @NonNull ala.C1052a c1052a) {
        switch (i) {
            case 1:
            case 3:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
                String str = (c1052a.resolveInfo == null || c1052a.resolveInfo.activityInfo == null) ? "" : c1052a.resolveInfo.activityInfo.name;
                String m11489o = aja.m11489o(ala.m10664eW(i), c1052a.packageName, cgx.m4297nl(str));
                if (TextUtils.isEmpty(m11489o) || !abc.m12845qK().m12846el(m11489o).success()) {
                    return false;
                }
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                }
                if (TextUtils.isEmpty(str)) {
                    C0938a m11772dm = m11772dm(i);
                    return TextUtils.equals(c1052a.packageName, m11772dm.apm) && m11772dm.apn;
                }
                return c1052a.equals(ala.m10661eZ(i));
            case 2:
                String m11771fO = m11771fO(c1052a.packageName);
                if (TextUtils.isEmpty(m11771fO)) {
                    return false;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add("/system/bin/ime enable " + m11771fO);
                arrayList.add("/system/bin/ime set " + m11771fO);
                abc.m12845qK().runRootCommands(arrayList);
                return m11771fO.equals(Settings.Secure.getString(KApplication.m13453ge().getContentResolver(), "default_input_method"));
            case 4:
            case 12:
            default:
                return false;
        }
    }

    /* renamed from: dm */
    public static C0938a m11772dm(int i) {
        C0938a c0938a = new C0938a();
        Context ge = KUApplication.m13453ge();
        switch (i) {
            case 1:
            case 3:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
                ala.C1052a m10661eZ = ala.m10661eZ(i);
                Collection<ala.C1052a> m10660fa = ala.m10660fa(i);
                if (m10661eZ != null) {
                    ala.C1052a c1052a = null;
                    for (ala.C1052a c1052a2 : m10660fa) {
                        if (c1052a2.packageName.equals(m10661eZ.packageName)) {
                            if (c1052a == null) {
                                c1052a = c1052a2;
                            }
                            if (c1052a.resolveInfo != null && c1052a2.resolveInfo != null && c1052a2.resolveInfo.priority > c1052a.resolveInfo.priority) {
                                c1052a = c1052a2;
                            }
                            if (c0938a.apm == null && c1052a2.equals(m10661eZ)) {
                                c0938a.apm = c1052a2.packageName;
                                c0938a.akM = c1052a2.getName();
                                if (c0938a.akM == null && !ala.m10657ht(c1052a2.packageName)) {
                                    c0938a.akM = c1052a2.packageName;
                                }
                            }
                        }
                    }
                    c0938a.apn = m10661eZ.equals(c1052a);
                }
                c0938a.apl = m10660fa.size();
                break;
            case 2:
                String string = Settings.Secure.getString(ge.getContentResolver(), "default_input_method");
                List<InputMethodInfo> inputMethodList = ((InputMethodManager) ge.getSystemService("input_method")).getInputMethodList();
                Iterator<InputMethodInfo> it = inputMethodList.iterator();
                while (true) {
                    if (it.hasNext()) {
                        InputMethodInfo next = it.next();
                        if (TextUtils.equals(string, next.getId())) {
                            c0938a.apm = next.getPackageName();
                            c0938a.akM = bgh.m7115jf(next.getPackageName());
                        }
                    }
                }
                c0938a.apl = inputMethodList.size();
                break;
        }
        return c0938a;
    }

    /* renamed from: fO */
    private static String m11771fO(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (InputMethodInfo inputMethodInfo : ((InputMethodManager) KApplication.m13453ge().getSystemService("input_method")).getInputMethodList()) {
            if (TextUtils.equals(str, inputMethodInfo.getPackageName())) {
                return inputMethodInfo.getId();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m11773a(DefaultSettingInfo defaultSettingInfo) {
        if (defaultSettingInfo == null) {
            return false;
        }
        Context m13453ge = KApplication.m13453ge();
        AppBaseModel appBaseModel = defaultSettingInfo.apy;
        if (appBaseModel != null) {
            if (defaultSettingInfo.type == 2) {
                String string = Settings.Secure.getString(m13453ge.getContentResolver(), "default_input_method");
                for (InputMethodInfo inputMethodInfo : ((InputMethodManager) m13453ge.getSystemService("input_method")).getInputMethodList()) {
                    if (string.equals(inputMethodInfo.getId())) {
                        return TextUtils.equals(inputMethodInfo.getPackageName(), appBaseModel.pkgName);
                    }
                }
                return false;
            }
            ala.C1052a m10661eZ = ala.m10661eZ(defaultSettingInfo.type);
            ala.C1052a c1052a = null;
            for (ala.C1052a c1052a2 : ala.m10660fa(defaultSettingInfo.type)) {
                if (!TextUtils.equals(c1052a2.packageName, appBaseModel.pkgName) || (c1052a != null && (c1052a.resolveInfo == null || c1052a2.resolveInfo == null || c1052a2.resolveInfo.priority <= c1052a.resolveInfo.priority))) {
                    c1052a2 = c1052a;
                }
                c1052a = c1052a2;
            }
            return c1052a != null && c1052a.equals(m10661eZ);
        }
        return false;
    }
}
