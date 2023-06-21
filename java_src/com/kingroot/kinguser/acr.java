package com.kingroot.kinguser;

import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import java.io.FileInputStream;
import java.io.IOException;
/* loaded from: classes.dex */
public class acr {
    private acq<Object, ImageView, C0666b> abe;

    /* renamed from: com.kingroot.kinguser.acr$a */
    /* loaded from: classes.dex */
    public static class C0665a {
        public int abg = 1048576;
        public boolean abh = true;
        public int abi = 500;
        public boolean abj = false;
        public int abk = -1;
        public int abl = -1;
    }

    public acr(C0665a c0665a) {
        m12671a(c0665a == null ? m12661sd() : c0665a);
    }

    /* renamed from: a */
    private void m12671a(C0665a c0665a) {
        this.abe = new acq<Object, ImageView, C0666b>(c0665a.abi, c0665a.abh, c0665a.abg) { // from class: com.kingroot.kinguser.acr.1
            @Override // com.kingroot.kinguser.acq
            /* renamed from: a  reason: avoid collision after fix types in other method */
            public void mo9132a(ImageView imageView, Object obj) {
                if (obj != null) {
                    if (obj instanceof Integer) {
                        imageView.setImageResource(((Integer) obj).intValue());
                    } else if (obj instanceof Drawable) {
                        imageView.setImageDrawable((Drawable) obj);
                    } else if (obj instanceof Bitmap) {
                        imageView.setImageBitmap((Bitmap) obj);
                    }
                }
            }

            @Override // com.kingroot.kinguser.acq
            /* renamed from: b */
            public Object mo9124l(C0666b c0666b) {
                switch (c0666b.mType) {
                    case 0:
                        return acr.this.m12670a(c0666b);
                    case 1:
                        return c0666b.abm;
                    case 2:
                        return acr.this.m12662c((String) c0666b.abm, c0666b.abn, c0666b.abo);
                    default:
                        return null;
                }
            }

            @Override // com.kingroot.kinguser.acq
            /* renamed from: m */
            public int mo9123m(Object obj) {
                if (obj == null) {
                    return 0;
                }
                if (obj instanceof Integer) {
                    return 1;
                }
                if (obj instanceof Drawable) {
                    Drawable drawable = (Drawable) obj;
                    return drawable.getBounds().width() * drawable.getBounds().height();
                } else if (obj instanceof Bitmap) {
                    Bitmap bitmap = (Bitmap) obj;
                    return bitmap.getRowBytes() * bitmap.getHeight();
                } else {
                    return 0;
                }
            }
        };
    }

    /* renamed from: a */
    private void m12673a(ImageView imageView, Object obj, int i, Drawable drawable) {
        m12672a(imageView, obj, i, drawable, 0, 0);
    }

    /* renamed from: a */
    private void m12672a(ImageView imageView, Object obj, int i, Drawable drawable, int i2, int i3) {
        int hashCode;
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
        }
        C0666b c0666b = new C0666b();
        c0666b.abm = obj;
        c0666b.mType = i;
        c0666b.abo = i3;
        c0666b.abn = i2;
        if (obj instanceof Integer) {
            hashCode = ((Integer) obj).intValue();
        } else {
            hashCode = obj.hashCode();
        }
        this.abe.m12687a(c0666b, imageView, Integer.valueOf(hashCode));
    }

    /* renamed from: a */
    public void m12665a(String str, ImageView imageView, Drawable drawable) {
        m12673a(imageView, str, 0, drawable);
    }

    /* renamed from: a */
    public void m12667a(String str, ImageView imageView, int i) {
        m12665a(str, imageView, C3953zi.m1311pr().getDrawable(i));
    }

    /* renamed from: b */
    public void m12663b(String str, ImageView imageView, int i) {
        m12666a(str, imageView, i, 0, 0);
    }

    /* renamed from: a */
    public void m12664a(String str, ImageView imageView, Drawable drawable, int i, int i2) {
        m12672a(imageView, str, 2, drawable, i, i2);
    }

    /* renamed from: a */
    public void m12666a(String str, ImageView imageView, int i, int i2, int i3) {
        m12664a(str, imageView, C3953zi.m1311pr().getDrawable(i), i2, i3);
    }

    public void close() {
        this.abe.close();
    }

    public void pause() {
        this.abe.pause();
    }

    public void resume() {
        this.abe.resume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public Drawable m12670a(C0666b c0666b) {
        try {
            return C3952zh.m1312pq().getApplicationIcon((String) c0666b.abm);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public Bitmap m12662c(String str, int i, int i2) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        int i3 = 1;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inTempStorage = new byte[16384];
        options.inInputShareable = true;
        options.inPurgeable = true;
        try {
            fileInputStream = new FileInputStream(str);
            if (i2 != 0 && i != 0) {
                try {
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeFileDescriptor(fileInputStream.getFD(), null, options);
                    options.inJustDecodeBounds = false;
                    if (options.outWidth > i || options.outHeight > i2) {
                        int i4 = options.outWidth;
                        int i5 = options.outHeight;
                        i3 = Math.round(i5 / i2);
                        int round = Math.round(i4 / i);
                        if (i3 >= round) {
                            i3 = round;
                        }
                        while ((i4 * i5) / (i3 * i3) > i * i2 * 2) {
                            i3++;
                        }
                    }
                    options.inSampleSize = i3;
                } catch (IOException e) {
                    fileInputStream2 = fileInputStream;
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (IOException e2) {
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e3) {
                        }
                    }
                    throw th;
                }
            }
            Bitmap decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileInputStream.getFD(), null, options);
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                    return decodeFileDescriptor;
                } catch (IOException e4) {
                    return decodeFileDescriptor;
                }
            }
            return decodeFileDescriptor;
        } catch (IOException e5) {
            fileInputStream2 = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.acr$b */
    /* loaded from: classes.dex */
    public static class C0666b {
        Object abm;
        int abn;
        int abo;
        int mType;

        private C0666b() {
        }
    }

    /* renamed from: sd */
    private C0665a m12661sd() {
        return new C0665a();
    }
}
