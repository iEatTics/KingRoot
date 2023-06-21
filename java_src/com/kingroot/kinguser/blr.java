package com.kingroot.kinguser;

import android.content.Context;
import android.support.p004v4.view.InputDeviceCompat;
import android.support.p004v4.view.PointerIconCompat;
import android.text.TextUtils;
import cloudsdk.CloudSdk;
import com.kingroot.kinguser.bmn;
import com.kingx.cloudsdk.C4014aa;
import com.kingx.cloudsdk.C4029cf;
import com.kingx.cloudsdk.C4050v;
import com.kingx.cloudsdk.C4051w;
import com.kingx.cloudsdk.C4052x;
import com.kingx.cloudsdk.C4053y;
import com.kingx.cloudsdk.C4054z;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class blr {
    private static blr bAk;
    private String bAh = "";
    private String bAi = "";
    private boolean bAj = false;

    public static blr afu() {
        if (bAk == null) {
            synchronized (blr.class) {
                if (bAk == null) {
                    bAk = new blr();
                }
            }
        }
        return bAk;
    }

    /* renamed from: g */
    public final synchronized String m6466g() {
        C4029cf c4029cf;
        if (TextUtils.isEmpty(this.bAi)) {
            this.bAi = bmn.m6367g();
            if (TextUtils.isEmpty(this.bAi)) {
                this.bAi = bmn.m6367g();
                if (TextUtils.isEmpty(this.bAi)) {
                    Context context = CloudSdk.getInstance().getContext();
                    AtomicReference atomicReference = new AtomicReference();
                    if (blt.m6457c(context, atomicReference) == 0 && (c4029cf = (C4029cf) atomicReference.get()) != null) {
                        this.bAi = c4029cf.m1195g();
                        if (!TextUtils.isEmpty(this.bAi)) {
                            bmn.m6376b(this.bAi);
                        }
                    }
                }
                String str = this.bAi;
            }
        }
        return this.bAi;
    }

    /* renamed from: h */
    public final synchronized String m6465h() {
        if (TextUtils.isEmpty(this.bAh)) {
            this.bAh = bmn.m6366h();
            if (TextUtils.isEmpty(this.bAh)) {
                this.bAh = bmn.m6366h();
                if (TextUtils.isEmpty(this.bAh)) {
                    AtomicReference atomicReference = new AtomicReference();
                    if (blt.m6458b(CloudSdk.getInstance().getContext(), atomicReference) == 0 && atomicReference.get() != null) {
                        this.bAh = ((C4053y) atomicReference.get()).f4377dH;
                        if (!TextUtils.isEmpty(this.bAh)) {
                            bmn.m6370c(this.bAh);
                        }
                    }
                }
                String str = this.bAh;
            }
        }
        m6469aw();
        return this.bAh;
    }

    public static C4050v afv() {
        Context context = CloudSdk.getInstance().getContext();
        String m6363i = bmn.m6363i(context);
        String[] m6386bC = bmk.m6386bC(context);
        C4050v c4050v = new C4050v();
        c4050v.f4334co = bmn.m6375bD(context);
        c4050v.f4335cp = bmn.m6365h(context);
        if (m6363i == null) {
            m6363i = "";
        }
        c4050v.f4336cq = m6363i;
        c4050v.f4337cr = "0";
        c4050v.f4338cs = "0";
        c4050v.f4339ct = 39;
        c4050v.f4340cu = "F7E418FB9C74DF11";
        c4050v.f4341cv = 801;
        c4050v.f4342cw = bmu.f1754uL;
        c4050v.f4343cx = 2;
        c4050v.f4344cy = 201;
        if ((context.getApplicationInfo().flags & 1) == 0) {
            c4050v.f4345cz = false;
        } else {
            c4050v.f4345cz = true;
        }
        c4050v.f4350de = bll.m6490b(context);
        c4050v.f4308cA = context.getPackageName();
        c4050v.f4309cB = bmu.m6309mo(bmn.afR());
        c4050v.f4310cC = bmn.m6378V();
        c4050v.f4311cD = bmu.m6309mo(bmn.m6379B(context));
        c4050v.f4312cE = (short) 2052;
        c4050v.f4313cF = bmn.m6369ck() ? 2 : 1;
        c4050v.f4314cG = m6386bC[2];
        c4050v.f4315cH = bmk.m6387Q();
        c4050v.f4316cI = Runtime.getRuntime().availableProcessors();
        c4050v.f4317cJ = m6386bC[3];
        c4050v.f4318cK = bmk.m6388P();
        c4050v.f4319cL = bmk.afJ();
        bmn.C2511a c2511a = new bmn.C2511a();
        bmn.m6377a(c2511a);
        c4050v.f4320cM = c2511a.bCc;
        c4050v.f4326cS = bmu.m6309mo(bmn.afS());
        c4050v.f4321cN = bmu.m6309mo(bmn.afP());
        c4050v.f4322cO = bmu.m6309mo(bmn.afN());
        c4050v.f4323cP = bmu.m6309mo(bmn.afO());
        c4050v.f4327cT = bmu.m6309mo(bmn.afU());
        c4050v.f4360do = bmu.m6309mo(bmn.afT());
        c4050v.version = blo.afq();
        c4050v.f4349dd = 1;
        c4050v.f4358dm = blq.get("gsm.version.baseband");
        c4050v.f4355dj = bmu.m6309mo(bmu.m6307mq(blp.m6471r()));
        c4050v.f4361dp = bmu.m6309mo(bmu.m6307mq(bmn.m6362s()));
        return c4050v;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    /* renamed from: eo */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C4014aa m6467eo(boolean z) {
        int i = 2;
        C4014aa c4014aa = new C4014aa();
        c4014aa.f4135dN = "";
        c4014aa.f4130cv = 801;
        byte m6326bJ = bmu.m6326bJ(CloudSdk.getInstance().getContext());
        if (m6326bJ != -1) {
            if (m6326bJ == 1) {
                i = 3;
            } else if (m6326bJ != 2) {
                if (m6326bJ == 0) {
                    i = 1;
                }
            }
            c4014aa.f4132dK = i;
            c4014aa.f4133dL = bmu.m6320ep(true);
            if (!z) {
                c4014aa.f4131dH = afu().m6465h();
            } else {
                c4014aa.f4131dH = bmn.m6366h();
            }
            return c4014aa;
        }
        i = 0;
        c4014aa.f4132dK = i;
        c4014aa.f4133dL = bmu.m6320ep(true);
        if (!z) {
        }
        return c4014aa;
    }

    public static C4051w afw() {
        Context context = CloudSdk.getInstance().getContext();
        C4051w c4051w = new C4051w();
        c4051w.m1178c(4);
        c4051w.m1179O(0);
        c4051w.m1177d(0);
        c4051w.m1176jW(1);
        boolean z = (context.getApplicationInfo().flags & 1) != 0;
        boolean m6369ck = bmn.m6369ck();
        String[] m6386bC = bmk.m6386bC(context);
        ArrayList<byte[]> arrayList = new ArrayList<>();
        arrayList.add(m6468c(1003, bmu.m6309mo(bmn.m6371bH(context))).toByteArray());
        arrayList.add(m6468c(1001, bmu.m6309mo(bmn.m6365h(context))).toByteArray());
        arrayList.add(m6468c(1004, bmu.m6309mo(bmn.m6363i(context))).toByteArray());
        arrayList.add(m6468c(PointerIconCompat.TYPE_CELL, 39).toByteArray());
        arrayList.add(m6468c(PointerIconCompat.TYPE_ZOOM_OUT, "").toByteArray());
        arrayList.add(m6468c(1002, 801).toByteArray());
        arrayList.add(m6468c(PointerIconCompat.TYPE_CROSSHAIR, bmu.f1754uL).toByteArray());
        arrayList.add(m6468c(PointerIconCompat.TYPE_NO_DROP, 2).toByteArray());
        arrayList.add(m6468c(PointerIconCompat.TYPE_ALL_SCROLL, 201).toByteArray());
        arrayList.add(m6468c(PointerIconCompat.TYPE_TEXT, Boolean.valueOf(z)).toByteArray());
        arrayList.add(m6468c(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, bmu.m6309mo(context.getPackageName())).toByteArray());
        arrayList.add(m6468c(PointerIconCompat.TYPE_VERTICAL_TEXT, bmu.m6309mo(bmn.afR())).toByteArray());
        arrayList.add(m6468c(PointerIconCompat.TYPE_ALIAS, Integer.valueOf(bmn.m6378V())).toByteArray());
        arrayList.add(m6468c(PointerIconCompat.TYPE_ZOOM_IN, (short) 2025).toByteArray());
        arrayList.add(m6468c(1005, bmu.m6309mo(blo.afq())).toByteArray());
        arrayList.add(m6468c(PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, Integer.valueOf(blo.afr())).toByteArray());
        arrayList.add(m6468c(PointerIconCompat.TYPE_GRABBING, bmu.m6309mo(bmu.m6307mq(blp.m6471r()))).toByteArray());
        arrayList.add(m6468c(1022, "F7E418FB9C74DF11").toByteArray());
        arrayList.add(m6468c(PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW, "").toByteArray());
        arrayList.add(m6468c(PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW, bmu.m6309mo(bll.m6490b(context))).toByteArray());
        arrayList.add(m6468c(PointerIconCompat.TYPE_GRAB, bmu.m6309mo(bmn.afS())).toByteArray());
        arrayList.add(m6468c(1023, Long.valueOf(bmk.m6388P())).toByteArray());
        arrayList.add(m6468c(1024, bmu.m6309mo(m6386bC[3])).toByteArray());
        arrayList.add(m6468c(InputDeviceCompat.SOURCE_GAMEPAD, bmu.m6309mo(bmn.afU())).toByteArray());
        arrayList.add(m6468c(1026, bmu.m6309mo(bmn.afT())).toByteArray());
        arrayList.add(m6468c(1027, Integer.valueOf(m6369ck ? 2 : 1)).toByteArray());
        arrayList.add(m6468c(1028, bmu.m6309mo(bmn.afP())).toByteArray());
        arrayList.add(m6468c(1029, bmu.m6309mo(bmn.m6362s())).toByteArray());
        arrayList.add(m6468c(2201, Integer.valueOf(blo.afs())).toByteArray());
        arrayList.add(m6468c(2202, Integer.valueOf(blo.aft())).toByteArray());
        c4051w.m1180A(arrayList);
        return c4051w;
    }

    /* renamed from: c */
    private static C4052x m6468c(int i, Object obj) {
        C4052x c4052x = new C4052x();
        c4052x.m1169jX(i);
        if (obj instanceof Integer) {
            c4052x.m1175P(1);
            c4052x.m1168jY(((Integer) obj).intValue());
        } else if (obj instanceof String) {
            c4052x.m1175P(3);
            c4052x.m1173a(obj.toString());
        } else if (obj instanceof Short) {
            c4052x.m1175P(6);
            c4052x.m1170c(((Short) obj).shortValue());
        } else if (obj instanceof Long) {
            c4052x.m1175P(2);
            c4052x.m1174a(((Long) obj).longValue());
        } else if (obj instanceof Boolean) {
            c4052x.m1175P(5);
            c4052x.m1172a(((Boolean) obj).booleanValue());
        } else if (obj instanceof Byte[]) {
            c4052x.m1175P(4);
            c4052x.m1171a((byte[]) obj);
        }
        return c4052x;
    }

    /* renamed from: aw */
    private synchronized void m6469aw() {
        String m6364i = bmn.m6364i();
        String valueOf = String.valueOf(801);
        if (!TextUtils.isEmpty(this.bAh) && !this.bAj) {
            this.bAj = true;
            if (TextUtils.isEmpty(m6364i) || !m6364i.equalsIgnoreCase(valueOf)) {
                AtomicReference atomicReference = new AtomicReference();
                if ((blt.m6459a(CloudSdk.getInstance().getContext(), (String) null, atomicReference) == 0 ? atomicReference.get() != null && ((C4054z) atomicReference.get()).f4379dJ == 0 : false) && !TextUtils.isEmpty(valueOf)) {
                    bmn.m6368d(valueOf);
                }
            }
            this.bAj = false;
        }
    }
}
