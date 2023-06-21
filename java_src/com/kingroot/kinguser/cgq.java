package com.kingroot.kinguser;

import android.os.Environment;
import android.p003os.Environmenu;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes.dex */
class cgq extends cgm {
    @Override // com.kingroot.kinguser.cgm
    /* renamed from: e */
    public void mo4318e(int i, String str, String str2) {
        if (str2 == null) {
            str2 = "(null)";
        }
        if (i == 10) {
            super.m4330d(str, str2);
            m4320e(new File("/sdcard/pimsecure_debug.txt"), new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss").format(new Date(System.currentTimeMillis())) + " " + str + " " + str2 + "\n");
            return;
        }
        Log.println(i, str, str2);
    }

    /* renamed from: e */
    public void m4320e(File file, String str) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                if (Environmenu.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())) {
                    if (!file.exists()) {
                        file.getAbsoluteFile().getParentFile().mkdirs();
                        file.createNewFile();
                    }
                    fileOutputStream = new FileOutputStream(file, true);
                    try {
                        fileOutputStream.write(str.getBytes());
                    } catch (FileNotFoundException e) {
                        e = e;
                        fileOutputStream2 = fileOutputStream;
                        Log.e("QQPimSecure", "file not found");
                        e.printStackTrace();
                        if (fileOutputStream2 != null) {
                            try {
                                fileOutputStream2.close();
                                return;
                            } catch (IOException e2) {
                                e2.printStackTrace();
                                return;
                            }
                        }
                        return;
                    } catch (IOException e3) {
                        e = e3;
                        fileOutputStream2 = fileOutputStream;
                        Log.e("QQPimSecure", "io exception");
                        e.printStackTrace();
                        if (fileOutputStream2 != null) {
                            try {
                                fileOutputStream2.close();
                                return;
                            } catch (IOException e4) {
                                e4.printStackTrace();
                                return;
                            }
                        }
                        return;
                    } catch (Exception e5) {
                        e = e5;
                        fileOutputStream2 = fileOutputStream;
                        Log.e("QQPimSecure", "runtime error");
                        e.printStackTrace();
                        if (fileOutputStream2 != null) {
                            try {
                                fileOutputStream2.close();
                                return;
                            } catch (IOException e6) {
                                e6.printStackTrace();
                                return;
                            }
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream2 = fileOutputStream;
                        if (fileOutputStream2 != null) {
                            try {
                                fileOutputStream2.close();
                            } catch (IOException e7) {
                                e7.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } else {
                    fileOutputStream = null;
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e8) {
                        e8.printStackTrace();
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e9) {
            e = e9;
        } catch (IOException e10) {
            e = e10;
        } catch (Exception e11) {
            e = e11;
        }
    }
}
