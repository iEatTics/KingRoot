package com.kingroot.kinguser;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.loader.common.KlConst;
/* renamed from: com.kingroot.kinguser.sn */
/* loaded from: classes.dex */
public class C3601sn extends AbstractC3639tl {
    /* renamed from: jq */
    public static String m2256jq() {
        return C3640tm.m2160C(KApplication.m13429ip(), "multi_serial_file");
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    /* renamed from: jo */
    public String mo2038jo() {
        return "multi_serial_file";
    }

    /* renamed from: cJ */
    private String m2257cJ(String str) {
        try {
            return str.substring("content://multi_serial_file/".length());
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public boolean onCreate() {
        return true;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        byte[] m2253jr;
        if (getContext() == null) {
            return null;
        }
        String m2257cJ = m2257cJ(uri.toString());
        if (TextUtils.isEmpty(m2257cJ)) {
            return null;
        }
        InterfaceC3598sk m2259cH = C3599sl.m2259cH(m2257cJ);
        if ((m2259cH instanceof C3602so) && m2259cH.exists() && (m2253jr = ((C3602so) m2259cH).m2253jr()) != null) {
            MatrixCursor matrixCursor = new MatrixCursor(new String[]{"value"}, 1);
            matrixCursor.addRow(new Object[]{m2253jr});
            return matrixCursor;
        }
        return null;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public String getType(Uri uri) {
        return null;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    /* renamed from: a */
    public int mo2040a(Uri uri, ContentValues[] contentValuesArr) {
        return 0;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public int delete(Uri uri, String str, String[] strArr) {
        if (getContext() == null || uri == null) {
            return 0;
        }
        String m2257cJ = m2257cJ(uri.toString());
        if (TextUtils.isEmpty(m2257cJ)) {
            return -1;
        }
        InterfaceC3598sk m2259cH = C3599sl.m2259cH(m2257cJ);
        if (m2259cH instanceof C3602so) {
            return m2259cH.delete() ? 0 : -1;
        }
        return -1;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        byte[] asByteArray;
        if (getContext() == null || contentValues == null) {
            return 0;
        }
        String m2257cJ = m2257cJ(uri.toString());
        if (TextUtils.isEmpty(m2257cJ) || (asByteArray = contentValues.getAsByteArray(KlConst.PLUGIN_DATA_DIR_NAME)) == null) {
            return 0;
        }
        InterfaceC3598sk m2259cH = C3599sl.m2259cH(m2257cJ);
        if (m2259cH instanceof C3602so) {
            return ((C3602so) m2259cH).m2252x(asByteArray) ? 1 : 0;
        }
        return 0;
    }
}
