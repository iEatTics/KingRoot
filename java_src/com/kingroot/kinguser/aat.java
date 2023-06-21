package com.kingroot.kinguser;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class aat {
    /* renamed from: pX */
    public static long m12936pX() {
        FileInputStream fileInputStream;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        InputStreamReader inputStreamReader2 = null;
        try {
            fileInputStream = new FileInputStream("/proc/stat");
            try {
                inputStreamReader = new InputStreamReader(fileInputStream);
                try {
                    bufferedReader = new BufferedReader(inputStreamReader, 1000);
                } catch (IOException e) {
                    e = e;
                    bufferedReader2 = null;
                    inputStreamReader2 = inputStreamReader;
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = null;
                }
                try {
                    String readLine = bufferedReader.readLine();
                    if (TextUtils.isEmpty(readLine)) {
                        C3945za.m1340c(bufferedReader);
                        C3945za.m1340c(inputStreamReader);
                        C3945za.m1340c(fileInputStream);
                        return 0L;
                    }
                    String[] split = readLine.split(" ");
                    if (split.length < 9) {
                        C3945za.m1340c(bufferedReader);
                        C3945za.m1340c(inputStreamReader);
                        C3945za.m1340c(fileInputStream);
                        return 0L;
                    }
                    long parseLong = Long.parseLong(split[8]) + Long.parseLong(split[2]) + Long.parseLong(split[3]) + Long.parseLong(split[4]) + Long.parseLong(split[6]) + Long.parseLong(split[5]) + Long.parseLong(split[7]);
                    C3945za.m1340c(bufferedReader);
                    C3945za.m1340c(inputStreamReader);
                    C3945za.m1340c(fileInputStream);
                    return parseLong;
                } catch (IOException e2) {
                    e = e2;
                    inputStreamReader2 = inputStreamReader;
                    bufferedReader2 = bufferedReader;
                    try {
                        e.printStackTrace();
                        C3945za.m1340c(bufferedReader2);
                        C3945za.m1340c(inputStreamReader2);
                        C3945za.m1340c(fileInputStream);
                        return 0L;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        inputStreamReader = inputStreamReader2;
                        C3945za.m1340c(bufferedReader);
                        C3945za.m1340c(inputStreamReader);
                        C3945za.m1340c(fileInputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    C3945za.m1340c(bufferedReader);
                    C3945za.m1340c(inputStreamReader);
                    C3945za.m1340c(fileInputStream);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
                bufferedReader2 = null;
            } catch (Throwable th4) {
                th = th4;
                inputStreamReader = null;
                bufferedReader = null;
            }
        } catch (IOException e4) {
            e = e4;
            fileInputStream = null;
            bufferedReader2 = null;
        } catch (Throwable th5) {
            th = th5;
            fileInputStream = null;
            inputStreamReader = null;
            bufferedReader = null;
        }
    }

    /* renamed from: bZ */
    public static long m12937bZ(int i) {
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        InputStreamReader inputStreamReader2 = null;
        try {
            fileInputStream = new FileInputStream("/proc/" + i + "/stat");
            try {
                inputStreamReader = new InputStreamReader(fileInputStream);
                try {
                    bufferedReader = new BufferedReader(inputStreamReader, 1000);
                } catch (Exception e) {
                    e = e;
                    bufferedReader = null;
                    inputStreamReader2 = inputStreamReader;
                    fileInputStream2 = fileInputStream;
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = null;
                }
            } catch (Exception e2) {
                e = e2;
                bufferedReader = null;
                fileInputStream2 = fileInputStream;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
                inputStreamReader = null;
            }
        } catch (Exception e3) {
            e = e3;
            bufferedReader = null;
            fileInputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
            inputStreamReader = null;
            fileInputStream = null;
        }
        try {
            String readLine = bufferedReader.readLine();
            if (TextUtils.isEmpty(readLine)) {
                C3945za.m1340c(bufferedReader);
                C3945za.m1340c(inputStreamReader);
                C3945za.m1340c(fileInputStream);
                return 0L;
            }
            String[] split = readLine.split(" ");
            if (split.length < 17) {
                C3945za.m1340c(bufferedReader);
                C3945za.m1340c(inputStreamReader);
                C3945za.m1340c(fileInputStream);
                return 0L;
            }
            long parseLong = Long.parseLong(split[16]) + Long.parseLong(split[13]) + Long.parseLong(split[14]) + Long.parseLong(split[15]);
            C3945za.m1340c(bufferedReader);
            C3945za.m1340c(inputStreamReader);
            C3945za.m1340c(fileInputStream);
            return parseLong;
        } catch (Exception e4) {
            e = e4;
            inputStreamReader2 = inputStreamReader;
            fileInputStream2 = fileInputStream;
            try {
                e.printStackTrace();
                C3945za.m1340c(bufferedReader);
                C3945za.m1340c(inputStreamReader2);
                C3945za.m1340c(fileInputStream2);
                return 0L;
            } catch (Throwable th4) {
                th = th4;
                fileInputStream = fileInputStream2;
                inputStreamReader = inputStreamReader2;
                C3945za.m1340c(bufferedReader);
                C3945za.m1340c(inputStreamReader);
                C3945za.m1340c(fileInputStream);
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            C3945za.m1340c(bufferedReader);
            C3945za.m1340c(inputStreamReader);
            C3945za.m1340c(fileInputStream);
            throw th;
        }
    }

    /* renamed from: com.kingroot.kinguser.aat$a */
    /* loaded from: classes.dex */
    class C0618a implements FileFilter {
        C0618a() {
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return Pattern.matches("cpu[0-9]+", file.getName());
        }
    }

    /* renamed from: pY */
    public static int m12935pY() {
        try {
            File[] listFiles = new File("/sys/devices/system/cpu/").listFiles(new C0618a());
            if (listFiles != null) {
                return listFiles.length;
            }
        } catch (Exception e) {
        }
        return 1;
    }
}
