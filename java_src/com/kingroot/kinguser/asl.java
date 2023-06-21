package com.kingroot.kinguser;

import android.os.Handler;
import android.os.HandlerThread;
import android.support.p004v4.media.session.PlaybackStateCompat;
import com.kingroot.common.app.KApplication;
import com.kingroot.loader.common.KlConst;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class asl {
    private static String aMT;
    private static String aMV;
    private Handler aMU;
    private static final String TAG = aiq.ask + "_RiskFileUpload";
    private static final long aMS = TimeUnit.SECONDS.toMillis(10);
    private static final cce<asl> sInstance = new cce<asl>() { // from class: com.kingroot.kinguser.asl.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Oc */
        public asl create() {
            return new asl();
        }
    };

    private asl() {
        aMT = Integer.toString(KApplication.m13445hY());
        m9434ir(aMT);
        m9454NX();
    }

    /* renamed from: ir */
    private void m9434ir(String str) {
        HandlerThread handlerThread = new HandlerThread("UFThread" + str);
        handlerThread.start();
        this.aMU = new Handler(handlerThread.getLooper());
    }

    /* renamed from: NW */
    public static asl m9455NW() {
        return sInstance.get();
    }

    /* renamed from: D */
    public void m9459D(final String str, final int i) {
        if (m9430iv(aMT)) {
            this.aMU.post(new Runnable() { // from class: com.kingroot.kinguser.asl.2
                @Override // java.lang.Runnable
                public void run() {
                    asl.this.aMU.sendEmptyMessage(1);
                    boolean m9431iu = asl.this.m9431iu(str);
                    String m9457F = asl.this.m9457F(str, i);
                    if (!m9457F.isEmpty()) {
                        long m9444at = asl.m9444at(m9457F, asl.aMV);
                        if (m9444at > 0) {
                            File file = new File(asl.aMV + m9457F);
                            if (file.exists()) {
                                file.delete();
                            }
                            if (!m9431iu || asl.m9442b(3, asl.aMS)) {
                                String str2 = asl.aMV + m9457F + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + m9444at + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR;
                                for (int i2 = 1; i2 <= m9444at; i2++) {
                                    asl.this.m9458E(str2 + i2, i);
                                }
                            }
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E */
    public void m9458E(String str, int i) {
        m9449a(26, str, m9431iu(str), i);
    }

    /* renamed from: is */
    private ArrayList<String> m9433is(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        File[] listFiles = new File(str).listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                arrayList.add(file.getAbsolutePath());
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F */
    public String m9457F(String str, int i) {
        String m9456G;
        int i2 = 3;
        do {
            m9456G = m9456G(str, i);
            i2--;
            if (!m9456G.isEmpty()) {
                i2 = 0;
                m9432it(str);
                continue;
            }
        } while (i2 != 0);
        return m9456G;
    }

    /* renamed from: NX */
    private void m9454NX() {
        File file = new File(KApplication.m13453ge().getFilesDir(), "rrm");
        if (!file.exists()) {
            file.mkdirs();
        }
        aMV = file.getAbsolutePath() + File.separator;
    }

    /* renamed from: G */
    private String m9456G(String str, int i) {
        String trim = str.trim();
        String str2 = Integer.toString(i) + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + trim.substring(trim.lastIndexOf("/") + 1);
        if (!new File(trim).exists() || !new File(trim).renameTo(new File(aMV + str2))) {
            return "";
        }
        return str2;
    }

    /* renamed from: it */
    private boolean m9432it(String str) {
        return C3563rs.deleteFile(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: iu */
    public boolean m9431iu(String str) {
        return new File(str).length() >= 102400;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: at */
    public static long m9444at(String str, String str2) {
        RandomAccessFile randomAccessFile;
        Throwable th;
        RandomAccessFile randomAccessFile2;
        BufferedOutputStream bufferedOutputStream;
        String str3;
        long length;
        BufferedOutputStream bufferedOutputStream2;
        BufferedOutputStream bufferedOutputStream3 = null;
        try {
            str3 = str2 + str;
            randomAccessFile = new RandomAccessFile(str3, "r");
            try {
                try {
                    length = randomAccessFile.length();
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e) {
                bufferedOutputStream = null;
                randomAccessFile2 = randomAccessFile;
            }
        } catch (Exception e2) {
            randomAccessFile2 = null;
            bufferedOutputStream = null;
        } catch (Throwable th3) {
            randomAccessFile = null;
            th = th3;
        }
        if (length < 1) {
            C3945za.m1340c(randomAccessFile);
            C3945za.m1340c((Closeable) null);
            return 0L;
        }
        long j = length / 524288;
        long j2 = length % 524288;
        String str4 = str3 + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + (j2 > 0 ? 1 + j : j) + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR;
        int i = 1;
        while (true) {
            int i2 = i;
            bufferedOutputStream2 = bufferedOutputStream3;
            if (i2 > j) {
                break;
            }
            try {
                bufferedOutputStream3 = new BufferedOutputStream(new FileOutputStream(str4 + i2));
                try {
                    long j3 = 524288 / PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                    long j4 = 524288 % PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                    for (int i3 = 0; i3 < j3; i3++) {
                        m9445a(randomAccessFile, bufferedOutputStream3, (long) PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                    }
                    if (j4 > 0) {
                        m9445a(randomAccessFile, bufferedOutputStream3, j4);
                    }
                    C3945za.m1340c(bufferedOutputStream3);
                    i = i2 + 1;
                } catch (Exception e3) {
                    bufferedOutputStream = bufferedOutputStream3;
                    randomAccessFile2 = randomAccessFile;
                    C3945za.m1340c(randomAccessFile2);
                    C3945za.m1340c(bufferedOutputStream);
                    j = 0;
                    return j;
                }
            } catch (Exception e4) {
                bufferedOutputStream = bufferedOutputStream2;
                randomAccessFile2 = randomAccessFile;
            } catch (Throwable th4) {
                th = th4;
                bufferedOutputStream3 = bufferedOutputStream2;
                C3945za.m1340c(randomAccessFile);
                C3945za.m1340c(bufferedOutputStream3);
                throw th;
            }
        }
        if (j2 > 0) {
            bufferedOutputStream3 = new BufferedOutputStream(new FileOutputStream(str4 + (1 + j)));
            try {
                m9445a(randomAccessFile, bufferedOutputStream3, j2);
                C3945za.m1340c(bufferedOutputStream3);
            } catch (Exception e5) {
                bufferedOutputStream = bufferedOutputStream3;
                randomAccessFile2 = randomAccessFile;
                C3945za.m1340c(randomAccessFile2);
                C3945za.m1340c(bufferedOutputStream);
                j = 0;
                return j;
            }
        } else {
            bufferedOutputStream3 = bufferedOutputStream2;
        }
        if (j2 > 0) {
            j++;
        }
        C3945za.m1340c(randomAccessFile);
        C3945za.m1340c(bufferedOutputStream3);
        return j;
    }

    /* renamed from: a */
    private static void m9445a(RandomAccessFile randomAccessFile, BufferedOutputStream bufferedOutputStream, long j) {
        byte[] bArr = new byte[(int) j];
        if (randomAccessFile.read(bArr) != -1) {
            bufferedOutputStream.write(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static boolean m9442b(int i, long j) {
        while (C3748vb.m1921O(KApplication.m13453ge()) != 0) {
            i--;
            if (i < 0) {
                return false;
            }
            try {
                Thread.sleep(j);
            } catch (InterruptedException e) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
        return true;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean m9449a(int i, String str, boolean z, int i2) {
        int m9460e;
        boolean z2 = false;
        int i3 = 2;
        if (m9436gv(i2)) {
            return false;
        }
        File file = new File(str);
        if (!file.exists() || !file.isFile()) {
            return false;
        }
        long length = file.length();
        if (!z && m9439c(i2, length)) {
            z = true;
        }
        while (true) {
            byte m1921O = C3748vb.m1921O(KApplication.m13453ge());
            if (!z || m1921O == 0) {
                try {
                    m9460e = ask.m9460e(new File(str), i);
                } catch (Throwable th) {
                }
                if (m9460e == 0) {
                    if (m1921O != 0) {
                        try {
                            m9438d(i2, file.length());
                        } catch (Throwable th2) {
                            z2 = true;
                            i3--;
                            if (i3 < 0) {
                                return z2;
                            }
                        }
                    }
                    m9435gw(i2);
                    if (!file.exists()) {
                        break;
                    }
                    file.delete();
                    break;
                } else if (m9460e == -4000 && i3 - 1 >= 0) {
                    Thread.sleep(1000L);
                } else {
                    return z2;
                }
            } else {
                return z2;
            }
        }
    }

    /* renamed from: c */
    private boolean m9439c(int i, long j) {
        return akp.m11162BJ().m11161l(String.format(Locale.getDefault(), "rfu_snow_%1$d", Integer.valueOf(i)), 0L) + j >= 2097152;
    }

    /* renamed from: d */
    private boolean m9438d(int i, long j) {
        String format = String.format(Locale.getDefault(), "rfu_snow_%1$d", Integer.valueOf(i));
        akp.m11162BJ().m11160m(format, akp.m11162BJ().m11161l(format, 0L) + j);
        return true;
    }

    /* renamed from: gv */
    public boolean m9436gv(int i) {
        String format = String.format(Locale.getDefault(), "rfu_cs_%1$d", Integer.valueOf(i));
        String format2 = String.format(Locale.getDefault(), "rfu_c_%1$d", Integer.valueOf(i));
        String format3 = String.format(Locale.getDefault(), "rfu_snow_%1$d", Integer.valueOf(i));
        long m11161l = akp.m11162BJ().m11161l(format, 0L);
        long currentTimeMillis = System.currentTimeMillis();
        if (Math.abs(currentTimeMillis - m11161l) <= 86400000) {
            return akp.m11162BJ().m11159w(format2, 0) + 1 >= 1000;
        }
        akp.m11162BJ().m11160m(format, currentTimeMillis);
        akp.m11162BJ().m11158x(format2, 0);
        akp.m11162BJ().m11160m(format3, 0L);
        return false;
    }

    /* renamed from: gw */
    private boolean m9435gw(int i) {
        String format = String.format(Locale.getDefault(), "rfu_c_%1$d", Integer.valueOf(i));
        int m11159w = akp.m11162BJ().m11159w(format, 0) + 1;
        akp.m11162BJ().m11158x(format, m11159w);
        return m11159w >= 1000;
    }

    /* renamed from: iv */
    private boolean m9430iv(String str) {
        if (this.aMU == null) {
            m9434ir(str);
        }
        return this.aMU != null;
    }

    /* renamed from: NY */
    public void m9453NY() {
        if (m9430iv(aMT)) {
            this.aMU.post(new Runnable() { // from class: com.kingroot.kinguser.asl.3
                @Override // java.lang.Runnable
                public void run() {
                    asl.this.aMU.sendEmptyMessage(1);
                    asl.this.m9452NZ();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: NZ */
    public void m9452NZ() {
        Iterator<String> it = m9433is(aMV).iterator();
        while (it.hasNext()) {
            String next = it.next();
            m9458E(next, m9429iw(next));
        }
    }

    /* renamed from: iw */
    private int m9429iw(String str) {
        String trim = str.trim();
        return Integer.valueOf(trim.substring(trim.lastIndexOf("/") + 1).substring(0, 4)).intValue();
    }
}
