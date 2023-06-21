package com.kingroot.kinguser;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import cloudsdk.ext.p008kr.RootConst;
import com.kingroot.kinguser.AbstractC3567rw;
import com.kingroot.kinguser.AbstractC3570rx;
import com.kingroot.loader.common.KlConst;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.kingroot.kinguser.tb */
/* loaded from: classes.dex */
public class C3618tb extends AbstractC3572ry implements InterfaceC3610su {
    public C3618tb(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.InterfaceC3610su
    /* renamed from: a */
    public synchronized void mo2208a(C3613sx c3613sx) {
        if (c3613sx != null) {
            if (!TextUtils.isEmpty(c3613sx.f3534Bk)) {
                if (c3613sx.f3537GO != null) {
                    try {
                        insert(c3613sx.m2220L(true));
                    } catch (Throwable th) {
                    }
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3610su
    /* renamed from: a */
    public void mo2206a(C3613sx[] c3613sxArr) {
        if (c3613sxArr != null && c3613sxArr.length != 0) {
            ArrayList arrayList = new ArrayList();
            for (C3613sx c3613sx : c3613sxArr) {
                if (c3613sx != null) {
                    arrayList.add(c3613sx.m2220L(true));
                }
            }
            try {
                m2302s(arrayList);
            } catch (Throwable th) {
            }
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3610su
    /* renamed from: ju */
    public synchronized List<C3613sx> mo2201ju() {
        final ArrayList arrayList;
        arrayList = new ArrayList();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("independent");
        stringBuffer.append("=");
        stringBuffer.append(0);
        m2304a(null, stringBuffer.toString(), null, null, null, null, new AbstractC3567rw.InterfaceC3568a() { // from class: com.kingroot.kinguser.tb.1
            @Override // com.kingroot.kinguser.AbstractC3567rw.InterfaceC3568a
            /* renamed from: c */
            public void mo1620c(Cursor cursor) {
                C3613sx.m2216a((List<C3613sx>) arrayList, cursor, true);
            }
        });
        return arrayList;
    }

    @Override // com.kingroot.kinguser.InterfaceC3610su
    /* renamed from: aS */
    public synchronized List<C3613sx> mo2205aS(int i) {
        final ArrayList arrayList;
        arrayList = new ArrayList();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(RootConst.KEY_EMID);
        stringBuffer.append("=");
        stringBuffer.append(i);
        m2304a(null, stringBuffer.toString(), null, null, null, null, new AbstractC3567rw.InterfaceC3568a() { // from class: com.kingroot.kinguser.tb.2
            @Override // com.kingroot.kinguser.AbstractC3567rw.InterfaceC3568a
            /* renamed from: c */
            public void mo1620c(Cursor cursor) {
                C3613sx.m2216a((List<C3613sx>) arrayList, cursor, true);
            }
        });
        return arrayList;
    }

    @Override // com.kingroot.kinguser.InterfaceC3610su
    public synchronized void clear() {
        clear(false);
    }

    @Override // com.kingroot.kinguser.InterfaceC3610su
    public void clear(boolean z) {
        if (z) {
            m2303b((String) null, (String[]) null);
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("independent");
        stringBuffer.append("=");
        stringBuffer.append(0);
        m2303b(stringBuffer.toString(), (String[]) null);
    }

    @Override // com.kingroot.kinguser.InterfaceC3610su
    /* renamed from: c */
    public void mo2202c(int[] iArr) {
        if (iArr != null) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < iArr.length; i++) {
                sb.append(RootConst.KEY_EMID);
                sb.append("=");
                sb.append(iArr[i]);
                if (i != iArr.length - 1) {
                    sb.append(" or ");
                }
            }
            m2303b(sb.toString(), (String[]) null);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3572ry
    /* renamed from: jg */
    protected String mo1625jg() {
        return "ss.db";
    }

    @Override // com.kingroot.kinguser.AbstractC3572ry
    /* renamed from: jh */
    protected int mo1624jh() {
        return 2;
    }

    @Override // com.kingroot.kinguser.AbstractC3572ry
    /* renamed from: ji */
    protected AbstractC3570rx.C3571a mo1623ji() {
        return new AbstractC3570rx.C3571a("statistics", C3611sv.COLUMNS, C3611sv.f3532GK);
    }

    @Override // com.kingroot.kinguser.InterfaceC3610su
    /* renamed from: b */
    public List<C3613sx> mo2204b(int i, int i2, String str) {
        final ArrayList arrayList = new ArrayList();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(RootConst.KEY_EMID);
        stringBuffer.append("=");
        stringBuffer.append(i);
        stringBuffer.append(" and ");
        stringBuffer.append(KlConst.PLUGIN_DATA_DIR_NAME + i2);
        stringBuffer.append("=");
        stringBuffer.append("'");
        stringBuffer.append(C3613sx.m2215cO(str));
        stringBuffer.append("'");
        m2304a(null, stringBuffer.toString(), null, null, null, null, new AbstractC3567rw.InterfaceC3568a() { // from class: com.kingroot.kinguser.tb.3
            @Override // com.kingroot.kinguser.AbstractC3567rw.InterfaceC3568a
            /* renamed from: c */
            public void mo1620c(Cursor cursor) {
                C3613sx.m2216a((List<C3613sx>) arrayList, cursor, true);
            }
        });
        return arrayList;
    }

    /* renamed from: a */
    private synchronized List<C3613sx> m2211a(int i, String[] strArr) {
        ArrayList arrayList;
        try {
            String m2203b = m2203b(i, strArr);
            final ArrayList arrayList2 = new ArrayList();
            m2304a(null, m2203b, null, null, null, null, new AbstractC3567rw.InterfaceC3568a() { // from class: com.kingroot.kinguser.tb.4
                @Override // com.kingroot.kinguser.AbstractC3567rw.InterfaceC3568a
                /* renamed from: c */
                public void mo1620c(Cursor cursor) {
                    C3613sx.m2216a((List<C3613sx>) arrayList2, cursor, true);
                }
            });
            arrayList = arrayList2;
        } catch (Throwable th) {
            arrayList = null;
        }
        return arrayList;
    }

    /* renamed from: b */
    private String m2203b(int i, String[] strArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(RootConst.KEY_EMID);
        stringBuffer.append("=");
        stringBuffer.append(i);
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (!TextUtils.isEmpty(strArr[i2])) {
                stringBuffer.append(" and ");
                stringBuffer.append(KlConst.PLUGIN_DATA_DIR_NAME + i2);
                stringBuffer.append("=");
                stringBuffer.append("'");
                stringBuffer.append(C3613sx.m2215cO(strArr[i2]));
                stringBuffer.append("'");
            }
        }
        return stringBuffer.toString();
    }

    @Override // com.kingroot.kinguser.InterfaceC3610su
    /* renamed from: a */
    public synchronized void mo2209a(int i, String[] strArr, C3613sx c3613sx) {
        if (strArr != null && c3613sx != null) {
            try {
                m2207a(m2203b(i, strArr), c3613sx);
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    private void m2207a(String str, C3613sx c3613sx) {
        try {
            final AtomicReference atomicReference = new AtomicReference();
            atomicReference.set(0);
            m2304a(null, str, null, null, null, null, new AbstractC3567rw.InterfaceC3568a() { // from class: com.kingroot.kinguser.tb.5
                @Override // com.kingroot.kinguser.AbstractC3567rw.InterfaceC3568a
                /* renamed from: c */
                public void mo1620c(Cursor cursor) {
                    if (cursor != null) {
                        atomicReference.set(Integer.valueOf(cursor.getCount()));
                    }
                }
            });
            if (((Integer) atomicReference.get()).intValue() > 0) {
                m2306a(c3613sx.m2220L(true), str, (String[]) null);
            } else {
                insert(c3613sx.m2220L(true));
            }
        } catch (Throwable th) {
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3610su
    /* renamed from: a */
    public synchronized void mo2210a(int i, String[] strArr, int i2, int i3, C3613sx c3613sx) {
        if (strArr != null) {
            try {
                List<C3613sx> m2211a = m2211a(i, strArr);
                if (m2211a == null || m2211a.size() < 1) {
                    if (c3613sx != null) {
                        mo2208a(c3613sx);
                    }
                } else {
                    for (C3613sx c3613sx2 : m2211a) {
                        if (c3613sx2 != null && c3613sx2.mId >= 0) {
                            c3613sx2.f3537GO[i2] = String.valueOf(Integer.parseInt(c3613sx2.f3537GO[i2]) + i3);
                            m2207a(String.valueOf("_id") + "=" + c3613sx2.mId, c3613sx2);
                        }
                    }
                }
            } catch (Throwable th) {
            }
        }
    }
}
