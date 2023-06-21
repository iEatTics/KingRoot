package com.kingroot.kinguser;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.io.Closeable;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
/* renamed from: com.kingroot.kinguser.za */
/* loaded from: classes.dex */
public class C3945za {
    /* renamed from: c */
    public static void m1341c(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase != null) {
            try {
                sQLiteDatabase.close();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: c */
    public static void m1340c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: d */
    public static void m1338d(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: b */
    public static void m1342b(InputStream inputStream, Writer writer) {
        m1339c(new InputStreamReader(inputStream), writer);
    }

    /* renamed from: c */
    public static int m1339c(Reader reader, Writer writer) {
        long m1336d = m1336d(reader, writer);
        if (m1336d > 2147483647L) {
            return -1;
        }
        return (int) m1336d;
    }

    /* renamed from: d */
    public static long m1336d(Reader reader, Writer writer) {
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

    /* renamed from: h */
    public static String m1334h(InputStream inputStream) {
        StringWriter stringWriter = new StringWriter();
        m1342b(inputStream, stringWriter);
        return stringWriter.toString();
    }

    /* renamed from: d */
    public static long m1337d(InputStream inputStream, OutputStream outputStream) {
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

    /* renamed from: e */
    public static int m1335e(InputStream inputStream, OutputStream outputStream) {
        long m1337d = m1337d(inputStream, outputStream);
        if (m1337d > 2147483647L) {
            return -1;
        }
        return (int) m1337d;
    }
}
