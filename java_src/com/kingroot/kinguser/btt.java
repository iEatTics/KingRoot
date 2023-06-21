package com.kingroot.kinguser;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes.dex */
public class btt {
    private final byte[] bNM = new byte[4096];

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:128:0x009e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0099 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x00a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:178:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m5521u(String str, String str2, String str3) {
        DataInputStream dataInputStream;
        ?? r0;
        RandomAccessFile randomAccessFile;
        DataOutputStream dataOutputStream;
        DataInputStream dataInputStream2;
        DataOutputStream dataOutputStream2 = null;
        RandomAccessFile randomAccessFile2 = null;
        try {
            btw btwVar = new btw();
            try {
                try {
                    btwVar.m5517nf(str);
                } catch (IOException e) {
                    e.printStackTrace();
                    try {
                        throw new Throwable();
                    } catch (Throwable th) {
                        randomAccessFile2 = null;
                        dataInputStream = null;
                        r0 = -1;
                        if (randomAccessFile2 != null) {
                        }
                        if (dataOutputStream2 != null) {
                        }
                        if (dataInputStream == null) {
                        }
                    }
                }
                try {
                    dataInputStream2 = new DataInputStream(new BufferedInputStream(new FileInputStream(str2)));
                    try {
                        try {
                            dataOutputStream = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(str3)));
                            try {
                                try {
                                    randomAccessFile = new RandomAccessFile(str, "r");
                                    try {
                                        LinkedList linkedList = new LinkedList();
                                        try {
                                            try {
                                                int readInt = dataInputStream2.readInt();
                                                for (int i = 0; i < readInt; i++) {
                                                    try {
                                                        try {
                                                            btp btpVar = new btp();
                                                            btpVar.m5529b(dataInputStream2);
                                                            linkedList.add(btpVar);
                                                        } catch (ClassNotFoundException e2) {
                                                            e2.printStackTrace();
                                                            throw new Throwable();
                                                        }
                                                    } catch (IOException e3) {
                                                        e3.printStackTrace();
                                                        throw new Throwable();
                                                    }
                                                }
                                                but.m5461i("GenNewApkV2", "read patch file headed finished.");
                                                try {
                                                    Iterator it = linkedList.iterator();
                                                    while (it.hasNext()) {
                                                        btp btpVar2 = (btp) it.next();
                                                        btpVar2.bNm = (short) 0;
                                                        if (btpVar2.bNA) {
                                                            m5523a(btpVar2, dataInputStream2, dataOutputStream);
                                                        } else {
                                                            m5522a(btpVar2, randomAccessFile, btwVar, dataOutputStream);
                                                        }
                                                    }
                                                    int size = dataOutputStream.size();
                                                    try {
                                                        Iterator it2 = linkedList.iterator();
                                                        while (it2.hasNext()) {
                                                            ((btp) it2.next()).m5530a(dataOutputStream);
                                                        }
                                                        try {
                                                            int readInt2 = dataInputStream2.readInt();
                                                            int size2 = dataOutputStream.size() - size;
                                                            if (readInt2 == 1347093766) {
                                                                bts btsVar = new bts();
                                                                btsVar.m5525a(dataInputStream2);
                                                                btsVar.bNL = size;
                                                                btsVar.bNK = size2;
                                                                btsVar.m5524a(dataOutputStream);
                                                                if (randomAccessFile != null) {
                                                                    try {
                                                                        randomAccessFile.close();
                                                                    } catch (IOException e4) {
                                                                        e4.printStackTrace();
                                                                    }
                                                                }
                                                                if (dataOutputStream != null) {
                                                                    try {
                                                                        dataOutputStream.close();
                                                                    } catch (IOException e5) {
                                                                        e5.printStackTrace();
                                                                    }
                                                                }
                                                                if (dataInputStream2 != null) {
                                                                    try {
                                                                        dataInputStream2.close();
                                                                        return 0;
                                                                    } catch (IOException e6) {
                                                                        e6.printStackTrace();
                                                                    }
                                                                }
                                                                return 0;
                                                            }
                                                            throw new Throwable();
                                                        } catch (Exception e7) {
                                                            e7.printStackTrace();
                                                            throw new Throwable();
                                                        }
                                                    } catch (IOException e8) {
                                                        e8.printStackTrace();
                                                        throw new Throwable();
                                                    }
                                                } catch (Exception e9) {
                                                    e9.printStackTrace();
                                                    throw new Throwable();
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                                if (randomAccessFile != null) {
                                                    try {
                                                        randomAccessFile.close();
                                                    } catch (IOException e10) {
                                                        e10.printStackTrace();
                                                    }
                                                }
                                                if (dataOutputStream != null) {
                                                    try {
                                                        dataOutputStream.close();
                                                    } catch (IOException e11) {
                                                        e11.printStackTrace();
                                                    }
                                                }
                                                if (dataInputStream2 != null) {
                                                    try {
                                                        dataInputStream2.close();
                                                    } catch (IOException e12) {
                                                        e12.printStackTrace();
                                                    }
                                                }
                                                throw th;
                                            }
                                        } catch (IOException e13) {
                                            e13.printStackTrace();
                                            throw new Throwable();
                                        }
                                    } catch (Throwable th3) {
                                        dataOutputStream2 = dataOutputStream;
                                        r0 = 0;
                                        randomAccessFile2 = randomAccessFile;
                                        dataInputStream = dataInputStream2;
                                        if (randomAccessFile2 != null) {
                                            try {
                                                randomAccessFile2.close();
                                            } catch (IOException e14) {
                                                e14.printStackTrace();
                                            }
                                        }
                                        if (dataOutputStream2 != null) {
                                            try {
                                                dataOutputStream2.close();
                                            } catch (IOException e15) {
                                                e15.printStackTrace();
                                            }
                                        }
                                        if (dataInputStream == null) {
                                            try {
                                                dataInputStream.close();
                                                return r0;
                                            } catch (IOException e16) {
                                                e16.printStackTrace();
                                                return r0;
                                            }
                                        }
                                        return r0;
                                    }
                                } catch (Throwable th4) {
                                    dataInputStream = dataInputStream2;
                                    r0 = randomAccessFile2;
                                    randomAccessFile2 = dataOutputStream2;
                                    dataOutputStream2 = dataOutputStream;
                                    if (randomAccessFile2 != null) {
                                    }
                                    if (dataOutputStream2 != null) {
                                    }
                                    if (dataInputStream == null) {
                                    }
                                }
                            } catch (FileNotFoundException e17) {
                                e17.printStackTrace();
                                try {
                                    throw new Throwable();
                                } catch (Throwable th5) {
                                    randomAccessFile2 = null;
                                    dataInputStream = dataInputStream2;
                                    r0 = -1;
                                    dataOutputStream2 = dataOutputStream;
                                    if (randomAccessFile2 != null) {
                                    }
                                    if (dataOutputStream2 != null) {
                                    }
                                    if (dataInputStream == null) {
                                    }
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                randomAccessFile = null;
                            }
                        } catch (Throwable th7) {
                            dataInputStream = dataInputStream2;
                            r0 = 0;
                            randomAccessFile2 = null;
                        }
                    } catch (FileNotFoundException e18) {
                        e18.printStackTrace();
                        throw new Throwable();
                    } catch (Throwable th8) {
                        th = th8;
                        randomAccessFile = null;
                        dataOutputStream = null;
                    }
                } catch (FileNotFoundException e19) {
                    e19.printStackTrace();
                    throw new Throwable();
                }
            } catch (Throwable th9) {
                th = th9;
                randomAccessFile = null;
                dataOutputStream = null;
                dataInputStream2 = null;
            }
        } catch (Throwable th10) {
            dataInputStream = null;
            r0 = 0;
            randomAccessFile2 = null;
        }
    }

    /* renamed from: a */
    private void m5522a(btp btpVar, RandomAccessFile randomAccessFile, btw btwVar, DataOutputStream dataOutputStream) {
        String str;
        btp m5516ng = btwVar.m5516ng(new String(btpVar.bNB, "utf-8"));
        if (m5516ng == null) {
            throw new Exception();
        }
        btpVar.bNn = m5516ng.bNn;
        btpVar.bNr = m5516ng.bNr;
        btpVar.bNq = m5516ng.bNq;
        btpVar.bNu = m5516ng.bNu;
        btpVar.bNC = m5516ng.bNC;
        btpVar.bNv = m5516ng.bNv;
        btpVar.bND = m5516ng.bND;
        btv.m5520a(btpVar, dataOutputStream);
        int i = btpVar.bNr;
        if (i > 0) {
            randomAccessFile.seek(btwVar.m5515nh(str));
            int i2 = 0;
            while (i > 0 && i2 >= 0) {
                i2 = randomAccessFile.read(this.bNM, 0, i > 4096 ? 4096 : i);
                if (i2 > 0) {
                    dataOutputStream.write(this.bNM, 0, i2);
                    i -= i2;
                }
            }
        }
        if (btpVar.aia()) {
            btq.m5528a(btpVar, dataOutputStream);
        }
    }

    /* renamed from: a */
    private void m5523a(btp btpVar, DataInputStream dataInputStream, DataOutputStream dataOutputStream) {
        btv.m5520a(btpVar, dataOutputStream);
        int i = btpVar.bNr;
        int i2 = 0;
        while (i > 0 && i2 >= 0) {
            i2 = dataInputStream.read(this.bNM, 0, i > 4096 ? 4096 : i);
            if (i2 > 0) {
                dataOutputStream.write(this.bNM, 0, i2);
                i -= i2;
            }
        }
        if (btpVar.aia()) {
            btq.m5528a(btpVar, dataOutputStream);
        }
    }
}
