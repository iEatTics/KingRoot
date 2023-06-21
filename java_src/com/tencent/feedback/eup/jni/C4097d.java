package com.tencent.feedback.eup.jni;

import android.content.Context;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.eup.C4085b;
import com.tencent.feedback.eup.C4090e;
import com.tencent.feedback.proguard.C4140u;
import com.tencent.feedback.proguard.InterfaceC4139t;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.LinkedList;
/* renamed from: com.tencent.feedback.eup.jni.d */
/* loaded from: classes.dex */
public final class C4097d implements InterfaceC4139t {

    /* renamed from: a */
    public final String f4607a;

    /* renamed from: b */
    private String f4608b;

    /* renamed from: c */
    private File f4609c;

    /* renamed from: d */
    private long f4610d;

    /* renamed from: e */
    private int f4611e;

    /* renamed from: f */
    private int f4612f;

    /* renamed from: g */
    private Context f4613g;

    /* renamed from: a */
    static /* synthetic */ int m779a(C4097d c4097d) {
        int i = c4097d.f4612f;
        c4097d.f4612f = i + 1;
        return i;
    }

    public C4097d(Context context, String str, long j, int i, String str2, String str3) {
        this.f4609c = new File(str);
        this.f4610d = j;
        this.f4611e = i;
        this.f4613g = context;
        this.f4607a = str2;
        this.f4608b = str3;
    }

    /* renamed from: a */
    private static void m778a(String str, String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            C4073e.m1013c("rqdp{  fileNameList == null || fileNameList.length <= 0}", new Object[0]);
            return;
        }
        for (String str2 : strArr) {
            File file = new File(str, str2);
            if (file.exists() && file.canWrite()) {
                C4073e.m1015b("rqdp{  file delete} %s", file.getPath());
                file.delete();
            }
        }
    }

    @Override // com.tencent.feedback.proguard.InterfaceC4139t
    /* renamed from: d */
    public final void mo604d() {
    }

    @Override // com.tencent.feedback.proguard.InterfaceC4139t
    /* renamed from: e */
    public final void mo603e() {
        C4073e.m1017a("on query end clear", new Object[0]);
        this.f4612f = 0;
        if (this.f4609c == null || !this.f4609c.exists() || !this.f4609c.isDirectory()) {
            Object[] objArr = new Object[1];
            objArr[0] = this.f4609c == null ? "null" : this.f4609c.getAbsolutePath();
            C4073e.m1013c("rqdp{  TombFilesCleanTask end for dir not avaliable %s}", objArr);
            return;
        }
        C4073e.m1017a("rqdp{ start to find native record}", new Object[0]);
        C4090e m784a = C4096c.m784a(this.f4613g, this.f4609c.getAbsolutePath());
        if (m784a != null) {
            C4073e.m1017a("found a record insert %s", m784a.m861e());
            m784a.m862d(true);
            if (m784a.m849i() > this.f4610d) {
                C4073e.m1017a("avail add", new Object[0]);
                C4085b.m946a(this.f4613g, m784a);
            } else {
                C4073e.m1017a("unavail drop", new Object[0]);
            }
        }
        C4096c.m781a(this.f4609c.getAbsolutePath());
        C4073e.m1017a("rqdp{  start to clean} %s.* rqdp{  in dir} %s rqdp{  which time <} %s rqdp{  and max file nums should <} %s", this.f4607a, this.f4609c.getAbsolutePath(), Long.valueOf(this.f4610d), Integer.valueOf(this.f4611e));
        final LinkedList linkedList = new LinkedList();
        final int length = this.f4607a.length();
        final int length2 = this.f4608b.length();
        String[] list = this.f4609c.list(new FilenameFilter() { // from class: com.tencent.feedback.eup.jni.d.1
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                C4073e.m1015b("rqdp{  check dir} %s rqdp{  , filename} %s", file, str);
                if (str.startsWith(C4097d.this.f4607a)) {
                    C4097d.m779a(C4097d.this);
                    C4073e.m1015b("rqdp{  accept }%s", str);
                    try {
                        long parseLong = Long.parseLong(str.substring(length, str.length() - length2));
                        C4073e.m1015b("rqdp{  mRemoveBeforeDate }%d", Long.valueOf(C4097d.this.f4610d));
                        if (parseLong <= C4097d.this.f4610d) {
                            C4073e.m1015b("rqdp{  recordTime} %d rqdp{  is old}", Long.valueOf(parseLong));
                            return true;
                        }
                        C4073e.m1015b("rqdp{  newFileTimeList add} %d", Long.valueOf(parseLong));
                        linkedList.add(Long.valueOf(parseLong));
                    } catch (Throwable th) {
                        C4073e.m1013c("rqdp{  filename is not formatted ,shoud do delete! \n path:}%s", str);
                        if (C4073e.m1016a(th)) {
                            return true;
                        }
                        th.printStackTrace();
                        return true;
                    }
                }
                return false;
            }
        });
        int length3 = list != null ? list.length : 0;
        if (length3 > 0) {
            C4073e.m1015b("rqdp{  delete old num} %d", Integer.valueOf(length3));
            m778a(this.f4609c.getAbsolutePath(), list);
        }
        int i = (this.f4612f - length3) - this.f4611e;
        int size = linkedList.size();
        if (i > 0 && size > 0) {
            C4073e.m1017a("rqdp{  should delete not too old file num} %d", Integer.valueOf(i));
            Collections.sort(linkedList);
            if (size <= i) {
                i = size;
            }
            String[] strArr = new String[i];
            StringBuffer stringBuffer = new StringBuffer();
            for (int i2 = 0; i2 < linkedList.size() && i2 < strArr.length; i2++) {
                stringBuffer.append(this.f4607a);
                stringBuffer.append(linkedList.get(i2));
                stringBuffer.append(".txt");
                strArr[i2] = stringBuffer.toString();
                stringBuffer.delete(0, stringBuffer.length());
            }
            C4073e.m1015b("rqdp{  delete not too old files} %d", Integer.valueOf(strArr.length));
            m778a(this.f4609c.getAbsolutePath(), strArr);
        }
        C4140u.m598a(this.f4613g).m592b(this);
        C4073e.m1017a("rqdp{  clean end!}", new Object[0]);
    }

    @Override // com.tencent.feedback.proguard.InterfaceC4139t
    /* renamed from: f */
    public final void mo602f() {
        C4073e.m1017a("on app first run delete record file", new Object[0]);
        C4096c.m781a(this.f4609c.getAbsolutePath());
    }
}
