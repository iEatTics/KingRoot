package com.kingroot.kinguser;

import android.os.Build;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
/* renamed from: com.kingroot.kinguser.gz */
/* loaded from: classes.dex */
public final class C3143gz {

    /* renamed from: a */
    private static long f2735a = -1;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a2 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long m3642a() {
        DataInputStream dataInputStream;
        if (f2735a == -1) {
            File file = new File("/proc/meminfo");
            DataInputStream exists = file.exists();
            try {
                if (exists != 0) {
                    try {
                        dataInputStream = new DataInputStream(new FileInputStream(file));
                        try {
                            String readLine = dataInputStream.readLine();
                            if (readLine == null) {
                                throw new IOException("/proc/meminfo is empty!");
                            }
                            f2735a = Long.parseLong(readLine.trim().split("[\\s]+")[1]);
                            if (dataInputStream != null) {
                                try {
                                    dataInputStream.close();
                                } catch (IOException e) {
                                    e.printStackTrace();
                                }
                            }
                        } catch (FileNotFoundException e2) {
                            e = e2;
                            e.printStackTrace();
                            if (dataInputStream != null) {
                                try {
                                    dataInputStream.close();
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                }
                            }
                            if (f2735a > 0) {
                            }
                        } catch (IOException e4) {
                            e = e4;
                            e.printStackTrace();
                            if (dataInputStream != null) {
                                try {
                                    dataInputStream.close();
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                }
                            }
                            if (f2735a > 0) {
                            }
                        } catch (NumberFormatException e6) {
                            e = e6;
                            e.printStackTrace();
                            if (dataInputStream != null) {
                                try {
                                    dataInputStream.close();
                                } catch (IOException e7) {
                                    e7.printStackTrace();
                                }
                            }
                            if (f2735a > 0) {
                            }
                        } catch (Throwable th) {
                            th = th;
                            th.printStackTrace();
                            if (dataInputStream != null) {
                                try {
                                    dataInputStream.close();
                                } catch (IOException e8) {
                                    e8.printStackTrace();
                                }
                            }
                            if (f2735a > 0) {
                            }
                        }
                    } catch (FileNotFoundException e9) {
                        e = e9;
                        dataInputStream = null;
                    } catch (IOException e10) {
                        e = e10;
                        dataInputStream = null;
                    } catch (NumberFormatException e11) {
                        e = e11;
                        dataInputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                        dataInputStream = null;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        if (f2735a > 0) {
            return f2735a;
        }
        return 1L;
    }

    /* renamed from: b */
    public static String m3641b() {
        String str = Build.MANUFACTURER;
        if (str == null) {
            return "UNKNOWN";
        }
        return str;
    }
}
