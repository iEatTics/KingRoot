package com.tencent.feedback.eup.jni;

import android.content.Context;
import com.tencent.feedback.common.C4072d;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.proguard.C4119a;
import com.tencent.feedback.proguard.C4132m;
import com.tencent.feedback.proguard.C4135p;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.tencent.feedback.eup.jni.a */
/* loaded from: classes.dex */
public final class RunnableC4093a implements Runnable {

    /* renamed from: a */
    private Context f4599a;

    /* renamed from: b */
    private String f4600b;

    /* renamed from: c */
    private List<File> f4601c;

    public RunnableC4093a(Context context, String str, List<File> list) {
        this.f4599a = context;
        this.f4600b = str;
        this.f4601c = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        File[] listFiles;
        ArrayList<File> arrayList = new ArrayList();
        if (this.f4601c != null && this.f4601c.size() > 0) {
            arrayList.addAll(this.f4601c);
        }
        File file = new File(this.f4600b);
        if (file.exists() && file.isDirectory() && (listFiles = file.listFiles(new FilenameFilter(this) { // from class: com.tencent.feedback.eup.jni.a.1
            @Override // java.io.FilenameFilter
            public final boolean accept(File file2, String str) {
                return str.endsWith("so");
            }
        })) != null) {
            for (File file2 : listFiles) {
                if (!arrayList.contains(file2)) {
                    arrayList.add(file2);
                }
            }
        }
        List<C4135p> m653a = C4132m.m653a(this.f4599a, (String) null, 1, -1);
        ArrayList arrayList2 = new ArrayList();
        for (File file3 : arrayList) {
            if (m653a != null) {
                Iterator<C4135p> it = m653a.iterator();
                while (it.hasNext()) {
                    C4135p next = it.next();
                    if (file3.getAbsolutePath().equals(next.m631a()) && file3.lastModified() == next.m627b() && file3.length() == next.m624c() && next.m621d() != null) {
                        it.remove();
                        arrayList2.add(next);
                        C4073e.m1015b("rqdp{  BufFB existed n:}%s ,ar:%s, md:%s ,ut:%d", next.m631a(), next.m619f(), next.m621d(), Long.valueOf(file3.lastModified()));
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (!z) {
                long currentTimeMillis = System.currentTimeMillis();
                String m732b = C4119a.m732b(file3.getAbsolutePath());
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                if (m732b != null) {
                    C4135p c4135p = new C4135p();
                    c4135p.m630a(1);
                    c4135p.m628a(file3.getAbsolutePath());
                    StringBuilder sb = new StringBuilder();
                    C4072d.m1041a(this.f4599a);
                    c4135p.m622c(sb.append(C4072d.m1036d()).toString());
                    c4135p.m623c(file3.length());
                    c4135p.m626b(file3.lastModified());
                    c4135p.m625b(m732b);
                    C4073e.m1015b("rqdp{  BufFB new }n:%s , ar:%s , md:%s , cs:%d", c4135p.m631a(), c4135p.m619f(), c4135p.m621d(), Long.valueOf(currentTimeMillis2));
                    arrayList2.add(c4135p);
                } else {
                    C4073e.m1015b("rqdp{  Error BufFB md fail! pth:}%s , rqdp{  cs:}%d", file3.getAbsolutePath(), Long.valueOf(currentTimeMillis2));
                }
            }
        }
        C4073e.m1015b("rqdp{  LBFTask del n: }%d", Integer.valueOf(C4132m.m654a(this.f4599a, 1)));
        if (arrayList2.size() > 0) {
            C4073e.m1015b("rqdp{  LBFTask ins n: }%d", Integer.valueOf(C4132m.m636c(this.f4599a, arrayList2)));
        }
    }
}
