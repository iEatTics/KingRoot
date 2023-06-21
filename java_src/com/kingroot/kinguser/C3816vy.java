package com.kingroot.kinguser;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.network.statics.ActionStatsID;
import com.kingroot.kinguser.AbstractC3567rw;
import com.kingroot.kinguser.AbstractC3570rx;
import com.kingroot.loader.common.KlConst;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.kingroot.kinguser.vy */
/* loaded from: classes.dex */
public class C3816vy extends AbstractC3572ry implements InterfaceC3815vx {

    /* renamed from: Mj */
    private static final String[] f3838Mj = {"time_seq", "data_type", KlConst.PLUGIN_DATA_DIR_NAME};

    /* renamed from: GK */
    private static final String[] f3837GK = {"integer", "integer", "text"};

    public C3816vy(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.AbstractC3572ry
    /* renamed from: jg */
    protected String mo1625jg() {
        return "perform.db";
    }

    @Override // com.kingroot.kinguser.AbstractC3572ry
    /* renamed from: jh */
    protected int mo1624jh() {
        return 1;
    }

    @Override // com.kingroot.kinguser.AbstractC3572ry
    /* renamed from: ji */
    protected AbstractC3570rx.C3571a mo1623ji() {
        return new AbstractC3570rx.C3571a("perform", f3838Mj, f3837GK);
    }

    @Override // com.kingroot.kinguser.InterfaceC3815vx
    /* renamed from: w */
    public synchronized void mo1622w(int i, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("time_seq", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("data_type", Integer.valueOf(i));
        contentValues.put(KlConst.PLUGIN_DATA_DIR_NAME, str);
        insert(contentValues);
    }

    @Override // com.kingroot.kinguser.InterfaceC3815vx
    /* renamed from: x */
    public synchronized void mo1621x(int i, String str) {
        if (!TextUtils.isEmpty(str)) {
            m2303b("data_type=" + i + " and " + KlConst.PLUGIN_DATA_DIR_NAME + "='" + str + "'", (String[]) null);
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3815vx
    /* renamed from: H */
    public synchronized List<C2854da> mo1631H(long j) {
        final ArrayList arrayList;
        arrayList = new ArrayList();
        m2304a(null, "time_seq<" + ((j / 86400000) * 24 * 3600 * 1000), null, null, null, null, new AbstractC3567rw.InterfaceC3568a() { // from class: com.kingroot.kinguser.vy.1
            @Override // com.kingroot.kinguser.AbstractC3567rw.InterfaceC3568a
            /* renamed from: c */
            public void mo1620c(Cursor cursor) {
                C3816vy.this.m1627a(arrayList, cursor);
            }
        });
        return arrayList;
    }

    @Override // com.kingroot.kinguser.InterfaceC3815vx
    /* renamed from: I */
    public synchronized void mo1630I(long j) {
        m2303b("time_seq<" + ((j / 86400000) * 24 * 3600 * 1000), (String[]) null);
    }

    @Override // com.kingroot.kinguser.InterfaceC3815vx
    /* renamed from: a */
    public synchronized void mo1629a(long j, int i, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("time_seq", Long.valueOf(j));
        contentValues.put("data_type", Integer.valueOf(i));
        contentValues.put(KlConst.PLUGIN_DATA_DIR_NAME, str);
        long j2 = (j / 86400000) * 24 * 3600 * 1000;
        m2306a(contentValues, "time_seq>" + j2 + " and time_seq<" + (j2 + 86400000) + " and data_type=" + i, (String[]) null);
    }

    @Override // com.kingroot.kinguser.InterfaceC3815vx
    /* renamed from: b */
    public synchronized List<String> mo1626b(long j, int i) {
        long j2;
        final ArrayList arrayList;
        arrayList = new ArrayList();
        m2304a(new String[]{KlConst.PLUGIN_DATA_DIR_NAME}, "time_seq>" + ((j / 86400000) * 24 * 3600 * 1000) + " and time_seq<" + (j2 + 86400000) + " and data_type=" + i, null, null, null, null, new AbstractC3567rw.InterfaceC3568a() { // from class: com.kingroot.kinguser.vy.2
            @Override // com.kingroot.kinguser.AbstractC3567rw.InterfaceC3568a
            /* renamed from: c */
            public void mo1620c(Cursor cursor) {
                if (cursor != null && cursor.moveToFirst()) {
                    try {
                        int columnIndexOrThrow = cursor.getColumnIndexOrThrow(KlConst.PLUGIN_DATA_DIR_NAME);
                        do {
                            try {
                                arrayList.add(cursor.getString(columnIndexOrThrow));
                            } catch (Throwable th) {
                            }
                        } while (cursor.moveToNext());
                    } catch (Throwable th2) {
                    }
                }
            }
        });
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m1627a(List<C2854da> list, Cursor cursor) {
        if (cursor != null && cursor.moveToFirst()) {
            try {
                int columnIndexOrThrow = cursor.getColumnIndexOrThrow("time_seq");
                int columnIndexOrThrow2 = cursor.getColumnIndexOrThrow("data_type");
                int columnIndexOrThrow3 = cursor.getColumnIndexOrThrow(KlConst.PLUGIN_DATA_DIR_NAME);
                HashMap hashMap = new HashMap();
                do {
                    try {
                        long j = cursor.getLong(columnIndexOrThrow) / 86400000;
                        C3814vw c3814vw = (C3814vw) hashMap.get(Long.valueOf(j));
                        if (c3814vw == null) {
                            c3814vw = new C3814vw();
                            c3814vw.m1658D(j);
                            hashMap.put(Long.valueOf(j), c3814vw);
                        }
                        int i = cursor.getInt(columnIndexOrThrow2);
                        String string = cursor.getString(columnIndexOrThrow3);
                        switch (i) {
                            case 1:
                                c3814vw.m1661A(Long.parseLong(string));
                                break;
                            case 2:
                                c3814vw.m1660B(Long.parseLong(string));
                                break;
                            case 3:
                                c3814vw.m1659C(Long.parseLong(string));
                                break;
                            case 4:
                                c3814vw.m1651a(Double.parseDouble(string));
                                break;
                            case 5:
                                c3814vw.m1641dl(string);
                                break;
                            case 6:
                                c3814vw.m1645bw(Integer.parseInt(string));
                                break;
                            case 7:
                                c3814vw.m1644bx(Integer.parseInt(string));
                                break;
                            case 8:
                                c3814vw.m1642bz(Integer.parseInt(string));
                                break;
                            case 9:
                                c3814vw.m1650bA(Integer.parseInt(string));
                                break;
                            case 10:
                                c3814vw.m1654G(Long.parseLong(string));
                                break;
                            case 11:
                                String[] split = string.split(";");
                                c3814vw.m1640dm(split[0]);
                                c3814vw.m1656F(Long.parseLong(split[1]));
                                break;
                            case 12:
                                c3814vw.m1647bu(Integer.parseInt(string));
                                break;
                            case 13:
                                c3814vw.m1646bv(Integer.parseInt(string));
                                break;
                            case 14:
                                c3814vw.m1657E(Long.parseLong(string));
                                break;
                            case 15:
                                c3814vw.m1643by(Integer.parseInt(string));
                                break;
                            case 16:
                                c3814vw.m1648bt(Integer.parseInt(string));
                                break;
                            case 17:
                                c3814vw.m1649bs(Integer.parseInt(string));
                                break;
                        }
                    } catch (Throwable th) {
                    }
                } while (cursor.moveToNext());
                for (C3814vw c3814vw2 : hashMap.values()) {
                    C2854da c2854da = new C2854da();
                    c2854da.f2416mO = C3612sw.m2227a(C3489qs.f3433EZ, 73, new String[]{KApplication.m13443ia()}, c3814vw2.m1632mO());
                    c2854da.f2414id = ActionStatsID.EMID_KingCom_Process_Performance_Report;
                    c2854da.desc = "1";
                    c2854da.f2413fY = (int) (c3814vw2.m1639mH() * 24 * 3600);
                    list.add(c2854da);
                }
            } catch (Throwable th2) {
            }
        }
    }
}
