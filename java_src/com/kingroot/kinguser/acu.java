package com.kingroot.kinguser;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
/* loaded from: classes.dex */
public final class acu {
    /* renamed from: g */
    public static String m12570g(String str, long j) {
        if (TextUtils.isEmpty(str)) {
            str = "yyyy-MM-dd HH:mm:ss";
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        return new SimpleDateFormat(str, Locale.getDefault()).format(calendar.getTime());
    }

    /* renamed from: b */
    public static boolean m12573b(long j, long j2, long j3) {
        return Math.abs(j2 - j) > j3;
    }

    /* renamed from: g */
    public static boolean m12571g(long j, long j2) {
        return Math.abs(System.currentTimeMillis() - j) > j2;
    }

    /* renamed from: ci */
    public static long m12572ci(int i) {
        FileInputStream fileInputStream;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        InputStreamReader inputStreamReader;
        String readLine;
        InputStreamReader inputStreamReader2 = null;
        long j = 0;
        try {
            fileInputStream = new FileInputStream("/proc/" + i + "/stat");
            try {
                inputStreamReader = new InputStreamReader(fileInputStream);
                try {
                    bufferedReader = new BufferedReader(inputStreamReader, 1000);
                } catch (Exception e) {
                    bufferedReader2 = null;
                    inputStreamReader2 = inputStreamReader;
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = null;
                    inputStreamReader2 = inputStreamReader;
                }
            } catch (Exception e2) {
                bufferedReader2 = null;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
        } catch (Exception e3) {
            fileInputStream = null;
            bufferedReader2 = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
            bufferedReader = null;
        }
        try {
            readLine = bufferedReader.readLine();
        } catch (Exception e4) {
            inputStreamReader2 = inputStreamReader;
            bufferedReader2 = bufferedReader;
            C3945za.m1340c(bufferedReader2);
            C3945za.m1340c(inputStreamReader2);
            C3945za.m1340c(fileInputStream);
            return (j * 1000) / 100;
        } catch (Throwable th4) {
            th = th4;
            inputStreamReader2 = inputStreamReader;
            C3945za.m1340c(bufferedReader);
            C3945za.m1340c(inputStreamReader2);
            C3945za.m1340c(fileInputStream);
            throw th;
        }
        if (TextUtils.isEmpty(readLine)) {
            C3945za.m1340c(bufferedReader);
            C3945za.m1340c(inputStreamReader);
            C3945za.m1340c(fileInputStream);
            return 0L;
        }
        bufferedReader.close();
        inputStreamReader.close();
        fileInputStream.close();
        j = Long.parseLong(readLine.split(" ")[21]);
        C3945za.m1340c(bufferedReader);
        C3945za.m1340c(inputStreamReader);
        C3945za.m1340c(fileInputStream);
        return (j * 1000) / 100;
    }

    /* renamed from: se */
    public static long m12569se() {
        FileInputStream fileInputStream;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        InputStreamReader inputStreamReader2 = null;
        try {
            fileInputStream = new FileInputStream("/proc/uptime");
            try {
                inputStreamReader = new InputStreamReader(fileInputStream);
                try {
                    bufferedReader = new BufferedReader(inputStreamReader, 1000);
                    try {
                        String readLine = bufferedReader.readLine();
                        if (TextUtils.isEmpty(readLine)) {
                            C3945za.m1340c(bufferedReader);
                            C3945za.m1340c(inputStreamReader);
                            C3945za.m1340c(fileInputStream);
                            return 0L;
                        }
                        bufferedReader.close();
                        inputStreamReader.close();
                        fileInputStream.close();
                        String[] split = readLine.split(" ");
                        if (split.length < 1) {
                            C3945za.m1340c(bufferedReader);
                            C3945za.m1340c(inputStreamReader);
                            C3945za.m1340c(fileInputStream);
                            return 0L;
                        }
                        long parseDouble = (long) (Double.parseDouble(split[0]) * 1000.0d);
                        C3945za.m1340c(bufferedReader);
                        C3945za.m1340c(inputStreamReader);
                        C3945za.m1340c(fileInputStream);
                        return parseDouble;
                    } catch (Exception e) {
                        inputStreamReader2 = inputStreamReader;
                        bufferedReader2 = bufferedReader;
                        C3945za.m1340c(bufferedReader2);
                        C3945za.m1340c(inputStreamReader2);
                        C3945za.m1340c(fileInputStream);
                        return 0L;
                    } catch (Throwable th) {
                        th = th;
                        C3945za.m1340c(bufferedReader);
                        C3945za.m1340c(inputStreamReader);
                        C3945za.m1340c(fileInputStream);
                        throw th;
                    }
                } catch (Exception e2) {
                    bufferedReader2 = null;
                    inputStreamReader2 = inputStreamReader;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = null;
                }
            } catch (Exception e3) {
                bufferedReader2 = null;
            } catch (Throwable th3) {
                th = th3;
                inputStreamReader = null;
                bufferedReader = null;
            }
        } catch (Exception e4) {
            fileInputStream = null;
            bufferedReader2 = null;
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
            inputStreamReader = null;
            bufferedReader = null;
        }
    }
}
