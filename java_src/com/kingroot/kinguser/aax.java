package com.kingroot.kinguser;

import android.content.Context;
import android.os.Build;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
/* loaded from: classes.dex */
public class aax {

    /* renamed from: Wh */
    private static long f1293Wh = -1;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0092 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* renamed from: qw */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long m12884qw() {
        DataInputStream dataInputStream;
        if (f1293Wh == -1) {
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
                            f1293Wh = Long.parseLong(readLine.trim().split("[\\s]+")[1]);
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
                            if (f1293Wh <= 0) {
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
                            if (f1293Wh <= 0) {
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
                            if (f1293Wh <= 0) {
                            }
                        }
                    } catch (FileNotFoundException e8) {
                        e = e8;
                        dataInputStream = null;
                    } catch (IOException e9) {
                        e = e9;
                        dataInputStream = null;
                    } catch (NumberFormatException e10) {
                        e = e10;
                        dataInputStream = null;
                    } catch (Throwable th) {
                        th = th;
                        exists = 0;
                        if (exists != 0) {
                            try {
                                exists.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        if (f1293Wh <= 0) {
            return f1293Wh;
        }
        return 1L;
    }

    /* renamed from: Z */
    public static String[] m12885Z(Context context) {
        String[] strArr = new String[4];
        strArr[0] = Build.MODEL;
        strArr[1] = Build.VERSION.RELEASE;
        String str = "";
        try {
            str = C3563rs.m2361cA("/proc/cpuinfo").split("\\n")[0];
        } catch (Exception e) {
            e.printStackTrace();
        }
        strArr[2] = str;
        strArr[3] = Integer.toString(aav.m12914qc()) + "*" + Integer.toString(aav.m12913qd());
        return strArr;
    }
}
