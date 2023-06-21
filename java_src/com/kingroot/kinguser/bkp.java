package com.kingroot.kinguser;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public class bkp {
    /* renamed from: c */
    public static void m6557c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x004a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0045 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m6556c(File file, File file2) {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        if (file2.exists()) {
            file2.delete();
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
            } catch (IOException e) {
                e = e;
                fileOutputStream = null;
                fileInputStream2 = fileInputStream;
            } catch (Throwable th) {
                th = th;
                fileOutputStream = null;
            }
        } catch (IOException e2) {
            e = e2;
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
            fileInputStream = null;
        }
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e3) {
                }
            }
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e4) {
                }
            }
            return true;
        } catch (IOException e5) {
            e = e5;
            fileInputStream2 = fileInputStream;
            try {
                e.printStackTrace();
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e6) {
                    }
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                        return false;
                    } catch (IOException e7) {
                        return false;
                    }
                }
                return false;
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e8) {
                    }
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e9) {
                    }
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            if (fileInputStream != null) {
            }
            if (fileOutputStream != null) {
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x008d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x009c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0097 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0092 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m6554d(File file, File file2) {
        FileChannel fileChannel;
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream2;
        FileOutputStream fileOutputStream2;
        FileChannel fileChannel2 = null;
        try {
            file2.createNewFile();
            fileOutputStream = new FileOutputStream(file2);
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    fileChannel = fileOutputStream.getChannel();
                    try {
                        fileChannel2 = fileInputStream.getChannel();
                        long size = fileChannel2.size();
                        for (long j = size; j > 0; j -= fileChannel2.transferTo(size - j, j, fileChannel)) {
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        if (fileChannel != null) {
                            try {
                                fileChannel.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        if (fileChannel2 == null) {
                            return true;
                        }
                        try {
                            fileChannel2.close();
                            return true;
                        } catch (IOException e4) {
                            e4.printStackTrace();
                            return true;
                        }
                    } catch (Exception e5) {
                        e = e5;
                        fileInputStream2 = fileInputStream;
                        fileOutputStream2 = fileOutputStream;
                        try {
                            e.printStackTrace();
                            file2.delete();
                            if (fileOutputStream2 != null) {
                                try {
                                    fileOutputStream2.close();
                                } catch (IOException e6) {
                                    e6.printStackTrace();
                                }
                            }
                            if (fileInputStream2 != null) {
                                try {
                                    fileInputStream2.close();
                                } catch (IOException e7) {
                                    e7.printStackTrace();
                                }
                            }
                            if (fileChannel != null) {
                                try {
                                    fileChannel.close();
                                } catch (IOException e8) {
                                    e8.printStackTrace();
                                }
                            }
                            if (fileChannel2 != null) {
                                try {
                                    fileChannel2.close();
                                } catch (IOException e9) {
                                    e9.printStackTrace();
                                }
                            }
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            fileInputStream = fileInputStream2;
                            fileOutputStream = fileOutputStream2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e10) {
                                    e10.printStackTrace();
                                }
                            }
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e11) {
                                    e11.printStackTrace();
                                }
                            }
                            if (fileChannel != null) {
                                try {
                                    fileChannel.close();
                                } catch (IOException e12) {
                                    e12.printStackTrace();
                                }
                            }
                            if (fileChannel2 != null) {
                                try {
                                    fileChannel2.close();
                                } catch (IOException e13) {
                                    e13.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileOutputStream != null) {
                        }
                        if (fileInputStream != null) {
                        }
                        if (fileChannel != null) {
                        }
                        if (fileChannel2 != null) {
                        }
                        throw th;
                    }
                } catch (Exception e14) {
                    e = e14;
                    fileChannel = null;
                    fileInputStream2 = fileInputStream;
                    fileOutputStream2 = fileOutputStream;
                } catch (Throwable th3) {
                    th = th3;
                    fileChannel = null;
                }
            } catch (Exception e15) {
                e = e15;
                fileChannel = null;
                fileInputStream2 = null;
                fileOutputStream2 = fileOutputStream;
            } catch (Throwable th4) {
                th = th4;
                fileChannel = null;
                fileInputStream = null;
            }
        } catch (Exception e16) {
            e = e16;
            fileChannel = null;
            fileInputStream2 = null;
            fileOutputStream2 = null;
        } catch (Throwable th5) {
            th = th5;
            fileChannel = null;
            fileInputStream = null;
            fileOutputStream = null;
        }
    }

    /* renamed from: cz */
    public static boolean m6555cz(String str) {
        if (!str.endsWith(File.separator)) {
            str = str + File.separator;
        }
        File file = new File(str);
        if (file.exists()) {
            if (!file.isDirectory()) {
                return file.delete();
            }
            File[] listFiles = file.listFiles();
            boolean z = true;
            for (int i = 0; i < listFiles.length; i++) {
                if (listFiles[i].isFile()) {
                    z = deleteFile(listFiles[i].getAbsolutePath());
                    if (!z) {
                        break;
                    }
                } else {
                    z = m6555cz(listFiles[i].getAbsolutePath());
                    if (!z) {
                        break;
                    }
                }
            }
            return z && file.delete();
        }
        return false;
    }

    public static boolean deleteFile(String str) {
        File file = new File(str);
        if (file.delete()) {
            return true;
        }
        return file.delete();
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x003c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m6558I(File file) {
        FileInputStream fileInputStream;
        String str = "";
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            fileInputStream = new FileInputStream(file);
            try {
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        messageDigest.update(bArr, 0, read);
                    }
                    str = m6553w(messageDigest.digest());
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e) {
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e3) {
                        }
                    }
                    return str;
                }
            } catch (Throwable th) {
                th = th;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e4) {
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
            e = e5;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
            if (fileInputStream != null) {
            }
            throw th;
        }
        return str;
    }

    /* renamed from: w */
    public static String m6553w(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append("0123456789abcdef".charAt((b >> 4) & 15)).append("0123456789abcdef".charAt(b & 15));
        }
        return sb.toString();
    }
}
