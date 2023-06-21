package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Environment;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.support.p004v4.util.LruCache;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.apa;
import com.kingroot.kinguser.distribution.examination.entity.ExamRecommendAppInfo;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class apv {
    private apa.AbstractC1401a aJB;
    private LruCache<String, Bitmap> aJy;
    private static final String TAG = aiq.arY + "_ImageManager";
    private static final int CACHE_SIZE = (int) ((Runtime.getRuntime().maxMemory() / 1024) / 8);
    private static final Map<String, InterfaceC1441b> aJz = Collections.synchronizedMap(new HashMap());
    private static final Map<String, InterfaceC1440a> aJA = Collections.synchronizedMap(new HashMap());
    private static final cce<apv> aGq = new cce<apv>() { // from class: com.kingroot.kinguser.apv.3
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: LQ */
        public apv create() {
            return new apv();
        }
    };

    /* renamed from: com.kingroot.kinguser.apv$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1440a {
        @WorkerThread
        /* renamed from: fk */
        void mo9707fk(String str);

        @WorkerThread
        /* renamed from: i */
        void mo9706i(String str, File file);

        @WorkerThread
        /* renamed from: j */
        void mo9705j(String str, File file);
    }

    /* renamed from: com.kingroot.kinguser.apv$b */
    /* loaded from: classes.dex */
    public interface InterfaceC1441b {
        @WorkerThread
        /* renamed from: a */
        void mo4137a(String str, Bitmap bitmap);

        @WorkerThread
        /* renamed from: eE */
        void mo4136eE(String str);
    }

    private apv() {
        this.aJB = new apa.AbstractC1401a() { // from class: com.kingroot.kinguser.apv.1
            @Override // com.kingroot.kinguser.apa.AbstractC1401a
            /* renamed from: m */
            public void mo9710m(bom bomVar) {
                super.mo9710m(bomVar);
                synchronized (apv.aJz) {
                    InterfaceC1441b interfaceC1441b = (InterfaceC1441b) apv.aJz.get(bomVar.getUrl());
                    if (interfaceC1441b != null) {
                        interfaceC1441b.mo4137a(bomVar.getUrl(), apv.this.m9718ic(bomVar.getUrl()));
                        apv.aJz.remove(bomVar.getUrl());
                    }
                    InterfaceC1440a interfaceC1440a = (InterfaceC1440a) apv.aJA.get(bomVar.getUrl());
                    if (interfaceC1440a != null) {
                        interfaceC1440a.mo9706i(bomVar.getUrl(), new File(bomVar.mo5956KI()));
                        apv.aJA.remove(bomVar.getUrl());
                    }
                }
            }

            @Override // com.kingroot.kinguser.apa.AbstractC1401a
            /* renamed from: k */
            public void mo9711k(bom bomVar) {
                super.mo9711k(bomVar);
                synchronized (apv.aJz) {
                    InterfaceC1441b interfaceC1441b = (InterfaceC1441b) apv.aJz.get(bomVar.getUrl());
                    if (interfaceC1441b != null) {
                        interfaceC1441b.mo4136eE(bomVar.getUrl());
                        apv.aJz.remove(bomVar.getUrl());
                    }
                    InterfaceC1440a interfaceC1440a = (InterfaceC1440a) apv.aJA.get(bomVar.getUrl());
                    if (interfaceC1440a != null) {
                        interfaceC1440a.mo9707fk(bomVar.getUrl());
                        apv.aJA.remove(bomVar.getUrl());
                    }
                }
            }
        };
        this.aJy = new LruCache<String, Bitmap>(CACHE_SIZE) { // from class: com.kingroot.kinguser.apv.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.support.p004v4.util.LruCache
            @SuppressLint({"NewApi"})
            /* renamed from: b */
            public int sizeOf(String str, Bitmap bitmap) {
                return Build.VERSION.SDK_INT < 12 ? (bitmap.getRowBytes() * bitmap.getHeight()) / 1024 : bitmap.getByteCount() / 1024;
            }
        };
    }

    /* renamed from: LO */
    public static apv m9735LO() {
        return aGq.get();
    }

    /* renamed from: c */
    public boolean m9723c(@NonNull ExamRecommendAppInfo examRecommendAppInfo) {
        if (examRecommendAppInfo == null) {
            return false;
        }
        for (String str : examRecommendAppInfo.m4107Kk()) {
            if (!m9720ia(str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: ia */
    public boolean m9720ia(String str) {
        File file = new File(m9716ie(str));
        return file.exists() && file.isFile();
    }

    @NonNull
    /* renamed from: d */
    public List<File> m9722d(ExamRecommendAppInfo examRecommendAppInfo) {
        ArrayList arrayList = new ArrayList();
        if (examRecommendAppInfo == null) {
            return arrayList;
        }
        for (String str : examRecommendAppInfo.m4107Kk()) {
            File m9719ib = m9719ib(str);
            if (m9719ib != null) {
                arrayList.add(m9719ib);
            }
        }
        return arrayList;
    }

    @Nullable
    /* renamed from: ib */
    public File m9719ib(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new File(m9716ie(str));
    }

    /* renamed from: a */
    public void m9727a(@NonNull final List<String> list, @NonNull final InterfaceC1441b interfaceC1441b) {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.apv.4
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (list != null && interfaceC1441b != null) {
                    Map<String, Bitmap> m9726aY = apv.this.m9726aY(list);
                    for (String str : m9726aY.keySet()) {
                        interfaceC1441b.mo4137a(str, m9726aY.get(str));
                    }
                }
            }
        }));
    }

    @WorkerThread
    @NonNull
    /* renamed from: aY */
    public Map<String, Bitmap> m9726aY(@NonNull List<String> list) {
        HashMap hashMap = new HashMap();
        for (String str : list) {
            Bitmap m9718ic = m9718ic(str);
            if (m9718ic != null) {
                hashMap.put(str, m9718ic);
            }
        }
        return hashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001d, code lost:
        if (r0.isRecycled() != false) goto L7;
     */
    @Nullable
    /* renamed from: ic */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Bitmap m9718ic(String str) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        if (TextUtils.isEmpty(str) || !m9720ia(str)) {
            return null;
        }
        Bitmap bitmap = this.aJy.get(str);
        if (bitmap != null) {
            try {
            } catch (IOException e) {
                fileInputStream = null;
                C3945za.m1340c(fileInputStream);
                return bitmap;
            } catch (Throwable th) {
                th = th;
                fileInputStream = null;
                C3945za.m1340c(fileInputStream);
                throw th;
            }
        }
        File file = new File(m9716ie(str));
        fileInputStream = new FileInputStream(file);
        try {
            bitmap = BitmapFactory.decodeFileDescriptor(fileInputStream.getFD());
            if (bitmap != null) {
                this.aJy.put(str, bitmap);
            } else if (file.isFile() && file.exists()) {
                file.delete();
            }
            fileInputStream.close();
            fileInputStream2 = fileInputStream;
            C3945za.m1340c(fileInputStream2);
            return bitmap;
        } catch (IOException e2) {
            C3945za.m1340c(fileInputStream);
            return bitmap;
        } catch (Throwable th2) {
            th = th2;
            C3945za.m1340c(fileInputStream);
            throw th;
        }
    }

    /* renamed from: e */
    public void m9721e(@NonNull ExamRecommendAppInfo examRecommendAppInfo) {
        if (examRecommendAppInfo != null && !m9723c(examRecommendAppInfo)) {
            for (String str : examRecommendAppInfo.m4107Kk()) {
                m9730a(str, (InterfaceC1441b) null);
            }
        }
    }

    /* renamed from: a */
    public void m9728a(@NonNull List<String> list, InterfaceC1440a interfaceC1440a) {
        for (String str : list) {
            m9731a(str, interfaceC1440a);
        }
    }

    /* renamed from: a */
    public void m9731a(@NonNull String str, InterfaceC1440a interfaceC1440a) {
        if (TextUtils.isEmpty(str)) {
            if (interfaceC1440a != null) {
                interfaceC1440a.mo9707fk(str);
                return;
            }
            return;
        }
        m9729a(str, null, interfaceC1440a);
    }

    /* renamed from: id */
    public void m9717id(@NonNull String str) {
        m9731a(str, (InterfaceC1440a) null);
    }

    /* renamed from: a */
    public void m9729a(@NonNull final String str, @Nullable final InterfaceC1441b interfaceC1441b, final InterfaceC1440a interfaceC1440a) {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.apv.5
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                Bitmap m9718ic;
                boolean z = false;
                super.run();
                boolean z2 = true;
                if (interfaceC1441b != null && (m9718ic = apv.this.m9718ic(str)) != null) {
                    interfaceC1441b.mo4137a(str, m9718ic);
                    z2 = false;
                }
                File file = new File(apv.this.m9716ie(str));
                if (!file.isFile() || !file.exists()) {
                    z = z2;
                } else if (interfaceC1440a != null) {
                    interfaceC1440a.mo9705j(str, new File(apv.this.m9716ie(str)));
                }
                if (z) {
                    apa.C1402b c1402b = new apa.C1402b();
                    c1402b.url = str;
                    c1402b.aHa = apv.this.m9734LP();
                    c1402b.aGZ = apv.this.m9715if(str);
                    if (interfaceC1441b != null) {
                        apv.aJz.put(str, interfaceC1441b);
                    }
                    if (interfaceC1440a != null) {
                        apv.aJA.put(str, interfaceC1440a);
                    }
                    aos.m9900Ku().mo9865a(c1402b, apv.this.aJB);
                }
            }
        }));
    }

    /* renamed from: a */
    public void m9730a(@NonNull String str, @Nullable InterfaceC1441b interfaceC1441b) {
        m9729a(str, interfaceC1441b, null);
    }

    /* renamed from: b */
    public void m9724b(@NonNull List<String> list, @Nullable InterfaceC1441b interfaceC1441b) {
        for (String str : C3942yy.m1350e(list)) {
            m9730a(str, interfaceC1441b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ie */
    public String m9716ie(@NonNull String str) {
        return TextUtils.isEmpty(str) ? "" : m9734LP() + File.separator + m9715if(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    /* renamed from: if */
    public String m9715if(@NonNull String str) {
        return aah.m13002cO(str);
    }

    /* renamed from: LP */
    public String m9734LP() {
        String str;
        if (bgr.m7092iZ()) {
            str = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "download" + File.separator + "image";
        } else {
            str = KApplication.m13453ge().getFilesDir().getAbsolutePath() + File.separator + "image";
        }
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    /* renamed from: ig */
    public boolean m9714ig(String str) {
        return this.aJy.get(str) != null;
    }
}
