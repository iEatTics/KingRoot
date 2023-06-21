package com.kingroot.kinguser;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.support.annotation.NonNull;
import android.text.Html;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import com.kingroot.common.app.KApplication;
import com.kingroot.kingmaster.toolbox.cleaner.uninstall.data.TcPkgInfo;
import com.kingroot.kingmaster.toolbox.cleaner.uninstall.manager.AppBackupTool;
import com.kingroot.kinguser.adv;
import com.kingroot.kinguser.aex;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguses.R;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bjs extends adv {
    private static boolean byA = false;
    private static boolean byB = false;
    public static List<TcPkgInfo> byC;
    private AppBackupTool bxU;
    public adv.InterfaceC0733b byz;
    private bed byD = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bjs.1
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            adv.InterfaceC0733b interfaceC0733b;
            super.mo1208a(interfaceC2117a);
            List<Object> mo7445nF = interfaceC2117a.mo7445nF();
            if (mo7445nF == null || mo7445nF.size() <= 0) {
                interfaceC0733b = null;
            } else {
                interfaceC0733b = (adv.InterfaceC0733b) mo7445nF.get(0);
            }
            if (bjs.byC == null) {
                bjs.byC = afd.m12109e(KApplication.m13453ge(), 0);
            }
            if (bjs.byC != null) {
                ArrayList arrayList = new ArrayList();
                int size = bjs.byC.size();
                for (int i = 0; i < size; i++) {
                    if (!bjs.byA) {
                        TcPkgInfo tcPkgInfo = bjs.byC.get(i);
                        if (tcPkgInfo.isPersonApp || tcPkgInfo.enable == 1) {
                            if (interfaceC0733b != null) {
                                interfaceC0733b.m12446f(size, i, arrayList.size());
                            }
                        } else {
                            switch (tcPkgInfo.classify) {
                                case 0:
                                    aex.C0796a c0796a = new aex.C0796a();
                                    c0796a.afP = tcPkgInfo;
                                    c0796a.afR = false;
                                    if (tcPkgInfo.hasLauncherOrMain == 1) {
                                        c0796a.afR = false;
                                    }
                                    arrayList.add(c0796a);
                                    break;
                                case 4:
                                    aex.C0796a c0796a2 = new aex.C0796a();
                                    c0796a2.afP = tcPkgInfo;
                                    c0796a2.afR = false;
                                    arrayList.add(c0796a2);
                                    break;
                                case 6:
                                case 7:
                                case 11:
                                    aex.C0796a c0796a3 = new aex.C0796a();
                                    c0796a3.afP = tcPkgInfo;
                                    c0796a3.afR = false;
                                    arrayList.add(c0796a3);
                                    break;
                            }
                            if (interfaceC0733b != null) {
                                interfaceC0733b.m12446f(size, i, arrayList.size());
                            }
                        }
                    } else {
                        return;
                    }
                }
                if (interfaceC0733b != null) {
                    if (arrayList.size() != 0) {
                        interfaceC0733b.m12447a(arrayList.size(), 0, arrayList, String.format(C3953zi.m1311pr().getString(R.string.deep_optimization_cleaner_desc), Integer.valueOf(arrayList.size())));
                    } else {
                        interfaceC0733b.m12447a(arrayList.size(), 0, arrayList, C3953zi.m1311pr().getString(R.string.uninstall_optimization_no_item));
                    }
                }
                bjs.this.m12452n(arrayList);
            }
        }
    });
    private bed baG = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bjs.2
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            adv.InterfaceC0732a interfaceC0732a;
            String m6622cC;
            int i;
            int i2;
            int i3;
            int i4;
            super.mo1208a(interfaceC2117a);
            List<aex.C0796a> list = (List) bjs.this.m12450ta();
            List<Object> mo7445nF = interfaceC2117a.mo7445nF();
            if (mo7445nF == null || mo7445nF.size() <= 0) {
                interfaceC0732a = null;
            } else {
                interfaceC0732a = (adv.InterfaceC0732a) mo7445nF.get(0);
            }
            if (list != null) {
                long j = 0;
                int i5 = 0;
                int i6 = 0;
                ArrayList<TcPkgInfo> arrayList = new ArrayList();
                for (aex.C0796a c0796a : list) {
                    if (c0796a.afR) {
                        arrayList.add(c0796a.afP);
                    }
                }
                for (TcPkgInfo tcPkgInfo : arrayList) {
                    if (!bjs.byB) {
                        if (interfaceC0732a != null) {
                            try {
                                int size = list.size();
                                i4 = i5 + 1;
                                try {
                                    String string = C3953zi.m1311pr().getString(R.string.deep_optimization_cleaner_doing_desc);
                                    Object[] objArr = new Object[1];
                                    objArr[0] = tcPkgInfo.appName == null ? tcPkgInfo.packageName : tcPkgInfo.appName;
                                    interfaceC0732a.m12449a(size, i4, String.format(string, objArr));
                                } catch (Throwable th) {
                                    i = i4;
                                    int i7 = i6;
                                    i2 = i;
                                    i3 = i7;
                                    i5 = i2;
                                    i6 = i3;
                                }
                            } catch (Throwable th2) {
                                i = i5;
                            }
                        } else {
                            i4 = i5;
                        }
                        long j2 = 0;
                        File file = new File(tcPkgInfo.appSourceDir);
                        if (file != null && file.exists()) {
                            j2 = file.length();
                        }
                        boolean z = false;
                        int m13052a = bjs.this.bxU.m13052a(tcPkgInfo.packageName, tcPkgInfo.classify, tcPkgInfo.description, (AppBackupTool.InterfaceC0603b) null);
                        if (m13052a == 0) {
                            ApplicationInfo applicationInfo = null;
                            try {
                                applicationInfo = C3952zh.m1312pq().getApplicationInfo(tcPkgInfo.packageName, 0);
                            } catch (PackageManager.NameNotFoundException e) {
                            }
                            if (applicationInfo != null) {
                                z = aff.m12096V(applicationInfo.packageName, applicationInfo.sourceDir) == 0;
                            }
                        } else {
                            z = aff.m12092eZ(tcPkgInfo.packageName) == 0;
                        }
                        if (z) {
                            if (m13052a == 0) {
                                tcPkgInfo.enable = 2;
                            } else {
                                tcPkgInfo.enable = 1;
                            }
                            j += j2;
                            i6++;
                        }
                        i3 = i6;
                        i2 = i4;
                        i5 = i2;
                        i6 = i3;
                    } else {
                        return;
                    }
                }
                if (interfaceC0732a != null) {
                    interfaceC0732a.m12449a(list.size(), i5, Html.fromHtml(String.format(C3953zi.m1311pr().getString(R.string.uninstall_optimizatinon_cleaner_before_result), Integer.valueOf(i6))));
                }
                if (interfaceC0732a != null) {
                    C3953zi m1311pr = C3953zi.m1311pr();
                    String str = m1311pr.getString(R.string.deep_optimization_cleaner_result) + "\n";
                    if (j != 0) {
                        SpannableString spannableString = new SpannableString(str + bjs.this.m6622cC(j));
                        spannableString.setSpan(new ForegroundColorSpan(m1311pr.getColor(R.color.general_desc_text_color)), 0, str.length() + 1, 33);
                        spannableString.setSpan(new AbsoluteSizeSpan(C3953zi.m1311pr().getInteger(R.integer.opm_result_unit_text), true), str.length() + 1, spannableString.length(), 33);
                        spannableString.setSpan(new ForegroundColorSpan(m1311pr.getColor(R.color.text_title_color)), str.length(), spannableString.length(), 33);
                        spannableString.setSpan(new AbsoluteSizeSpan(C3953zi.m1311pr().getInteger(R.integer.opm_result_text), true), str.length(), spannableString.length() - 1, 33);
                        spannableString.setSpan(new AbsoluteSizeSpan(C3953zi.m1311pr().getInteger(R.integer.opm_result_unit_text), true), (str.length() + m6622cC.length()) - 1, spannableString.length(), 33);
                        interfaceC0732a.m12448b(list.size(), i5, spannableString);
                    } else {
                        interfaceC0732a.m12448b(list.size(), i5, null);
                    }
                }
            }
            if (bjs.byC != null) {
                bjs.byC = null;
            }
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cC */
    public String m6622cC(long j) {
        float f = (float) j;
        int i = R.string.firewall_kilobyteShort;
        if (j < 0) {
            f = 0.0f;
        }
        float f2 = f / 1024.0f;
        if (f2 >= 1000.0f) {
            f2 /= 1024.0f;
            i = R.string.firewall_megabyteShort;
        }
        if (f2 >= 1000.0f) {
            f2 /= 1024.0f;
            i = R.string.firewall_gigabyteShort;
        }
        return String.format("%.1f", Float.valueOf(f2)) + C3953zi.m1311pr().getString(i);
    }
}
