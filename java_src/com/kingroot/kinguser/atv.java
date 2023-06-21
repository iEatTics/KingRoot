package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.widget.ImageView;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.ati;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class atv extends acq<Bitmap, ImageView, C1594a> {
    private static volatile atv aQn;
    private Map<String, C1594a> aQo;
    private ati.AbstractC1523a aQp;
    private final Handler mHandler;

    /* renamed from: com.kingroot.kinguser.atv$a */
    /* loaded from: classes.dex */
    public static class C1594a {
        public ImageView aQw;

        /* renamed from: ok */
        public String f1550ok = "";
        public float aQu = 0.0f;
        public float aQv = 0.0f;
    }

    private atv() {
        super(10, true, m9133PB());
        this.aQo = new HashMap();
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.kingroot.kinguser.atv.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                switch (message.what) {
                    case 0:
                        if (message.obj != null && (message.obj instanceof Bitmap)) {
                            ((C1594a) atv.this.aQo.get(message.getData().getString("urlImage"))).aQw.setImageBitmap((Bitmap) message.obj);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        };
        this.aQp = new ati.AbstractC1523a() { // from class: com.kingroot.kinguser.atv.2
            @Override // com.kingroot.kinguser.ati.AbstractC1523a
            /* renamed from: e */
            public void mo9121e(final bom bomVar) {
                final String mo5956KI = bomVar.mo5956KI();
                if (!mo5956KI.isEmpty()) {
                }
                final C1594a c1594a = (C1594a) atv.this.aQo.get(bomVar.getUrl());
                beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.atv.2.1
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        if (c1594a != null) {
                            Message obtainMessage = atv.this.mHandler.obtainMessage(0, atv.this.m9129a(c1594a, mo5956KI));
                            Bundle bundle = new Bundle();
                            bundle.putString("urlImage", bomVar.getUrl());
                            obtainMessage.setData(bundle);
                            atv.this.mHandler.sendMessageAtFrontOfQueue(obtainMessage);
                        }
                    }
                }));
                ati.m9278Pb().m9272n(bomVar);
            }

            @Override // com.kingroot.kinguser.ati.AbstractC1523a
            /* renamed from: b */
            public void mo9122b(bom bomVar) {
            }
        };
    }

    /* renamed from: PA */
    public static atv m9134PA() {
        if (aQn == null) {
            synchronized (atv.class) {
                if (aQn == null) {
                    aQn = new atv();
                }
            }
        }
        return aQn;
    }

    /* renamed from: PB */
    private static int m9133PB() {
        return (((ActivityManager) KApplication.m13453ge().getSystemService("activity")).getMemoryClass() * 1048576) / 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public Bitmap m9129a(C1594a c1594a, String str) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        int i;
        int i2 = 1;
        if (c1594a == null) {
            return null;
        }
        int i3 = (int) c1594a.aQv;
        int i4 = (int) c1594a.aQv;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inTempStorage = new byte[16384];
        options.inInputShareable = true;
        options.inPurgeable = true;
        try {
            fileInputStream = new FileInputStream(str);
            if (i3 != 0 && i4 != 0) {
                try {
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeFileDescriptor(fileInputStream.getFD(), null, options);
                    options.inJustDecodeBounds = false;
                    if (options.outWidth > i4 || options.outHeight > i3) {
                        int i5 = options.outWidth;
                        i2 = Math.round(options.outHeight / c1594a.aQv);
                        int round = Math.round(i5 / c1594a.aQu);
                        if (i2 >= round) {
                            i2 = round;
                        }
                        while ((i5 * i) / (i2 * i2) > i3 * i4 * 2) {
                            i2++;
                        }
                    }
                    options.inSampleSize = i2;
                } catch (IOException e) {
                    fileInputStream2 = fileInputStream;
                    C3945za.m1340c(fileInputStream2);
                    return null;
                } catch (Throwable th) {
                    th = th;
                    C3945za.m1340c(fileInputStream);
                    throw th;
                }
            }
            Bitmap decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileInputStream.getFD(), null, options);
            C3945za.m1340c(fileInputStream);
            return decodeFileDescriptor;
        } catch (IOException e2) {
            fileInputStream2 = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
    }

    @Override // com.kingroot.kinguser.acq
    /* renamed from: a */
    public Bitmap mo9124l(C1594a c1594a) {
        String str;
        String str2;
        String str3 = c1594a.f1550ok;
        if (TextUtils.isEmpty(str3)) {
            return null;
        }
        this.aQo.put(str3, c1594a);
        String str4 = aah.m13002cO(str3) + ".cache";
        if (bgr.m7092iZ()) {
            str = C3565ru.m2321iX() + File.separator + "KingUser" + File.separator + "gameboxPic" + File.separator + str4;
        } else {
            str = KApplication.m13453ge().getFilesDir().getAbsolutePath() + File.separator + "gameboxPic" + File.separator + str4;
        }
        if (!new File(str).exists()) {
            try {
                if (bgr.m7092iZ()) {
                    str2 = C3565ru.m2321iX() + File.separator + "KingUser" + File.separator + "gameboxPic";
                } else {
                    str2 = KApplication.m13453ge().getFilesDir().getAbsolutePath() + File.separator + "gameboxPic";
                }
                ati.C1524b c1524b = new ati.C1524b();
                c1524b.url = str3;
                c1524b.aNU = str4;
                c1524b.savePath = str2;
                ati.m9278Pb().m9277a(c1524b, this.aQp);
                return null;
            } catch (Exception e) {
            }
        }
        return m9129a(c1594a, str);
    }

    @Override // com.kingroot.kinguser.acq
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo9132a(ImageView imageView, Bitmap bitmap) {
        imageView.setImageBitmap(bitmap);
    }

    @Override // com.kingroot.kinguser.acq
    @SuppressLint({"NewApi"})
    /* renamed from: e */
    public int mo9123m(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return 0;
        }
        if (abd.m12839qb() >= 12) {
            return bitmap.getByteCount();
        }
        return bitmap.getWidth() * bitmap.getHeight();
    }
}
