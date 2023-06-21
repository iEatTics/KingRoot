package com.tencent.feedback.eup.jni;

import android.content.Context;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.eup.C4090e;
import com.tencent.feedback.proguard.C4119a;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.tencent.feedback.eup.jni.c */
/* loaded from: classes.dex */
public class C4096c {

    /* renamed from: a */
    public byte f4605a;

    /* renamed from: b */
    public int f4606b;

    /* renamed from: b */
    private static Map<String, Integer> m780b(String str) {
        String[] split;
        if (str == null) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            for (String str2 : str.split(",")) {
                String[] split2 = str2.split(":");
                if (split2.length != 2) {
                    C4073e.m1012d("error format at %s", str2);
                    return null;
                }
                hashMap.put(split2[0], Integer.valueOf(Integer.parseInt(split2[1])));
            }
            return hashMap;
        } catch (Exception e) {
            C4073e.m1012d("error format intStateStr %s", str);
            if (C4073e.m1016a(e)) {
                return null;
            }
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    private static C4090e m783a(Context context, Map<String, String> map) {
        if (map == null) {
            return null;
        }
        if (C4071c.m1088a(context) == null) {
            C4073e.m1012d("abnormal com info not created", new Object[0]);
            return null;
        }
        String str = map.get("intStateStr");
        if (str == null || str.trim().length() <= 0) {
            C4073e.m1012d("no intStateStr", new Object[0]);
            return null;
        }
        Map<String, Integer> m780b = m780b(str);
        if (m780b == null) {
            C4073e.m1012d("parse intSateMap fail", Integer.valueOf(map.size()));
            return null;
        }
        try {
            int intValue = m780b.get("ep").intValue();
            int intValue2 = m780b.get("et").intValue();
            m780b.get("sino").intValue();
            int intValue3 = m780b.get("sico").intValue();
            int intValue4 = m780b.get("spd").intValue();
            m780b.get("sud").intValue();
            long intValue5 = m780b.get("ets").intValue();
            long intValue6 = m780b.get("etms").intValue();
            String str2 = map.get("soVersion");
            if (str2 == null) {
                C4073e.m1012d("error format at version", new Object[0]);
                return null;
            }
            String str3 = map.get("errorAddr");
            String str4 = str3 == null ? "unknown2" : str3;
            String str5 = map.get("codeMsg");
            String str6 = str5 == null ? "unknown2" : str5;
            String str7 = map.get("tombPath");
            String str8 = str7 == null ? "unknown2" : str7;
            String str9 = map.get("signalName");
            String str10 = str9 == null ? "unknown2" : str9;
            String str11 = map.get("errnoMsg");
            String str12 = map.get("stack");
            String str13 = str12 == null ? "unknown2" : str12;
            String str14 = map.get("jstack");
            if (str14 != null) {
                str13 = str13 + "java:\n" + str14;
            }
            String str15 = map.get("nativeLog");
            byte[] bArr = null;
            if (str15 != null && !str15.isEmpty()) {
                bArr = C4119a.m749a((File) null, str15);
            }
            String str16 = map.get("processName");
            String str17 = str16 == null ? "unknown(" + intValue + ")" : str16;
            String str18 = map.get("threadName");
            String str19 = str18 == null ? "unknown(" + intValue2 + ")" : str18;
            HashMap hashMap = null;
            String str20 = map.get("key-value");
            if (str20 != null) {
                hashMap = new HashMap();
                String[] split = str20.split("\n");
                for (String str21 : split) {
                    String[] split2 = str21.split("=");
                    if (split2.length == 2) {
                        hashMap.put(split2[0], split2[1]);
                    }
                }
            }
            C4090e m787a = C4095b.m787a(context, (intValue6 / 1000) + (1000 * intValue5), str10, str4, str13, str8, intValue3, str6, -intValue4, str11, null, null, str2, str17, str19, bArr, hashMap);
            if (m787a != null) {
                m787a.m862d(true);
                return m787a;
            }
            return m787a;
        } catch (Throwable th) {
            C4073e.m1012d("error format", new Object[0]);
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: a */
    private static String m782a(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int read = inputStream.read();
            if (read == -1) {
                return null;
            }
            if (read == 0) {
                return sb.toString();
            }
            sb.append((char) read);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* renamed from: a */
    public static C4090e m784a(Context context, String str) {
        FileInputStream fileInputStream;
        C4090e c4090e = null;
        File file = new File(str, "rqd_record.eup");
        if (file.exists()) {
            ?? canRead = file.canRead();
            try {
                if (canRead != 0) {
                    try {
                        fileInputStream = new FileInputStream(file);
                        try {
                            String m782a = m782a(fileInputStream);
                            if (m782a == null || !m782a.equals("NATIVE_RQD_REPORT")) {
                                C4073e.m1012d("record read fail! %s", m782a);
                                try {
                                    fileInputStream.close();
                                } catch (IOException e) {
                                    if (!C4073e.m1016a(e)) {
                                        e.printStackTrace();
                                    }
                                }
                            } else {
                                HashMap hashMap = new HashMap();
                                String str2 = null;
                                while (true) {
                                    String m782a2 = m782a(fileInputStream);
                                    if (m782a2 == null) {
                                        break;
                                    } else if (str2 == null) {
                                        str2 = m782a2;
                                    } else {
                                        hashMap.put(str2, m782a2);
                                        str2 = null;
                                    }
                                }
                                if (str2 != null) {
                                    C4073e.m1012d("record not pair! drop! %s", str2);
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e2) {
                                        if (!C4073e.m1016a(e2)) {
                                            e2.printStackTrace();
                                        }
                                    }
                                } else {
                                    c4090e = m783a(context, hashMap);
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e3) {
                                        if (!C4073e.m1016a(e3)) {
                                            e3.printStackTrace();
                                        }
                                    }
                                }
                            }
                        } catch (IOException e4) {
                            e = e4;
                            if (!C4073e.m1016a(e)) {
                                e.printStackTrace();
                            }
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e5) {
                                    if (!C4073e.m1016a(e5)) {
                                        e5.printStackTrace();
                                    }
                                }
                            }
                            return c4090e;
                        }
                    } catch (IOException e6) {
                        e = e6;
                        fileInputStream = null;
                    } catch (Throwable th) {
                        canRead = 0;
                        th = th;
                        if (canRead != 0) {
                            try {
                                canRead.close();
                            } catch (IOException e7) {
                                if (!C4073e.m1016a(e7)) {
                                    e7.printStackTrace();
                                }
                            }
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return c4090e;
    }

    /* renamed from: a */
    public static void m781a(String str) {
        File file = new File(str, "rqd_record.eup");
        if (file.exists() && file.canWrite()) {
            file.delete();
            C4073e.m1015b("delete record file %s", file.getAbsoluteFile());
        }
    }
}
