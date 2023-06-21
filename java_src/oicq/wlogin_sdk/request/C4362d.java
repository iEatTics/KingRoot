package oicq.wlogin_sdk.request;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.nio.BufferOverflowException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.spec.SecretKeySpec;
import oicq.wlogin_sdk.sharemem.WloginLoginInfo;
import oicq.wlogin_sdk.sharemem.WloginSigInfo;
import oicq.wlogin_sdk.sharemem.WloginSimpleInfo;
import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.cryptor;
/* renamed from: oicq.wlogin_sdk.request.d */
/* loaded from: classes.dex */
public class C4362d {

    /* renamed from: f */
    private static final Object f5181f = new Object();

    /* renamed from: g */
    private static final Object f5182g = new Object();

    /* renamed from: h */
    private static C4360b f5183h = null;

    /* renamed from: i */
    private static C4360b f5184i = null;

    /* renamed from: a */
    Context f5185a;

    /* renamed from: b */
    WloginLastLoginInfo f5186b = new WloginLastLoginInfo();

    /* renamed from: c */
    TreeMap<Long, WloginAllSigInfo> f5187c = new TreeMap<>();

    /* renamed from: d */
    TreeMap<String, UinInfo> f5188d;

    /* renamed from: e */
    public int f5189e;

    public C4362d(Context context) {
        this.f5188d = new TreeMap<>();
        this.f5185a = context;
        this.f5188d = m202a(this.f5185a, "name_file");
        if (this.f5188d == null) {
            this.f5188d = new TreeMap<>();
        }
    }

    /* renamed from: a */
    public static int m201a(Context context, String str, byte[] bArr) {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursor;
        SQLiteDatabase writableDatabase;
        Cursor cursor2 = null;
        cursor2 = null;
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            if (str.equals("tk_file")) {
                if (f5183h == null) {
                    f5183h = new C4360b(context, str, null, 1);
                }
                writableDatabase = f5183h.getWritableDatabase();
            } else {
                if (f5184i == null) {
                    f5184i = new C4360b(context, str, null, 1);
                }
                writableDatabase = f5184i.getWritableDatabase();
            }
            try {
                m184c(writableDatabase.getPath());
                writableDatabase.execSQL("CREATE TABLE IF NOT EXISTS " + str + " (ID INTEGER PRIMARY KEY, " + str + " BLOB);");
                Cursor query = writableDatabase.query(str, new String[]{"ID"}, "ID=0", null, null, null, null);
                try {
                    if (query.getCount() == 0) {
                        writableDatabase.execSQL("insert into " + str + " (ID, " + str + ") values (?,?);", new Object[]{0, new byte[1]});
                    }
                    writableDatabase.execSQL("update " + str + " set " + str + " =? where ID=0", new Object[]{bArr});
                    if (query != null && !query.isClosed()) {
                        query.close();
                    }
                    if (writableDatabase != null && true == writableDatabase.isOpen()) {
                        C4393util.LOGI("write_to_db db closed", "");
                        writableDatabase.close();
                    }
                    return 0;
                } catch (Exception e) {
                    sQLiteDatabase2 = writableDatabase;
                    e = e;
                    cursor = query;
                    try {
                        if (str.equals("tk_file")) {
                            f5183h = null;
                        } else {
                            f5184i = null;
                        }
                        C4393util.printException(e, "");
                        C4393util.LOGI("save ticket to file failed", "");
                        if (cursor != null && !cursor.isClosed()) {
                            cursor.close();
                        }
                        if (sQLiteDatabase2 == null || true != sQLiteDatabase2.isOpen()) {
                            return C4393util.E_SAVE_TICKET_ERROR;
                        }
                        C4393util.LOGI("write_to_db db closed", "");
                        sQLiteDatabase2.close();
                        return C4393util.E_SAVE_TICKET_ERROR;
                    } catch (Throwable th) {
                        th = th;
                        Cursor cursor3 = cursor;
                        sQLiteDatabase = sQLiteDatabase2;
                        cursor2 = cursor3;
                        if (cursor2 != null && !cursor2.isClosed()) {
                            cursor2.close();
                        }
                        if (sQLiteDatabase != null && true == sQLiteDatabase.isOpen()) {
                            C4393util.LOGI("write_to_db db closed", "");
                            sQLiteDatabase.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    cursor2 = query;
                    sQLiteDatabase = writableDatabase;
                    th = th2;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    if (sQLiteDatabase != null) {
                        C4393util.LOGI("write_to_db db closed", "");
                        sQLiteDatabase.close();
                    }
                    throw th;
                }
            } catch (Exception e2) {
                cursor = null;
                sQLiteDatabase2 = writableDatabase;
                e = e2;
            } catch (Throwable th3) {
                sQLiteDatabase = writableDatabase;
                th = th3;
            }
        } catch (Exception e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th4) {
            th = th4;
            sQLiteDatabase = null;
        }
    }

    /* renamed from: a */
    public static int m193a(byte[] bArr, int i, byte[] bArr2) {
        boolean z;
        for (int i2 = i; i2 < (bArr.length - bArr2.length) - i; i2++) {
            int i3 = 0;
            while (true) {
                if (i3 >= bArr2.length) {
                    z = true;
                    break;
                } else if (bArr[i2 + i3] != bArr2[i3]) {
                    z = false;
                    break;
                } else {
                    i3++;
                }
            }
            if (z) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static TreeMap m202a(Context context, String str) {
        C4393util.LOGI("loadTKTreeMap sigfile " + str, "");
        byte[] m190b = m190b(context, str);
        if (m190b != null) {
            C4393util.LOGI("loadTKTreeMap len:" + m190b.length + " at " + C4379u.m66l(), "");
            try {
                byte[] decrypt = cryptor.decrypt(m190b, 0, m190b.length, C4379u.f5246B);
                if (decrypt != null) {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(decrypt);
                    ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    TreeMap treeMap = (TreeMap) objectInputStream.readObject();
                    objectInputStream.close();
                    byteArrayInputStream.close();
                    if (treeMap == null) {
                        C4393util.LOGI("tree is null", "");
                        return null;
                    }
                    C4393util.LOGI("loadTKTreeMap tree size: " + treeMap.size(), "");
                    if ("tk_file".equals(str)) {
                        for (Object obj : treeMap.keySet()) {
                            C4393util.LOGI(obj + " allsig: " + ((WloginAllSigInfo) treeMap.get(obj))._tk_map, "" + obj);
                        }
                        return treeMap;
                    }
                    for (Object obj2 : treeMap.keySet()) {
                        UinInfo uinInfo = (UinInfo) treeMap.get(obj2);
                        if (uinInfo != null) {
                            C4393util.LOGI(obj2 + " is uin: " + uinInfo._uin, "");
                        }
                    }
                    return treeMap;
                }
                SecretKeySpec secretKeySpec = new SecretKeySpec(C4379u.f5246B, "DESede");
                Cipher cipher = Cipher.getInstance("DESede");
                cipher.init(2, secretKeySpec);
                ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(m190b);
                ObjectInputStream objectInputStream2 = new ObjectInputStream(new CipherInputStream(byteArrayInputStream2, cipher));
                TreeMap treeMap2 = (TreeMap) objectInputStream2.readObject();
                if (treeMap2 != null) {
                    objectInputStream2.close();
                    byteArrayInputStream2.close();
                    return treeMap2;
                }
            } catch (Throwable th) {
                C4393util.printThrowable(th, "");
            }
        } else {
            C4393util.LOGI("dbdata is null", "");
        }
        return m185c(context, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v35 */
    /* JADX WARN: Type inference failed for: r2v17, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v27, types: [java.lang.String] */
    /* renamed from: b */
    public static byte[] m190b(Context context, String str) {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursor;
        ?? r0;
        Cursor cursor2;
        Cursor cursor3 = null;
        Boolean bool = false;
        try {
            if (str.equals("tk_file")) {
                if (f5183h == null) {
                    f5183h = new C4360b(context, str, null, 1);
                }
                r0 = f5183h.getReadableDatabase();
            } else {
                if (f5184i == null) {
                    f5184i = new C4360b(context, str, null, 1);
                }
                r0 = f5184i.getReadableDatabase();
            }
            try {
                m184c(r0.getPath());
                Cursor rawQuery = r0.rawQuery("select count(*) from sqlite_master where type ='table' and name ='" + str + "' ", null);
                try {
                    if (rawQuery.moveToNext() && rawQuery.getInt(0) > 0) {
                        bool = true;
                    }
                    if (rawQuery != null && !rawQuery.isClosed()) {
                        rawQuery.close();
                    }
                    if (!bool.booleanValue()) {
                        if (rawQuery != null && !rawQuery.isClosed()) {
                            rawQuery.close();
                        }
                        if (r0 != 0 && true == r0.isOpen()) {
                            C4393util.LOGI("get_from_db db closed", "");
                            r0.close();
                        }
                        return null;
                    }
                    ?? query = r0.query(str, new String[]{str}, "ID=0", null, null, null, null);
                    if (query == 0) {
                        if (query != 0 && !query.isClosed()) {
                            query.close();
                        }
                        if (r0 != 0 && true == r0.isOpen()) {
                            C4393util.LOGI("get_from_db db closed", "");
                            r0.close();
                        }
                        return null;
                    }
                    try {
                        if (query.moveToFirst()) {
                            byte[] blob = query.getBlob(0);
                            query.close();
                            if (query != 0 && !query.isClosed()) {
                                query.close();
                            }
                            if (r0 != 0 && 1 == (query = r0.isOpen())) {
                                query = "get_from_db db closed";
                                C4393util.LOGI("get_from_db db closed", "");
                                r0.close();
                            }
                            r0 = blob;
                            cursor2 = query;
                        } else {
                            query.close();
                            if (query != 0 && !query.isClosed()) {
                                query.close();
                            }
                            if (r0 != 0 && true == r0.isOpen()) {
                                query = "";
                                C4393util.LOGI("get_from_db db closed", "");
                                r0.close();
                            }
                            r0 = 0;
                            cursor2 = query;
                        }
                        return r0;
                    } catch (Exception e) {
                        cursor = cursor2;
                        sQLiteDatabase = r0;
                        e = e;
                        try {
                            if (str.equals("tk_file")) {
                                f5183h = null;
                            } else {
                                f5184i = null;
                            }
                            C4393util.printException(e, "");
                            if (cursor != null && !cursor.isClosed()) {
                                cursor.close();
                            }
                            if (sQLiteDatabase != null && true == sQLiteDatabase.isOpen()) {
                                C4393util.LOGI("get_from_db db closed", "");
                                sQLiteDatabase.close();
                            }
                            return null;
                        } catch (Throwable th) {
                            th = th;
                            cursor3 = cursor;
                            if (cursor3 != null && !cursor3.isClosed()) {
                                cursor3.close();
                            }
                            if (sQLiteDatabase != null && true == sQLiteDatabase.isOpen()) {
                                C4393util.LOGI("get_from_db db closed", "");
                                sQLiteDatabase.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        cursor3 = cursor2;
                        sQLiteDatabase = r0;
                        th = th2;
                        if (cursor3 != null) {
                            cursor3.close();
                        }
                        if (sQLiteDatabase != null) {
                            C4393util.LOGI("get_from_db db closed", "");
                            sQLiteDatabase.close();
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    sQLiteDatabase = r0;
                    e = e2;
                    cursor = rawQuery;
                } catch (Throwable th3) {
                    cursor3 = rawQuery;
                    sQLiteDatabase = r0;
                    th = th3;
                }
            } catch (Exception e3) {
                sQLiteDatabase = r0;
                e = e3;
                cursor = null;
            } catch (Throwable th4) {
                sQLiteDatabase = r0;
                th = th4;
            }
        } catch (Exception e4) {
            e = e4;
            cursor = null;
            sQLiteDatabase = null;
        } catch (Throwable th5) {
            th = th5;
            sQLiteDatabase = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:146:0x02d9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x002c  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static TreeMap m185c(Context context, String str) {
        ObjectInputStream objectInputStream;
        ObjectInputStream objectInputStream2;
        TreeMap treeMap;
        ObjectInputStream objectInputStream3;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(C4379u.f5246B, "DESede");
            Cipher cipher = Cipher.getInstance("DESede");
            cipher.init(2, secretKeySpec);
            objectInputStream = new ObjectInputStream(new CipherInputStream(context.openFileInput(str), cipher));
            try {
                treeMap = (TreeMap) objectInputStream.readObject();
            } catch (Throwable th) {
                th = th;
                if (!(th instanceof FileNotFoundException)) {
                    try {
                        byte[] bArr = new byte[256];
                        FileInputStream openFileInput = context.openFileInput(str);
                        while (true) {
                            int read = openFileInput.read(bArr, 0, bArr.length);
                            if (read <= 0) {
                                break;
                            }
                            C4393util.LOGI(C4393util.buf_to_string(bArr, read));
                        }
                        openFileInput.close();
                    } catch (Exception e) {
                    }
                }
                try {
                    SecretKeySpec secretKeySpec2 = new SecretKeySpec(new String("%4;7t>;28<fc.5*6").getBytes(), "DESede");
                    Cipher cipher2 = Cipher.getInstance("DESede");
                    cipher2.init(2, secretKeySpec2);
                    objectInputStream3 = new ObjectInputStream(new CipherInputStream(context.openFileInput(str), cipher2));
                } catch (Throwable th2) {
                    objectInputStream2 = objectInputStream;
                }
                try {
                    treeMap = (TreeMap) objectInputStream3.readObject();
                    objectInputStream = objectInputStream3;
                } catch (Throwable th3) {
                    objectInputStream2 = objectInputStream3;
                    try {
                        byte[] bArr2 = new byte[256];
                        int length = bArr2.length - 40;
                        FileInputStream openFileInput2 = context.openFileInput(str);
                        FileOutputStream openFileOutput = context.openFileOutput("tmp_tk_file", 0);
                        while (true) {
                            int read2 = openFileInput2.read(bArr2, 40, length);
                            if (read2 <= 0) {
                                break;
                            }
                            for (int i = 40 + read2; i < bArr2.length; i++) {
                                bArr2[i] = 0;
                            }
                            int i2 = 0;
                            while (i2 >= 0) {
                                byte[] bytes = new String("WloginAllSigInfo").getBytes();
                                int m193a = m193a(bArr2, i2, bytes);
                                if (m193a < 0) {
                                    break;
                                }
                                i2 = m193a + bytes.length;
                                if (i2 + 8 <= bArr2.length && bArr2[i2 + 0] == -127 && bArr2[i2 + 1] == 64 && bArr2[i2 + 2] == 1 && bArr2[i2 + 3] == 111 && bArr2[i2 + 4] == -111 && bArr2[i2 + 5] == -44 && bArr2[i2 + 6] == 26 && bArr2[i2 + 7] == -101) {
                                    bArr2[i2 + 0] = 0;
                                    bArr2[i2 + 1] = 0;
                                    bArr2[i2 + 2] = 0;
                                    bArr2[i2 + 3] = 0;
                                    bArr2[i2 + 4] = 0;
                                    bArr2[i2 + 5] = 0;
                                    bArr2[i2 + 6] = 0;
                                    bArr2[i2 + 7] = 1;
                                }
                            }
                            int i3 = 0;
                            while (i3 >= 0) {
                                byte[] bytes2 = new String("WloginSigInfo").getBytes();
                                int m193a2 = m193a(bArr2, i3, bytes2);
                                if (m193a2 < 0) {
                                    break;
                                }
                                i3 = m193a2 + bytes2.length;
                                if (i3 + 8 <= bArr2.length && bArr2[i3 + 0] == 0 && bArr2[i3 + 1] == 0 && bArr2[i3 + 2] == 0 && bArr2[i3 + 3] == 0 && bArr2[i3 + 4] == 0 && bArr2[i3 + 5] == 0 && bArr2[i3 + 6] == 0 && bArr2[i3 + 7] == 0) {
                                    bArr2[i3 + 0] = 0;
                                    bArr2[i3 + 1] = 0;
                                    bArr2[i3 + 2] = 0;
                                    bArr2[i3 + 3] = 0;
                                    bArr2[i3 + 4] = 0;
                                    bArr2[i3 + 5] = 0;
                                    bArr2[i3 + 6] = 0;
                                    bArr2[i3 + 7] = 1;
                                }
                            }
                            int i4 = 0;
                            while (i4 >= 0) {
                                byte[] bytes3 = new String("WloginSimpleInfo").getBytes();
                                int m193a3 = m193a(bArr2, i4, bytes3);
                                if (m193a3 < 0) {
                                    break;
                                }
                                i4 = m193a3 + bytes3.length;
                                if (i4 + 8 <= bArr2.length && bArr2[i4 + 0] == 57 && bArr2[i4 + 1] == -69 && bArr2[i4 + 2] == -84 && bArr2[i4 + 3] == 110 && bArr2[i4 + 4] == -46 && bArr2[i4 + 5] == 98 && bArr2[i4 + 6] == -31 && bArr2[i4 + 7] == -113) {
                                    bArr2[i4 + 0] = 0;
                                    bArr2[i4 + 1] = 0;
                                    bArr2[i4 + 2] = 0;
                                    bArr2[i4 + 3] = 0;
                                    bArr2[i4 + 4] = 0;
                                    bArr2[i4 + 5] = 0;
                                    bArr2[i4 + 6] = 0;
                                    bArr2[i4 + 7] = 1;
                                }
                            }
                            int i5 = 0;
                            while (i5 >= 0) {
                                byte[] bytes4 = new String("UinInfo").getBytes();
                                int m193a4 = m193a(bArr2, i5, bytes4);
                                if (m193a4 < 0) {
                                    break;
                                }
                                i5 = m193a4 + bytes4.length;
                                if (i5 + 8 <= bArr2.length && bArr2[i5 + 0] == -118 && bArr2[i5 + 1] == -23 && bArr2[i5 + 2] == Byte.MIN_VALUE && bArr2[i5 + 3] == -19 && bArr2[i5 + 4] == -26 && bArr2[i5 + 5] == 99 && bArr2[i5 + 6] == 41 && bArr2[i5 + 7] == 14) {
                                    bArr2[i5 + 0] = 0;
                                    bArr2[i5 + 1] = 0;
                                    bArr2[i5 + 2] = 0;
                                    bArr2[i5 + 3] = 0;
                                    bArr2[i5 + 4] = 0;
                                    bArr2[i5 + 5] = 0;
                                    bArr2[i5 + 6] = 0;
                                    bArr2[i5 + 7] = 1;
                                }
                            }
                            openFileOutput.write(bArr2, 40, read2);
                            if (read2 > 40) {
                                System.arraycopy(bArr2, read2, bArr2, 0, 40);
                            }
                        }
                        openFileInput2.close();
                        openFileOutput.close();
                        objectInputStream = new ObjectInputStream(context.openFileInput("tmp_tk_file"));
                    } catch (Exception e2) {
                    }
                    try {
                        treeMap = (TreeMap) objectInputStream.readObject();
                    } catch (Exception e3) {
                        objectInputStream2 = objectInputStream;
                        objectInputStream = objectInputStream2;
                        treeMap = null;
                        context.deleteFile("tmp_tk_file");
                        if (treeMap != null) {
                        }
                    }
                    context.deleteFile("tmp_tk_file");
                    if (treeMap != null) {
                    }
                }
                if (treeMap != null) {
                }
            }
        } catch (Throwable th4) {
            th = th4;
            objectInputStream = null;
        }
        if (treeMap != null) {
            return treeMap;
        }
        try {
            objectInputStream.close();
            return treeMap;
        } catch (Exception e4) {
            return null;
        }
    }

    /* renamed from: c */
    private static void m184c(String str) {
        C4393util.LOGI("file " + str + " last update stample " + new File(str).lastModified(), "");
    }

    /* renamed from: a */
    public synchronized int m206a(long j, long j2) {
        int i = 0;
        synchronized (this) {
            C4393util.LOGI("start clear_da2 " + j2, "" + j);
            if (this.f5185a != null) {
                synchronized (f5181f) {
                    TreeMap<Long, WloginAllSigInfo> m202a = m202a(this.f5185a, "tk_file");
                    if (m202a != null) {
                        WloginAllSigInfo wloginAllSigInfo = m202a.get(Long.valueOf(j));
                        if (wloginAllSigInfo == null) {
                            i = -1;
                        } else {
                            C4393util.LOGI("clear_da2 clear DA2 in file", "" + j);
                            wloginAllSigInfo.put_da2(j2, new byte[0]);
                            i = m195a(m202a, "tk_file");
                            this.f5187c = m202a;
                        }
                    }
                }
            }
            C4393util.LOGI("end clear_da2 ret " + i, "" + j);
        }
        return i;
    }

    /* renamed from: a */
    public synchronized int m205a(long j, long j2, long j3, long j4, byte[] bArr, byte[] bArr2) {
        int put_siginfo;
        WloginAllSigInfo wloginAllSigInfo = this.f5187c.get(Long.valueOf(j));
        if (wloginAllSigInfo == null) {
            put_siginfo = -1;
        } else {
            put_siginfo = wloginAllSigInfo.put_siginfo(j2, j3, j4, bArr, bArr2);
            if (this.f5185a != null) {
                synchronized (f5181f) {
                    TreeMap m202a = m202a(this.f5185a, "tk_file");
                    if (m202a == null) {
                        m202a = new TreeMap();
                    }
                    m202a.put(Long.valueOf(j), wloginAllSigInfo.get_clone());
                    m195a(m202a, "tk_file");
                }
            }
        }
        return put_siginfo;
    }

    /* renamed from: a */
    public synchronized int m204a(long j, long j2, byte[] bArr) {
        int i;
        WloginSigInfo wloginSigInfo;
        WloginAllSigInfo wloginAllSigInfo = this.f5187c.get(Long.valueOf(j));
        if (wloginAllSigInfo == null) {
            i = -1;
        } else {
            byte[] bArr2 = new byte[0];
            WloginSigInfo wloginSigInfo2 = wloginAllSigInfo._tk_map.get(Long.valueOf(j2));
            byte[] bArr3 = (wloginSigInfo2 == null || wloginSigInfo2._randseed == null) ? bArr2 : (byte[]) wloginSigInfo2._randseed.clone();
            int put_randseed = wloginAllSigInfo.put_randseed(j2, bArr);
            if (this.f5185a != null) {
                synchronized (f5181f) {
                    TreeMap m202a = m202a(this.f5185a, "tk_file");
                    if (m202a != null) {
                        m202a.put(Long.valueOf(j), wloginAllSigInfo.get_clone());
                        int m195a = m195a(m202a, "tk_file");
                        if (m195a != 0 && (wloginSigInfo = wloginAllSigInfo._tk_map.get(Long.valueOf(j2))) != null) {
                            wloginSigInfo._randseed = (byte[]) bArr3.clone();
                        }
                        i = m195a;
                    } else {
                        i = put_randseed;
                    }
                }
            } else {
                i = put_randseed;
            }
        }
        return i;
    }

    /* renamed from: a */
    public synchronized int m203a(long j, long j2, byte[][] bArr, long j3, long j4, long j5, long j6, long j7, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[][] bArr6, byte[] bArr7, byte[] bArr8, byte[] bArr9, byte[] bArr10, byte[] bArr11, byte[] bArr12, byte[] bArr13, byte[] bArr14, byte[] bArr15, byte[] bArr16, byte[] bArr17, byte[] bArr18, byte[][] bArr19, long[] jArr, int i) {
        int i2;
        byte[] bArr20;
        byte[] bArr21;
        byte[] bArr22;
        byte[] bArr23;
        byte[] bArr24;
        byte[] bArr25;
        byte[] bArr26;
        int m195a;
        WloginSigInfo wloginSigInfo;
        C4393util.LOGI("start put_siginfo", "" + j);
        i2 = 0;
        if (this.f5185a != null) {
            synchronized (f5181f) {
                C4393util.LOGI("put_siginfo load file", "" + j);
                TreeMap m202a = m202a(this.f5185a, "tk_file");
                TreeMap treeMap = m202a == null ? new TreeMap() : m202a;
                WloginAllSigInfo wloginAllSigInfo = this.f5187c.get(Long.valueOf(j));
                if (wloginAllSigInfo == null) {
                    wloginAllSigInfo = (WloginAllSigInfo) treeMap.get(Long.valueOf(j));
                    if (wloginAllSigInfo == null) {
                        wloginAllSigInfo = new WloginAllSigInfo();
                    }
                }
                C4393util.LOGI("mainSigMap 0x" + Integer.toHexString(this.f5189e), "" + j);
                wloginAllSigInfo.mainSigMap = this.f5189e;
                byte[] bArr27 = new byte[0];
                byte[] bArr28 = new byte[0];
                byte[] bArr29 = new byte[0];
                byte[] bArr30 = new byte[0];
                byte[] bArr31 = new byte[0];
                byte[] bArr32 = new byte[0];
                byte[] bArr33 = new byte[0];
                WloginSigInfo wloginSigInfo2 = wloginAllSigInfo._tk_map.get(Long.valueOf(j2));
                if (wloginSigInfo2 != null) {
                    if (wloginSigInfo2._en_A1 != null) {
                        byte[] bArr34 = (byte[]) wloginSigInfo2._en_A1.clone();
                        if (wloginSigInfo2._noPicSig != null) {
                            bArr28 = (byte[]) wloginSigInfo2._noPicSig.clone();
                            bArr27 = bArr34;
                        } else {
                            bArr27 = bArr34;
                        }
                    }
                    if (wloginSigInfo2.f5318_G != null) {
                        bArr29 = (byte[]) wloginSigInfo2.f5318_G.clone();
                    }
                    if (wloginSigInfo2._dpwd != null) {
                        bArr30 = (byte[]) wloginSigInfo2._dpwd.clone();
                    }
                    byte[] bArr35 = wloginSigInfo2._randseed != null ? (byte[]) wloginSigInfo2._randseed.clone() : bArr31;
                    byte[] bArr36 = wloginSigInfo2._psKey;
                    bArr21 = bArr35;
                    bArr22 = bArr30;
                    bArr23 = bArr29;
                    bArr24 = bArr28;
                    bArr25 = bArr27;
                    bArr26 = wloginSigInfo2._pt4Token;
                    bArr20 = bArr36;
                } else {
                    bArr20 = bArr32;
                    bArr21 = bArr31;
                    bArr22 = bArr30;
                    bArr23 = bArr29;
                    bArr24 = bArr28;
                    bArr25 = bArr27;
                    bArr26 = bArr33;
                }
                if (bArr19[6] != null && bArr19[6].length > 2) {
                    HashMap hashMap = new HashMap();
                    HashMap hashMap2 = new HashMap();
                    HashMap hashMap3 = new HashMap();
                    HashMap hashMap4 = new HashMap();
                    Ticket.parsePsBuf(bArr20, j5, hashMap, hashMap2);
                    Iterator it = hashMap2.entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry entry = (Map.Entry) it.next();
                        String str = (String) entry.getKey();
                        if (Ticket.isPskeyExpired(((Long) entry.getValue()).longValue())) {
                            it.remove();
                            hashMap.remove(str);
                        }
                    }
                    Iterator it2 = hashMap4.entrySet().iterator();
                    while (it2.hasNext()) {
                        Map.Entry entry2 = (Map.Entry) it2.next();
                        String str2 = (String) entry2.getKey();
                        if (Ticket.isPt4TokenExpired(((Long) entry2.getValue()).longValue())) {
                            it2.remove();
                            hashMap3.remove(str2);
                        }
                    }
                    Ticket.parsePsBuf(bArr26, j5, hashMap3, hashMap4);
                    Ticket.parseSvrPs(bArr19[6], j5, hashMap, hashMap2, hashMap3, hashMap4);
                    try {
                        bArr19[6] = Ticket.packPsBuf(hashMap, j5, hashMap2);
                        bArr19[12] = Ticket.packPsBuf(hashMap3, j5, hashMap4);
                    } catch (BufferOverflowException e) {
                        C4393util.LOGI("map size " + hashMap.size() + "is too large", "" + j);
                        m200a(Long.valueOf(j));
                        i2 = C4393util.E_BUFFER_OVERFLOW;
                    }
                }
                wloginAllSigInfo.put_simpleinfo(j, bArr2, bArr3, bArr4, bArr5, bArr6);
                wloginAllSigInfo.put_siginfo(j3, j4, j5, j6, j7, bArr7, bArr8, bArr9, bArr10, bArr11, bArr12, bArr13, bArr14, bArr15, bArr16, bArr17, bArr18, bArr19, jArr, i);
                wloginAllSigInfo.put_siginfo(j2, bArr, j5);
                treeMap.put(Long.valueOf(j), wloginAllSigInfo.get_clone());
                m195a = m195a(treeMap, "tk_file");
                if (m195a != 0 && (wloginSigInfo = wloginAllSigInfo._tk_map.get(Long.valueOf(j2))) != null) {
                    wloginSigInfo._en_A1 = (byte[]) bArr25.clone();
                    wloginSigInfo._noPicSig = (byte[]) bArr24.clone();
                    wloginSigInfo.f5318_G = (byte[]) bArr23.clone();
                    wloginSigInfo._dpwd = (byte[]) bArr22.clone();
                    wloginSigInfo._randseed = (byte[]) bArr21.clone();
                }
                this.f5187c.put(Long.valueOf(j), wloginAllSigInfo.get_clone());
            }
            i2 = m195a;
        }
        return i2;
    }

    /* renamed from: a */
    public synchronized int m195a(TreeMap treeMap, String str) {
        int i;
        i = 0;
        if ("tk_file".equals(str) || "name_file".equals(str)) {
            i = m187b(treeMap, str);
        }
        return i;
    }

    /* renamed from: a */
    public synchronized List<WloginLoginInfo> m194a(boolean z) {
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        if (this.f5185a != null) {
            TreeMap m202a = m202a(this.f5185a, "tk_file");
            if (m202a == null) {
                arrayList = arrayList2;
            } else {
                for (Long l : m202a.keySet()) {
                    WloginAllSigInfo wloginAllSigInfo = this.f5187c.get(l);
                    if (wloginAllSigInfo == null) {
                        wloginAllSigInfo = (WloginAllSigInfo) m202a.get(l);
                        if (wloginAllSigInfo != null) {
                            this.f5187c.put(l, wloginAllSigInfo);
                        }
                    }
                    WloginAllSigInfo wloginAllSigInfo2 = wloginAllSigInfo;
                    for (Long l2 : wloginAllSigInfo2._tk_map.keySet()) {
                        WloginSigInfo wloginSigInfo = wloginAllSigInfo2._tk_map.get(l2);
                        if (wloginSigInfo != null) {
                            String m189b = m189b(l);
                            if (m189b == null) {
                                m189b = String.valueOf(l);
                            }
                            if (wloginAllSigInfo2._useInfo._img_url == null) {
                                wloginAllSigInfo2._useInfo._img_url = new byte[0];
                            }
                            arrayList2.add(new WloginLoginInfo(m189b, l.longValue(), l2.longValue(), new String(wloginAllSigInfo2._useInfo._img_url), wloginSigInfo._create_time, z ? WloginLoginInfo.TYPE_LOACL : WloginLoginInfo.TYPE_REMOTE, wloginSigInfo._login_bitmap));
                        }
                    }
                }
            }
        }
        arrayList = arrayList2;
        return arrayList;
    }

    /* renamed from: a */
    public synchronized UinInfo m196a(String str, boolean z) {
        UinInfo uinInfo;
        if (z) {
            uinInfo = this.f5188d.get(str);
            if (uinInfo != null) {
                C4393util.LOGI("mem got_account name: " + str + " uin: " + uinInfo._uin + ", " + uinInfo.getHasPassword(), "");
            }
        }
        if (this.f5185a == null) {
            uinInfo = null;
        } else {
            TreeMap m202a = m202a(this.f5185a, "name_file");
            if (m202a == null) {
                uinInfo = null;
            } else {
                uinInfo = (UinInfo) m202a.get(str);
                if (uinInfo == null) {
                    uinInfo = null;
                } else {
                    this.f5188d.put(str, uinInfo);
                    C4393util.LOGI("file got_account name: " + str + " uin: " + uinInfo._uin + ", " + uinInfo.getHasPassword(), "");
                }
            }
        }
        return uinInfo;
    }

    /* renamed from: a */
    public synchronized WloginAllSigInfo m207a(long j) {
        WloginAllSigInfo wloginAllSigInfo;
        wloginAllSigInfo = this.f5187c.get(Long.valueOf(j));
        if (wloginAllSigInfo != null) {
            C4393util.LOGI("get_all_siginfo got in mem", "");
        } else if (this.f5185a == null) {
            wloginAllSigInfo = null;
        } else {
            TreeMap m202a = m202a(this.f5185a, "tk_file");
            if (m202a == null) {
                wloginAllSigInfo = null;
            } else {
                wloginAllSigInfo = (WloginAllSigInfo) m202a.get(Long.valueOf(j));
                if (wloginAllSigInfo == null) {
                    wloginAllSigInfo = null;
                } else {
                    C4393util.LOGI("got in file", "");
                    this.f5187c.put(Long.valueOf(j), wloginAllSigInfo);
                }
            }
        }
        return wloginAllSigInfo;
    }

    /* renamed from: a */
    public synchronized void m208a() {
        C4393util.LOGI("refresh_all_siginfo ...", "");
        this.f5187c = m202a(this.f5185a, "tk_file");
        if (this.f5187c == null) {
            this.f5187c = new TreeMap<>();
        }
    }

    /* renamed from: a */
    public synchronized void m200a(Long l) {
        this.f5187c.remove(l);
        if (this.f5185a != null) {
            synchronized (f5181f) {
                TreeMap m202a = m202a(this.f5185a, "tk_file");
                if (m202a != null) {
                    m202a.remove(l);
                    m195a(m202a, "tk_file");
                }
            }
        }
    }

    /* renamed from: a */
    public synchronized void m199a(Long l, Long l2) {
        C4393util.LOGI("clear_sig uin=" + l, "");
        WloginAllSigInfo wloginAllSigInfo = this.f5187c.get(l);
        if (wloginAllSigInfo != null) {
            wloginAllSigInfo._tk_map.remove(l2);
            C4393util.LOGI("uin " + l + " appid " + l2 + " sig has been cleared");
        }
        if (this.f5185a != null) {
            synchronized (f5181f) {
                TreeMap m202a = m202a(this.f5185a, "tk_file");
                if (m202a != null) {
                    WloginAllSigInfo wloginAllSigInfo2 = (WloginAllSigInfo) m202a.get(l);
                    if (wloginAllSigInfo2 != null) {
                        wloginAllSigInfo2._tk_map.remove(l2);
                        m195a(m202a, "tk_file");
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public synchronized void m198a(String str) {
        this.f5188d.remove(str);
        if (this.f5185a != null) {
            synchronized (f5182g) {
                TreeMap m202a = m202a(this.f5185a, "name_file");
                if (m202a == null) {
                    m202a = new TreeMap();
                }
                m202a.remove(str);
                m195a(m202a, "name_file");
            }
        }
    }

    /* renamed from: a */
    public synchronized void m197a(String str, Long l, boolean z) {
        C4393util.LOGI("put account " + str + " uin=" + l, "" + l);
        String m189b = m189b(l);
        if (m189b != null) {
            this.f5188d.remove(m189b);
        }
        UinInfo uinInfo = new UinInfo(l, z);
        this.f5188d.put(str, uinInfo);
        if (this.f5185a != null) {
            synchronized (f5182g) {
                TreeMap m202a = m202a(this.f5185a, "name_file");
                if (m202a == null) {
                    m202a = new TreeMap();
                }
                if (m189b != null) {
                    m202a.remove(m189b);
                }
                m202a.put(str, uinInfo);
                m195a(m202a, "name_file");
            }
        }
    }

    /* renamed from: b */
    public synchronized int m187b(TreeMap treeMap, String str) {
        int i;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(treeMap);
            objectOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            i = m201a(this.f5185a, str, cryptor.encrypt(byteArray, 0, byteArray.length, C4379u.f5246B));
            objectOutputStream.close();
            byteArrayOutputStream.close();
        } catch (Throwable th) {
            C4393util.LOGI("saveTKTreeMap failed " + th.getStackTrace().toString(), "");
            C4393util.printThrowable(th, "");
            i = C4393util.E_SAVE_TICKET_ERROR;
        }
        return i;
    }

    /* renamed from: b */
    public synchronized String m189b(Long l) {
        String str;
        Iterator<String> it = this.f5188d.keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                str = null;
                break;
            }
            str = it.next();
            UinInfo uinInfo = this.f5188d.get(str);
            if (uinInfo != null && uinInfo._uin.equals(l)) {
                break;
            }
        }
        return str;
    }

    /* renamed from: b */
    public synchronized WloginSimpleInfo m192b(long j) {
        WloginAllSigInfo m207a;
        C4393util.LOGD("get_simpleinfo", "uin=" + j);
        m207a = m207a(j);
        return m207a == null ? null : m207a._useInfo.get_clone();
    }

    /* renamed from: b */
    public synchronized void m191b(long j, long j2) {
        WloginSigInfo wloginSigInfo;
        C4393util.LOGI("clear_pskey " + j2, "" + j);
        WloginAllSigInfo wloginAllSigInfo = this.f5187c.get(Long.valueOf(j));
        if (wloginAllSigInfo != null && (wloginSigInfo = wloginAllSigInfo._tk_map.get(Long.valueOf(j2))) != null) {
            wloginSigInfo._pt4Token = new byte[0];
            wloginSigInfo._psKey = new byte[0];
            wloginSigInfo.cacheTickets = null;
            wloginSigInfo.cacheUpdateStamp = 0L;
            wloginAllSigInfo._tk_map.put(Long.valueOf(j), wloginSigInfo);
            if (this.f5185a != null) {
                synchronized (f5181f) {
                    TreeMap<Long, WloginAllSigInfo> m202a = m202a(this.f5185a, "tk_file");
                    if (m202a != null) {
                        m202a.put(Long.valueOf(j), wloginAllSigInfo);
                        m195a(m202a, "tk_file");
                        this.f5187c = m202a;
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public synchronized void m188b(String str) {
        this.f5188d.remove(str);
        C4393util.LOGI("clear_account " + str, "");
        if (this.f5185a != null) {
            synchronized (f5182g) {
                TreeMap m202a = m202a(this.f5185a, "name_file");
                if (m202a != null) {
                    m202a.remove(str);
                    m195a(m202a, "name_file");
                }
            }
        }
    }

    /* renamed from: c */
    public synchronized WloginSigInfo m186c(long j, long j2) {
        WloginSigInfo wloginSigInfo;
        WloginAllSigInfo m207a = m207a(j);
        if (m207a == null) {
            wloginSigInfo = null;
        } else {
            C4393util.LOGI("get_siginfo get WloginAllSigInfo " + m207a._tk_map.size() + " " + m207a._tk_map, j + "");
            wloginSigInfo = m207a._tk_map.get(Long.valueOf(j2));
            if (wloginSigInfo == null) {
                wloginSigInfo = null;
            } else {
                C4393util.LOGI("get_siginfo get WloginSigInfo sdkappid " + j2 + " " + wloginSigInfo, j + "");
            }
        }
        return wloginSigInfo;
    }
}
