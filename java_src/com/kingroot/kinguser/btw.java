package com.kingroot.kinguser;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.LinkedHashMap;
/* loaded from: classes.dex */
public class btw {
    LinkedHashMap<String, btv> bNR = new LinkedHashMap<>();
    LinkedHashMap<String, btp> bNS = new LinkedHashMap<>();
    ArrayList<String> bNT = new ArrayList<>();
    bts bNU = new bts();
    long bNV = 0;
    String bNW = null;

    /* JADX WARN: Removed duplicated region for block: B:18:0x0045  */
    /* renamed from: nf */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m5517nf(String str) {
        RandomAccessFile randomAccessFile;
        this.bNW = str;
        try {
            randomAccessFile = new RandomAccessFile(str, "r");
            if (randomAccessFile != null) {
                try {
                    try {
                        this.bNV = randomAccessFile.length();
                        m5518b(randomAccessFile);
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                        }
                        but.m5461i("ZipFileParser", "readEndOfCentralDirRecord finished.");
                        aib();
                        but.m5461i("ZipFileParser", "readCentralDirFileHeaderList finished.");
                        aic();
                        but.m5461i("ZipFileParser", "readLocalFileHeader finished.");
                    }
                } catch (Throwable th) {
                    th = th;
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    throw th;
                }
            }
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
        } catch (Exception e2) {
            e = e2;
            randomAccessFile = null;
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
            if (randomAccessFile != null) {
            }
            throw th;
        }
        but.m5461i("ZipFileParser", "readEndOfCentralDirRecord finished.");
        aib();
        but.m5461i("ZipFileParser", "readCentralDirFileHeaderList finished.");
        aic();
        but.m5461i("ZipFileParser", "readLocalFileHeader finished.");
    }

    /* renamed from: b */
    private void m5518b(RandomAccessFile randomAccessFile) {
        long j = 1024 > this.bNV ? this.bNV : 1024L;
        byte[] bArr = new byte[1024];
        try {
            randomAccessFile.skipBytes((int) (this.bNV - j));
            randomAccessFile.read(bArr, 0, (int) j);
        } catch (IOException e) {
            e.printStackTrace();
        }
        for (int i = 0; i < j - 4; i++) {
            if ((bArr[i] << 24) + (bArr[i + 1] << 16) + (bArr[i + 2] << 8) + bArr[i + 3] == 1347093766) {
                try {
                    DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr, i + 4, (int) (j - (i + 4))));
                    this.bNU.m5525a(dataInputStream);
                    dataInputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void aib() {
        DataInputStream dataInputStream;
        DataInputStream dataInputStream2 = null;
        try {
            try {
                dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(this.bNW)));
                try {
                    dataInputStream.skip(this.bNU.bNL);
                    boolean z = false;
                    while (dataInputStream.available() >= 4 && !z) {
                        switch (dataInputStream.readInt()) {
                            case 1347092738:
                                btp btpVar = new btp();
                                btpVar.m5531a(dataInputStream);
                                String str = new String(btpVar.bNB, Charset.defaultCharset().name());
                                if (str.startsWith("META-INF/")) {
                                    this.bNT.add(str);
                                }
                                this.bNS.put(str, btpVar);
                                break;
                            case 1347093766:
                                z = true;
                                break;
                        }
                    }
                    if (dataInputStream != null) {
                        dataInputStream.close();
                    }
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    if (dataInputStream != null) {
                        dataInputStream.close();
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    dataInputStream2.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            dataInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void aic() {
        DataInputStream dataInputStream;
        DataInputStream dataInputStream2 = null;
        try {
            dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(this.bNW)));
            boolean z = false;
            while (dataInputStream.available() >= 4 && !z) {
                try {
                    switch (dataInputStream.readInt()) {
                        case 1347092738:
                            z = true;
                            break;
                        case 1347093252:
                            btv btvVar = new btv();
                            btvVar.m5519a(dataInputStream);
                            String str = new String(btvVar.bNB, Charset.defaultCharset().name());
                            btp btpVar = this.bNS.get(str);
                            btpVar.bNu = btvVar.bNP;
                            if (btpVar.bNu > 0) {
                                btpVar.bNC = (byte[]) btvVar.bNQ.clone();
                            }
                            btvVar.bNr = btpVar.bNr;
                            btvVar.bNs = btpVar.bNs;
                            btvVar.bNq = btpVar.bNq;
                            dataInputStream.skipBytes(btvVar.bNr);
                            this.bNR.put(str, btvVar);
                            break;
                        case 1347093766:
                            z = true;
                            break;
                        case 1347094280:
                            dataInputStream.skipBytes(12);
                            break;
                    }
                } catch (Exception e) {
                    e = e;
                    dataInputStream2 = dataInputStream;
                    try {
                        e.printStackTrace();
                        if (dataInputStream2 != null) {
                            dataInputStream2.close();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        dataInputStream = dataInputStream2;
                        if (dataInputStream != null) {
                            dataInputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (dataInputStream != null) {
                    }
                    throw th;
                }
            }
            if (dataInputStream != null) {
                dataInputStream.close();
            }
        } catch (Exception e2) {
            e = e2;
        } catch (Throwable th3) {
            th = th3;
            dataInputStream = null;
        }
    }

    /* renamed from: ng */
    public btp m5516ng(String str) {
        return this.bNS.get(str);
    }

    /* renamed from: nh */
    public int m5515nh(String str) {
        btp btpVar = this.bNS.get(str);
        if (btpVar == null) {
            throw new FileNotFoundException();
        }
        btv btvVar = this.bNR.get(str);
        if (btvVar == null) {
            throw new FileNotFoundException();
        }
        short s = btvVar.bNP;
        return btpVar.offset + s + btvVar.bNt + 30;
    }
}
