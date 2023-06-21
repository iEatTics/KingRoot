package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.kinguser.C3199ix;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.zip.Adler32;
import java.util.zip.CheckedInputStream;
/* renamed from: com.kingroot.kinguser.jw */
/* loaded from: classes.dex */
public final class C3230jw {

    /* renamed from: tk */
    private InterfaceC3195it f2903tk;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.jw$a */
    /* loaded from: classes.dex */
    public static class C3231a {

        /* renamed from: cZ */
        String f2904cZ;

        /* renamed from: da */
        String f2905da;

        /* renamed from: tl */
        String f2906tl;

        /* renamed from: tm */
        int f2907tm;

        /* renamed from: tn */
        String f2908tn;

        C3231a() {
        }
    }

    public C3230jw(InterfaceC3195it interfaceC3195it) {
        this.f2903tk = interfaceC3195it;
    }

    /* renamed from: a */
    public String m3354a(String str, File file) {
        String str2 = null;
        if (file != null && file.exists()) {
            str2 = m3353a(str, file, m3350b(0, 0));
        }
        if (str2 == null) {
            throw new FileNotFoundException(file == null ? "" : file.getAbsolutePath());
        }
        return str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006b, code lost:
        if (m3344i(r14) == m3344i(r4)) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006d, code lost:
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0043, code lost:
        if (m3344i(r14) != m3344i(r4)) goto L5;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String m3353a(String str, File file, String str2) {
        boolean z = true;
        File file2 = new File(new File("/data/data-lib/uranus", str), file.getName());
        String absolutePath = file.getAbsolutePath();
        String absolutePath2 = file2.getAbsolutePath();
        m3356a(file2);
        C3231a c3231a = new C3231a();
        c3231a.f2906tl = "0755";
        c3231a.f2907tm = 0;
        c3231a.f2904cZ = str2;
        c3231a.f2905da = "0711";
        c3231a.f2908tn = "u:object_r:system_data_file:s0";
        if (!m3346g(file2)) {
            if (m3348e(absolutePath2, false)) {
                m3349b(file2, c3231a);
                if (m3346g(file2)) {
                }
            }
        }
        if (z) {
            m3352a(absolutePath, absolutePath2, c3231a);
            if (!m3346g(file2)) {
                return null;
            }
        }
        m3349b(file2, c3231a);
        if (m3355a(file2, c3231a) && m3345h(file2)) {
            return absolutePath2;
        }
        return null;
    }

    /* renamed from: a */
    private void m3356a(File file) {
        LinkedList linkedList = new LinkedList();
        String parent = file.getParent();
        Iterator<String> it = m3347f(file).iterator();
        while (it.hasNext()) {
            linkedList.add("rm " + (parent + File.separator + it.next()));
        }
        if (linkedList.size() > 0) {
            m3342m(linkedList);
        }
    }

    /* renamed from: f */
    private Collection<String> m3347f(File file) {
        String m3351aQ = m3351aQ("ls " + file.getParent());
        if (TextUtils.isEmpty(m3351aQ)) {
            return Collections.emptyList();
        }
        LinkedList linkedList = new LinkedList();
        String m3343j = m3343j(file);
        String name = file.getName();
        String[] split = m3351aQ.split("\n");
        for (String str : split) {
            String trim = str.trim();
            if (!trim.equals(name) && trim.startsWith(m3343j)) {
                linkedList.add(trim);
            }
        }
        return linkedList;
    }

    /* renamed from: a */
    private void m3352a(String str, String str2, C3231a c3231a) {
        LinkedList linkedList = new LinkedList();
        boolean z = C3304mf.m3091ev() >= 22;
        int i = 0;
        while (true) {
            i = str2.indexOf(File.separatorChar, i + 1);
            if (i == -1) {
                break;
            }
            File file = new File(str2.substring(0, i));
            if (!file.getAbsolutePath().equals("/data")) {
                String absolutePath = file.getAbsolutePath();
                if (!file.exists()) {
                    linkedList.add("mkdir " + absolutePath);
                }
                linkedList.add("chown " + c3231a.f2907tm + ":" + c3231a.f2907tm + " " + absolutePath);
                linkedList.add("chmod " + c3231a.f2905da + " " + absolutePath);
                linkedList.add("chcon " + c3231a.f2908tn + " " + absolutePath);
                linkedList.add("/system/bin/toolbox chcon " + c3231a.f2908tn + " " + absolutePath);
                if (z) {
                    linkedList.add("/system/bin/toybox chcon " + c3231a.f2908tn + " " + absolutePath);
                }
            }
        }
        linkedList.add("rm " + str2);
        linkedList.add("cat " + str + " > " + str2);
        linkedList.add("chown " + c3231a.f2907tm + ":" + c3231a.f2907tm + " " + str2);
        linkedList.add("chmod " + c3231a.f2906tl + " " + str2);
        linkedList.add("chcon " + c3231a.f2904cZ + " " + str2);
        linkedList.add("/system/bin/toolbox chcon " + c3231a.f2904cZ + " " + str2);
        if (z) {
            linkedList.add("/system/bin/toybox chcon " + c3231a.f2904cZ + " " + str2);
        }
        m3342m(linkedList);
    }

    /* renamed from: g */
    public static boolean m3346g(File file) {
        return file != null && file.exists();
    }

    /* renamed from: a */
    private boolean m3355a(File file, C3231a c3231a) {
        File file2;
        boolean z = false;
        if (C3203iy.m3446cp()) {
            String m3351aQ = m3351aQ("ls -Z -d /data");
            if (TextUtils.isEmpty(m3351aQ) || !m3351aQ.contains("u:object_r:")) {
                return true;
            }
            LinkedList linkedList = new LinkedList();
            String absolutePath = file.getAbsolutePath();
            int i = 0;
            while (true) {
                i = absolutePath.indexOf(File.separatorChar, i + 1);
                if (i == -1) {
                    break;
                }
                if (!new File(absolutePath.substring(0, i)).getAbsolutePath().equals("/data")) {
                    linkedList.add("ls -Z -d " + file2.getAbsolutePath());
                }
            }
            linkedList.add("ls -Z " + absolutePath);
            List<String> m3342m = m3342m(linkedList);
            for (int i2 = 0; i2 < m3342m.size() - 1; i2++) {
                String str = m3342m.get(i2);
                if (!TextUtils.isEmpty(str) && !str.contains(c3231a.f2908tn)) {
                    return false;
                }
            }
            String str2 = m3342m.size() > 0 ? m3342m.get(m3342m.size() - 1) : null;
            return (TextUtils.isEmpty(str2) || str2.contains(c3231a.f2904cZ)) ? true : true;
        }
        return true;
    }

    /* renamed from: b */
    private void m3349b(File file, C3231a c3231a) {
        if (C3203iy.m3446cp()) {
            LinkedList linkedList = new LinkedList();
            String absolutePath = file.getAbsolutePath();
            boolean z = C3304mf.m3091ev() >= 22;
            int i = 0;
            while (true) {
                i = absolutePath.indexOf(File.separatorChar, i + 1);
                if (i == -1) {
                    break;
                }
                File file2 = new File(absolutePath.substring(0, i));
                if (!file2.getAbsolutePath().equals("/data")) {
                    String absolutePath2 = file2.getAbsolutePath();
                    linkedList.add("chown " + c3231a.f2907tm + ":" + c3231a.f2907tm + " " + absolutePath2);
                    linkedList.add("chmod " + c3231a.f2905da + " " + absolutePath2);
                    linkedList.add("chcon " + c3231a.f2908tn + " " + absolutePath2);
                    linkedList.add("/system/bin/toolbox chcon " + c3231a.f2908tn + " " + absolutePath2);
                    if (z) {
                        linkedList.add("/system/bin/toybox chcon " + c3231a.f2908tn + " " + absolutePath2);
                    }
                }
            }
            linkedList.add("chown " + c3231a.f2907tm + ":" + c3231a.f2907tm + " " + absolutePath);
            linkedList.add("chmod " + c3231a.f2906tl + " " + absolutePath);
            linkedList.add("chcon " + c3231a.f2904cZ + " " + absolutePath);
            linkedList.add("/system/bin/toolbox chcon " + c3231a.f2904cZ + " " + absolutePath);
            if (z) {
                linkedList.add("/system/bin/toybox chcon " + c3231a.f2904cZ + " " + absolutePath);
            }
            m3342m(linkedList);
        }
    }

    /* renamed from: e */
    private boolean m3348e(String str, boolean z) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        String m3351aQ = m3351aQ((z ? "ls -d " : "ls ") + str + " || echo " + valueOf);
        return (TextUtils.isEmpty(m3351aQ) || m3351aQ.contains(valueOf)) ? false : true;
    }

    /* renamed from: h */
    public static boolean m3345h(File file) {
        try {
            if (((Boolean) File.class.getMethod("canExecute", new Class[0]).invoke(file, new Object[0])).booleanValue()) {
                if (file.canRead()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: i */
    private static long m3344i(File file) {
        CheckedInputStream checkedInputStream;
        FileInputStream fileInputStream;
        Throwable th;
        FileInputStream fileInputStream2;
        CheckedInputStream checkedInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                checkedInputStream = new CheckedInputStream(fileInputStream, new Adler32());
            } catch (Exception e) {
                fileInputStream2 = fileInputStream;
            } catch (Throwable th2) {
                checkedInputStream = null;
                th = th2;
            }
            try {
                do {
                } while (checkedInputStream.read(new byte[4096]) != -1);
                long value = checkedInputStream.getChecksum().getValue();
                C3356nn.m2841a(checkedInputStream);
                C3356nn.m2841a(fileInputStream);
                return value;
            } catch (Exception e2) {
                checkedInputStream2 = checkedInputStream;
                fileInputStream2 = fileInputStream;
                C3356nn.m2841a(checkedInputStream2);
                C3356nn.m2841a(fileInputStream2);
                return 0L;
            } catch (Throwable th3) {
                th = th3;
                C3356nn.m2841a(checkedInputStream);
                C3356nn.m2841a(fileInputStream);
                throw th;
            }
        } catch (Exception e3) {
            fileInputStream2 = null;
        } catch (Throwable th4) {
            checkedInputStream = null;
            fileInputStream = null;
            th = th4;
        }
    }

    /* renamed from: aQ */
    private String m3351aQ(String str) {
        return this.f2903tk.mo3131aC(str).mStdOut;
    }

    /* renamed from: m */
    private List<String> m3342m(List<String> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<C3199ix.C3201b> it = this.f2903tk.mo3125l(list).iterator();
        while (it.hasNext()) {
            C3199ix.C3201b next = it.next();
            String str = next != null ? next.mStdOut : null;
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    /* renamed from: j */
    private static String m3343j(File file) {
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(46);
        return lastIndexOf == -1 ? name : name.substring(0, lastIndexOf);
    }

    /* renamed from: b */
    private static String m3350b(int i, int i2) {
        return "u:object_r:system_file:s0";
    }
}
