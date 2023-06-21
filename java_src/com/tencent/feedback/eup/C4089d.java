package com.tencent.feedback.eup;

import android.content.Context;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.proguard.C4116R;
import com.tencent.feedback.proguard.C4119a;
import com.tencent.feedback.proguard.C4126h;
import com.tencent.feedback.upload.InterfaceC4158d;
import java.util.Iterator;
/* renamed from: com.tencent.feedback.eup.d */
/* loaded from: classes.dex */
public final class C4089d implements InterfaceC4158d {

    /* renamed from: a */
    private Context f4539a;

    public C4089d(Context context) {
        this.f4539a = context;
    }

    @Override // com.tencent.feedback.upload.InterfaceC4158d
    /* renamed from: a */
    public final void mo527a(int i, byte[] bArr, boolean z) {
        if (i == 510 && bArr != null) {
            try {
                C4091f m808l = C4091f.m808l();
                if (m808l == null) {
                    C4073e.m1013c("rqdp{  imposiable handle response ,but no eup instance!}", new Object[0]);
                    return;
                }
                C4116R c4116r = new C4116R();
                c4116r.mo667a(new C4126h(bArr));
                CrashStrategyBean m803q = m808l.m803q();
                if (m803q == null) {
                    CrashStrategyBean m804p = m808l.m804p();
                    if (m804p == null) {
                        C4073e.m1015b("rqdp{  init eup sStrategy by default}", new Object[0]);
                        m803q = new CrashStrategyBean();
                    } else {
                        C4073e.m1015b("rqdp{  init eup sStrategy by uStrategy}", new Object[0]);
                        m803q = m804p.m13766clone();
                    }
                    m808l.m814a(m803q);
                }
                if (m914a(c4116r, m803q) && z) {
                    C4073e.m1015b("rqdp{  save eup strategy}", new Object[0]);
                    C4119a.m757a(this.f4539a, i, bArr);
                }
                C4073e.m1015b("rqdp{  crashStrategy}[%s]", c4116r);
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                C4073e.m1012d("rqdp{  process crash strategy error} %s", th.toString());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0136 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0113 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean m914a(C4116R c4116r, CrashStrategyBean crashStrategyBean) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        Exception e;
        if (c4116r == null || crashStrategyBean == null || c4116r.f4692b == null || c4116r.f4692b.size() == 0) {
            return false;
        }
        Iterator<String> it = c4116r.f4692b.keySet().iterator();
        while (it.hasNext()) {
            C4073e.m1015b("key %s", it.next());
        }
        String str = c4116r.f4692b.get("B11");
        String str2 = c4116r.f4692b.get("B12");
        String str3 = c4116r.f4692b.get("B13");
        String str4 = c4116r.f4692b.get("B21");
        String str5 = c4116r.f4692b.get("B22");
        String str6 = c4116r.f4692b.get(60);
        String str7 = c4116r.f4692b.get(50);
        if (str != null) {
            boolean z7 = !str.equals("0");
            C4073e.m1015b("%b", Boolean.valueOf(z7));
            z = z7;
        } else {
            z = true;
        }
        if (str2 != null) {
            boolean z8 = !str2.equals("0");
            C4073e.m1015b("%b", Boolean.valueOf(z8));
            z2 = z8;
        } else {
            z2 = false;
        }
        if (str3 != null) {
            boolean z9 = !str3.equals("0");
            C4073e.m1015b("%b", Boolean.valueOf(z9));
            z3 = z9;
        } else {
            z3 = false;
        }
        if (str4 != null) {
            boolean z10 = !str4.equals("0");
            if (crashStrategyBean.isMerged() != z10) {
                C4073e.m1015b("rqdp{  is merged changed} %b", Boolean.valueOf(z10));
                crashStrategyBean.setMerged(z10);
                z4 = true;
                if (str5 != null) {
                    boolean z11 = !str5.equals("0");
                    if (crashStrategyBean.isAssertOn() != z11) {
                        crashStrategyBean.setAssertEnable(z11);
                        C4073e.m1015b("rqdp{ Assert enable changed: } %s", Boolean.valueOf(z11));
                        z5 = true;
                        if (str6 != null) {
                            try {
                                int intValue = Integer.valueOf(str6).intValue();
                                if (crashStrategyBean.getAssertTaskInterval() != intValue) {
                                    crashStrategyBean.setAssertTaskInterval(intValue);
                                    try {
                                        C4073e.m1015b("rqdp{ Assert task interval changed: } %s", Integer.valueOf(intValue));
                                        z5 = true;
                                    } catch (Exception e2) {
                                        e = e2;
                                        z6 = true;
                                        if (!C4073e.m1016a(e)) {
                                            e.printStackTrace();
                                        }
                                        z5 = z6;
                                        if (str7 != null) {
                                        }
                                        if (crashStrategyBean.isOpenANR() != z) {
                                        }
                                        if (crashStrategyBean.isBroadcast() != z2) {
                                        }
                                        if (crashStrategyBean.isReceiveBroadcast() != z3) {
                                        }
                                    }
                                }
                            } catch (Exception e3) {
                                z6 = z5;
                                e = e3;
                            }
                        }
                        if (str7 != null) {
                            try {
                                int intValue2 = Integer.valueOf(str7).intValue();
                                if (crashStrategyBean.getAssertLimitCount() != intValue2) {
                                    crashStrategyBean.setAssertLimitCount(intValue2);
                                    try {
                                        C4073e.m1015b("rqdp{ Assert task interval changed: } %s", Integer.valueOf(intValue2));
                                        z5 = true;
                                    } catch (Exception e4) {
                                        e = e4;
                                        z5 = true;
                                        if (!C4073e.m1016a(e)) {
                                            e.printStackTrace();
                                        }
                                        if (crashStrategyBean.isOpenANR() != z) {
                                        }
                                        if (crashStrategyBean.isBroadcast() != z2) {
                                        }
                                        if (crashStrategyBean.isReceiveBroadcast() != z3) {
                                        }
                                    }
                                }
                            } catch (Exception e5) {
                                e = e5;
                            }
                        }
                        if (crashStrategyBean.isOpenANR() != z) {
                            crashStrategyBean.setOpenANR(z);
                            C4073e.m1015b("rqdp{ anr changed: } %b", Boolean.valueOf(z));
                            z5 = true;
                        }
                        if (crashStrategyBean.isBroadcast() != z2) {
                            crashStrategyBean.setBroadcast(z2);
                            C4073e.m1015b("rqdp{ broad changed: } %b", Boolean.valueOf(z2));
                            z5 = true;
                        }
                        if (crashStrategyBean.isReceiveBroadcast() != z3) {
                            crashStrategyBean.setReceiveBroadcast(z3);
                            C4073e.m1015b("rqdp{ receiver changed: } %b", Boolean.valueOf(z3));
                            return true;
                        }
                        return z5;
                    }
                }
                z5 = z4;
                if (str6 != null) {
                }
                if (str7 != null) {
                }
                if (crashStrategyBean.isOpenANR() != z) {
                }
                if (crashStrategyBean.isBroadcast() != z2) {
                }
                if (crashStrategyBean.isReceiveBroadcast() != z3) {
                }
            }
        }
        z4 = false;
        if (str5 != null) {
        }
        z5 = z4;
        if (str6 != null) {
        }
        if (str7 != null) {
        }
        if (crashStrategyBean.isOpenANR() != z) {
        }
        if (crashStrategyBean.isBroadcast() != z2) {
        }
        if (crashStrategyBean.isReceiveBroadcast() != z3) {
        }
    }
}
