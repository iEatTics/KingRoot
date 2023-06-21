package com.kingroot.kinguser;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
/* renamed from: com.kingroot.kinguser.nl */
/* loaded from: classes.dex */
public final class C3354nl {
    /* renamed from: bM */
    public static byte[] m2846bM(String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream(fileInputStream2.available());
                try {
                    C3356nn.m2837b(fileInputStream2, byteArrayOutputStream);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    if (byteArray == null) {
                        byteArray = "".getBytes();
                    }
                    C3356nn.m2841a(fileInputStream2);
                    C3356nn.m2841a(byteArrayOutputStream);
                    return byteArray;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    C3356nn.m2841a(fileInputStream);
                    C3356nn.m2841a(byteArrayOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = null;
                fileInputStream = fileInputStream2;
            }
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
    }

    /* renamed from: b */
    public static void m2847b(byte[] bArr, String str) {
        FileOutputStream fileOutputStream;
        try {
            fileOutputStream = new FileOutputStream(str, false);
        } catch (Throwable th) {
            th = th;
            fileOutputStream = null;
        }
        try {
            fileOutputStream.write(bArr);
            fileOutputStream.getChannel().force(true);
            fileOutputStream.flush();
            C3356nn.m2841a(fileOutputStream);
        } catch (Throwable th2) {
            th = th2;
            C3356nn.m2841a(fileOutputStream);
            throw th;
        }
    }

    /* renamed from: a */
    public static void m2852a(Context context, int i, File file) {
        FileOutputStream fileOutputStream;
        InputStream inputStream = null;
        try {
            InputStream openRawResource = context.getResources().openRawResource(i);
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    C3356nn.m2837b(openRawResource, fileOutputStream);
                    fileOutputStream.getChannel().force(true);
                    fileOutputStream.flush();
                    C3356nn.m2841a(openRawResource);
                    C3356nn.m2841a(fileOutputStream);
                } catch (Throwable th) {
                    th = th;
                    inputStream = openRawResource;
                    C3356nn.m2841a(inputStream);
                    C3356nn.m2841a(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
                inputStream = openRawResource;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    /* renamed from: b */
    public static void m2850b(Context context, int i, File file) {
        GZIPInputStream gZIPInputStream;
        InputStream inputStream;
        FileOutputStream fileOutputStream = null;
        try {
            InputStream openRawResource = context.getResources().openRawResource(i);
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    gZIPInputStream = new GZIPInputStream(openRawResource);
                    try {
                        C3356nn.m2837b(gZIPInputStream, fileOutputStream2);
                        fileOutputStream2.getChannel().force(true);
                        fileOutputStream2.flush();
                        C3356nn.m2841a(gZIPInputStream);
                        C3356nn.m2841a(openRawResource);
                        C3356nn.m2841a(fileOutputStream2);
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        inputStream = openRawResource;
                        C3356nn.m2841a(gZIPInputStream);
                        C3356nn.m2841a(inputStream);
                        C3356nn.m2841a(fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    gZIPInputStream = null;
                    fileOutputStream = fileOutputStream2;
                    inputStream = openRawResource;
                }
            } catch (Throwable th3) {
                th = th3;
                gZIPInputStream = null;
                inputStream = openRawResource;
            }
        } catch (Throwable th4) {
            th = th4;
            gZIPInputStream = null;
            inputStream = null;
        }
    }

    /* renamed from: b */
    public static byte[] m2849b(Context context, String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        InputStream inputStream = null;
        try {
            InputStream open = context.getResources().getAssets().open(str, 1);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream(open.available());
            } catch (Throwable th) {
                th = th;
                byteArrayOutputStream = null;
                inputStream = open;
            }
            try {
                C3356nn.m2837b(open, byteArrayOutputStream);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if (byteArray == null) {
                    byteArray = "".getBytes();
                }
                C3356nn.m2841a(open);
                C3356nn.m2841a(byteArrayOutputStream);
                return byteArray;
            } catch (Throwable th2) {
                th = th2;
                inputStream = open;
                C3356nn.m2841a(inputStream);
                C3356nn.m2841a(byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
    }

    /* renamed from: a */
    public static void m2851a(Context context, String str, File file) {
        FileOutputStream fileOutputStream;
        InputStream inputStream = null;
        try {
            InputStream open = context.getResources().getAssets().open(str, 1);
            try {
                fileOutputStream = new FileOutputStream(file);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = null;
                inputStream = open;
            }
            try {
                C3356nn.m2837b(open, fileOutputStream);
                fileOutputStream.getChannel().force(true);
                fileOutputStream.flush();
                C3356nn.m2841a(open);
                C3356nn.m2841a(fileOutputStream);
            } catch (Throwable th2) {
                th = th2;
                inputStream = open;
                C3356nn.m2841a(inputStream);
                C3356nn.m2841a(fileOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    /* renamed from: b */
    public static void m2848b(Context context, String str, File file) {
        GZIPInputStream gZIPInputStream;
        InputStream inputStream;
        FileOutputStream fileOutputStream = null;
        try {
            InputStream open = context.getResources().getAssets().open(str, 1);
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    gZIPInputStream = new GZIPInputStream(open);
                } catch (Throwable th) {
                    th = th;
                    gZIPInputStream = null;
                    fileOutputStream = fileOutputStream2;
                    inputStream = open;
                }
                try {
                    C3356nn.m2837b(gZIPInputStream, fileOutputStream2);
                    fileOutputStream2.getChannel().force(true);
                    fileOutputStream2.flush();
                    C3356nn.m2841a(gZIPInputStream);
                    C3356nn.m2841a(open);
                    C3356nn.m2841a(fileOutputStream2);
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    inputStream = open;
                    C3356nn.m2841a(gZIPInputStream);
                    C3356nn.m2841a(inputStream);
                    C3356nn.m2841a(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                gZIPInputStream = null;
                inputStream = open;
            }
        } catch (Throwable th4) {
            th = th4;
            gZIPInputStream = null;
            inputStream = null;
        }
    }
}
