package com.kingroot.kinguser;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
/* renamed from: com.kingroot.kinguser.pj */
/* loaded from: classes.dex */
public class C3422pj {

    /* renamed from: yJ */
    private static final String f3290yJ = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + bzu.m5098ge().getPackageName() + File.separator + "notifyPic";

    /* renamed from: yK */
    private static final String f3291yK = bzu.m5098ge().getFilesDir().getAbsolutePath() + File.separator + "notifyPic";

    /* renamed from: com.kingroot.kinguser.pj$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3423a {
        /* renamed from: a */
        void mo2621a(Bitmap bitmap);
    }

    /* renamed from: a */
    public static void m2645a(String str, InterfaceC3423a interfaceC3423a) {
        String str2;
        Bitmap m2644c;
        if (!TextUtils.isEmpty(str)) {
            String str3 = str.substring(str.lastIndexOf("/") + 1, str.length()) + ".png";
            if (C3127gm.m3692a()) {
                str2 = f3290yJ + File.separator + str3;
            } else {
                str2 = f3291yK + File.separator + str3;
            }
            if (!new File(str2).exists()) {
                try {
                    InputStream inputStream = new URL(str).openConnection().getInputStream();
                    Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    m2646a(decodeStream, str3);
                } catch (Exception e) {
                }
            }
            if (interfaceC3423a != null && (m2644c = m2644c(str2, 256, 256)) != null) {
                interfaceC3423a.mo2621a(m2644c);
            }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: a */
    private static void m2646a(android.graphics.Bitmap r6, java.lang.String r7) {
        /*
            if (r6 == 0) goto L4
            if (r7 != 0) goto L5
        L4:
            return
        L5:
            r0 = 0
            boolean r1 = com.kingroot.kinguser.C3127gm.m3692a()     // Catch: java.lang.Throwable -> L93
            if (r1 == 0) goto L5c
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L93
            java.lang.String r1 = com.kingroot.kinguser.C3422pj.f3290yJ     // Catch: java.lang.Throwable -> L93
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L93
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L93
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L93
            r3.<init>()     // Catch: java.lang.Throwable -> L93
            java.lang.StringBuilder r3 = r3.append(r2)     // Catch: java.lang.Throwable -> L93
            java.lang.String r4 = java.io.File.separator     // Catch: java.lang.Throwable -> L93
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> L93
            java.lang.StringBuilder r3 = r3.append(r7)     // Catch: java.lang.Throwable -> L93
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L93
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L93
            boolean r3 = r2.exists()     // Catch: java.lang.Throwable -> L93
            if (r3 != 0) goto L38
            r2.mkdirs()     // Catch: java.lang.Throwable -> L93
        L38:
            boolean r2 = r1.exists()     // Catch: java.lang.Throwable -> L93
            if (r2 != 0) goto L41
            r1.createNewFile()     // Catch: java.lang.Throwable -> L93
        L41:
            r2 = r1
        L42:
            java.io.BufferedOutputStream r1 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> L93
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L93
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L93
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L93
            android.graphics.Bitmap$CompressFormat r0 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Throwable -> La7
            r2 = 100
            r6.compress(r0, r2, r1)     // Catch: java.lang.Throwable -> La7
            r1.flush()     // Catch: java.lang.Throwable -> La7
            if (r1 == 0) goto L4
            com.kingroot.kinguser.C3141gx.m3645a(r1)
            goto L4
        L5c:
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L93
            java.lang.String r1 = com.kingroot.kinguser.C3422pj.f3291yK     // Catch: java.lang.Throwable -> L93
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L93
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L93
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L93
            r3.<init>()     // Catch: java.lang.Throwable -> L93
            java.lang.StringBuilder r3 = r3.append(r2)     // Catch: java.lang.Throwable -> L93
            java.lang.String r4 = java.io.File.separator     // Catch: java.lang.Throwable -> L93
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> L93
            java.lang.StringBuilder r3 = r3.append(r7)     // Catch: java.lang.Throwable -> L93
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L93
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L93
            boolean r3 = r2.exists()     // Catch: java.lang.Throwable -> L93
            if (r3 != 0) goto L88
            r2.mkdirs()     // Catch: java.lang.Throwable -> L93
        L88:
            boolean r2 = r1.exists()     // Catch: java.lang.Throwable -> L93
            if (r2 != 0) goto L91
            r1.createNewFile()     // Catch: java.lang.Throwable -> L93
        L91:
            r2 = r1
            goto L42
        L93:
            r1 = move-exception
        L94:
            if (r0 == 0) goto L4
            com.kingroot.kinguser.C3141gx.m3645a(r0)
            goto L4
        L9b:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L9f:
            if (r1 == 0) goto La4
            com.kingroot.kinguser.C3141gx.m3645a(r1)
        La4:
            throw r0
        La5:
            r0 = move-exception
            goto L9f
        La7:
            r0 = move-exception
            r0 = r1
            goto L94
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3422pj.m2646a(android.graphics.Bitmap, java.lang.String):void");
    }

    /* renamed from: c */
    private static Bitmap m2644c(String str, int i, int i2) {
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
}
