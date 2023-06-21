package com.kingroot.kinguser;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
/* renamed from: com.kingroot.kinguser.nn */
/* loaded from: classes.dex */
public class C3356nn {
    /* renamed from: a */
    public static void m2841a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m2839a(InputStream inputStream, Writer writer) {
        m2838a(new InputStreamReader(inputStream), writer);
    }

    /* renamed from: a */
    public static int m2838a(Reader reader, Writer writer) {
        long m2836b = m2836b(reader, writer);
        if (m2836b > 2147483647L) {
            return -1;
        }
        return (int) m2836b;
    }

    /* renamed from: b */
    public static long m2836b(Reader reader, Writer writer) {
        char[] cArr = new char[4096];
        long j = 0;
        while (true) {
            int read = reader.read(cArr);
            if (-1 != read) {
                writer.write(cArr, 0, read);
                j += read;
            } else {
                return j;
            }
        }
    }

    /* renamed from: e */
    public static String m2835e(InputStream inputStream) {
        StringWriter stringWriter = new StringWriter();
        m2839a(inputStream, stringWriter);
        return stringWriter.toString();
    }

    /* renamed from: a */
    public static long m2840a(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 != read) {
                outputStream.write(bArr, 0, read);
                j += read;
            } else {
                return j;
            }
        }
    }

    /* renamed from: b */
    public static int m2837b(InputStream inputStream, OutputStream outputStream) {
        long m2840a = m2840a(inputStream, outputStream);
        if (m2840a > 2147483647L) {
            return -1;
        }
        return (int) m2840a;
    }
}
