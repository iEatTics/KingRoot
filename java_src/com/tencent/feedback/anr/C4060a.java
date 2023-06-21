package com.tencent.feedback.anr;

import com.tencent.feedback.common.C4073e;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.tencent.feedback.anr.a */
/* loaded from: classes.dex */
public class C4060a {

    /* renamed from: a */
    public String f4391a = null;

    /* renamed from: b */
    public Map<String, String> f4392b = null;

    /* renamed from: c */
    public long f4393c = -1;

    /* renamed from: d */
    public String f4394d = null;

    /* renamed from: e */
    public String f4395e = null;

    /* renamed from: f */
    public String f4396f = null;

    /* renamed from: a */
    public static C4065f m1142a(String str, String str2, boolean z) {
        if (str == null || str2 == null) {
            return null;
        }
        C4065f c4065f = new C4065f();
        m1143a(str2, new C4063d(c4065f, true));
        if (c4065f.f4407a <= 0 || c4065f.f4409c <= 0 || c4065f.f4408b == null) {
            return null;
        }
        return c4065f;
    }

    /* renamed from: a */
    public static C4065f m1141a(String str, boolean z) {
        if (str == null) {
            C4073e.m1012d("path:%s", str);
            return null;
        }
        C4065f c4065f = new C4065f();
        m1143a(str, new C4064e(c4065f, false));
        if (c4065f.f4407a <= 0 || c4065f.f4409c <= 0 || c4065f.f4408b == null) {
            C4073e.m1012d("first dump error %s", c4065f.f4407a + " " + c4065f.f4409c + " " + c4065f.f4408b);
            return null;
        }
        return c4065f;
    }

    /* JADX WARN: Removed duplicated region for block: B:88:0x019a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m1143a(String str, InterfaceC4066g interfaceC4066g) {
        BufferedReader bufferedReader;
        String[] split;
        String group;
        if (str == null || interfaceC4066g == null) {
            return;
        }
        File file = new File(str);
        if (!file.exists()) {
            return;
        }
        file.lastModified();
        file.length();
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new FileReader(file));
        } catch (Exception e) {
            e = e;
        } catch (Throwable th) {
            th = th;
            bufferedReader = null;
        }
        try {
            Pattern compile = Pattern.compile("-{5}\\spid\\s\\d+\\sat\\s\\d+-\\d+-\\d+\\s\\d{2}:\\d{2}:\\d{2}\\s-{5}");
            Pattern compile2 = Pattern.compile("-{5}\\send\\s\\d+\\s-{5}");
            Pattern compile3 = Pattern.compile("Cmd\\sline:\\s(\\S+)");
            Pattern compile4 = Pattern.compile("\".+\"\\s(daemon\\s){0,1}prio=\\d+\\stid=\\d+\\s.*");
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
            while (true) {
                Object[] m1144a = m1144a(bufferedReader, compile);
                if (m1144a == null) {
                    try {
                        bufferedReader.close();
                        return;
                    } catch (IOException e2) {
                        if (C4073e.m1016a(e2)) {
                            return;
                        }
                        e2.printStackTrace();
                        return;
                    }
                }
                long parseLong = Long.parseLong(m1144a[1].toString().split("\\s")[2]);
                long time = simpleDateFormat.parse(split[4] + " " + split[5]).getTime();
                Object[] m1144a2 = m1144a(bufferedReader, compile3);
                if (m1144a2 == null) {
                    try {
                        bufferedReader.close();
                        return;
                    } catch (IOException e3) {
                        if (C4073e.m1016a(e3)) {
                            return;
                        }
                        e3.printStackTrace();
                        return;
                    }
                }
                Matcher matcher = compile3.matcher(m1144a2[1].toString());
                matcher.find();
                matcher.group(1);
                if (!interfaceC4066g.mo1131a(parseLong, time, matcher.group(1))) {
                    try {
                        bufferedReader.close();
                        return;
                    } catch (IOException e4) {
                        if (C4073e.m1016a(e4)) {
                            return;
                        }
                        e4.printStackTrace();
                        return;
                    }
                }
                while (true) {
                    Object[] m1144a3 = m1144a(bufferedReader, compile4, compile2);
                    if (m1144a3 == null) {
                        break;
                    } else if (m1144a3[0] == compile4) {
                        String obj = m1144a3[1].toString();
                        Matcher matcher2 = Pattern.compile("\".+\"").matcher(obj);
                        matcher2.find();
                        String substring = matcher2.group().substring(1, group.length() - 1);
                        obj.contains("NATIVE");
                        Matcher matcher3 = Pattern.compile("tid=\\d+").matcher(obj);
                        matcher3.find();
                        String group2 = matcher3.group();
                        interfaceC4066g.mo1130a(substring, Integer.parseInt(group2.substring(group2.indexOf("=") + 1)), m1145a(bufferedReader), m1140b(bufferedReader));
                    } else if (!interfaceC4066g.mo1132a(Long.parseLong(m1144a3[1].toString().split("\\s")[2]))) {
                        try {
                            bufferedReader.close();
                            return;
                        } catch (IOException e5) {
                            if (C4073e.m1016a(e5)) {
                                return;
                            }
                            e5.printStackTrace();
                            return;
                        }
                    }
                }
            }
        } catch (Exception e6) {
            e = e6;
            bufferedReader2 = bufferedReader;
            try {
                if (!C4073e.m1016a(e)) {
                    e.printStackTrace();
                }
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e7) {
                        if (C4073e.m1016a(e7)) {
                            return;
                        }
                        e7.printStackTrace();
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = bufferedReader2;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e8) {
                        if (!C4073e.m1016a(e8)) {
                            e8.printStackTrace();
                        }
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (bufferedReader != null) {
            }
            throw th;
        }
    }

    /* renamed from: a */
    protected static Object[] m1144a(BufferedReader bufferedReader, Pattern... patternArr) {
        if (bufferedReader == null || patternArr == null) {
            return null;
        }
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return null;
            }
            for (Pattern pattern : patternArr) {
                if (pattern.matcher(readLine).matches()) {
                    return new Object[]{pattern, readLine};
                }
            }
        }
    }

    /* renamed from: a */
    protected static String m1145a(BufferedReader bufferedReader) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < 3; i++) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return null;
            }
            stringBuffer.append(readLine + "\n");
        }
        return stringBuffer.toString();
    }

    /* renamed from: b */
    protected static String m1140b(BufferedReader bufferedReader) {
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null || readLine.trim().length() <= 0) {
                break;
            }
            stringBuffer.append(readLine + "\n");
        }
        return stringBuffer.toString();
    }
}
