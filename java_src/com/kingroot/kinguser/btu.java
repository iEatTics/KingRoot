package com.kingroot.kinguser;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes.dex */
public class btu {
    private final String bNN;
    private final String bNO;

    public btu(String str, String str2) {
        this.bNN = str;
        this.bNO = str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x008d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x006d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x00e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0088 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x00dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0083 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x00d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0068 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:147:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:149:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        ZipFile zipFile;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        fileOutputStream2 = null;
        fileOutputStream2 = null;
        fileOutputStream2 = null;
        fileOutputStream2 = null;
        fileOutputStream2 = null;
        fileOutputStream2 = null;
        InputStream inputStream = null;
        FileOutputStream fileOutputStream3 = null;
        try {
            zipFile = new ZipFile(this.bNN);
            try {
                if (!new File(this.bNN).exists()) {
                    if (0 != 0) {
                        try {
                            inputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    if (0 != 0) {
                        try {
                            fileOutputStream3.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    if (zipFile != null) {
                        try {
                            zipFile.close();
                            return;
                        } catch (IOException e3) {
                            e3.printStackTrace();
                            return;
                        }
                    }
                    return;
                }
                ZipEntry entry = zipFile.getEntry("META-INF/MANIFEST.MF");
                try {
                    if (entry != null) {
                        bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(entry));
                        try {
                            fileOutputStream = new FileOutputStream(new File(this.bNO), false);
                        } catch (IOException e4) {
                            e = e4;
                            bufferedInputStream2 = bufferedInputStream;
                        }
                        try {
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int read = bufferedInputStream.read(bArr, 0, bArr.length);
                                fileOutputStream2 = read;
                                if (read != -1) {
                                    fileOutputStream.write(bArr, 0, read);
                                }
                            }
                            if (bufferedInputStream != null) {
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e6) {
                                    e6.printStackTrace();
                                }
                            }
                            if (zipFile == null) {
                                try {
                                    zipFile.close();
                                    return;
                                } catch (IOException e7) {
                                    e7.printStackTrace();
                                    return;
                                }
                            }
                            return;
                        } catch (IOException e8) {
                            e = e8;
                            fileOutputStream2 = fileOutputStream;
                            bufferedInputStream2 = bufferedInputStream;
                            try {
                                e.printStackTrace();
                                if (bufferedInputStream2 != null) {
                                    try {
                                        bufferedInputStream2.close();
                                    } catch (IOException e9) {
                                        e9.printStackTrace();
                                    }
                                }
                                if (fileOutputStream2 != null) {
                                    try {
                                        fileOutputStream2.close();
                                    } catch (IOException e10) {
                                        e10.printStackTrace();
                                    }
                                }
                                if (zipFile == null) {
                                    try {
                                        zipFile.close();
                                        return;
                                    } catch (IOException e11) {
                                        e11.printStackTrace();
                                        return;
                                    }
                                }
                                return;
                            } catch (Throwable th) {
                                th = th;
                                bufferedInputStream = bufferedInputStream2;
                                if (bufferedInputStream != null) {
                                    try {
                                        bufferedInputStream.close();
                                    } catch (IOException e12) {
                                        e12.printStackTrace();
                                    }
                                }
                                if (fileOutputStream2 != null) {
                                    try {
                                        fileOutputStream2.close();
                                    } catch (IOException e13) {
                                        e13.printStackTrace();
                                    }
                                }
                                if (zipFile != null) {
                                    try {
                                        zipFile.close();
                                    } catch (IOException e14) {
                                        e14.printStackTrace();
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream2 = fileOutputStream;
                            if (bufferedInputStream != null) {
                            }
                            if (fileOutputStream2 != null) {
                            }
                            if (zipFile != null) {
                            }
                            throw th;
                        }
                    }
                    ZipEntry entry2 = zipFile.getEntry("META-INF\\MANIFEST.MF");
                    if (entry2 != null) {
                        bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(entry2));
                        try {
                            fileOutputStream = new FileOutputStream(new File(this.bNO), false);
                        } catch (IOException e15) {
                            e = e15;
                            bufferedInputStream2 = bufferedInputStream;
                        }
                        try {
                            byte[] bArr2 = new byte[1024];
                            while (true) {
                                int read2 = bufferedInputStream.read(bArr2, 0, bArr2.length);
                                fileOutputStream2 = read2;
                                if (read2 != -1) {
                                    fileOutputStream.write(bArr2, 0, read2);
                                }
                            }
                            if (bufferedInputStream != null) {
                            }
                            if (fileOutputStream != null) {
                            }
                            if (zipFile == null) {
                            }
                        } catch (IOException e16) {
                            e = e16;
                            fileOutputStream2 = fileOutputStream;
                            bufferedInputStream2 = bufferedInputStream;
                            e.printStackTrace();
                            if (bufferedInputStream2 != null) {
                            }
                            if (fileOutputStream2 != null) {
                            }
                            if (zipFile == null) {
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            fileOutputStream2 = fileOutputStream;
                            if (bufferedInputStream != null) {
                            }
                            if (fileOutputStream2 != null) {
                            }
                            if (zipFile != null) {
                            }
                            throw th;
                        }
                    } else {
                        fileOutputStream = null;
                        bufferedInputStream = null;
                        if (bufferedInputStream != null) {
                        }
                        if (fileOutputStream != null) {
                        }
                        if (zipFile == null) {
                        }
                    }
                    if (bufferedInputStream != null) {
                    }
                    if (fileOutputStream != null) {
                    }
                    if (zipFile == null) {
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (IOException e17) {
                e = e17;
                bufferedInputStream2 = null;
            } catch (Throwable th5) {
                th = th5;
                bufferedInputStream = null;
            }
        } catch (IOException e18) {
            e = e18;
            zipFile = null;
            bufferedInputStream2 = null;
        } catch (Throwable th6) {
            th = th6;
            zipFile = null;
            bufferedInputStream = null;
        }
    }
}
