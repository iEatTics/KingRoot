package com.kingroot.kinguser;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.ta */
/* loaded from: classes.dex */
public class C3617ta extends AbstractC3639tl {

    /* renamed from: GQ */
    private InterfaceC3610su f3544GQ = null;

    /* renamed from: jq */
    public static String m2212jq() {
        return C3640tm.m2160C(KApplication.m13429ip(), "multi_string");
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    /* renamed from: jo */
    public String mo2038jo() {
        return "multi_string";
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public boolean onCreate() {
        this.f3544GQ = new C3618tb(getContext());
        return true;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        List<C3613sx> mo2204b;
        try {
            if (TextUtils.isEmpty(str)) {
                mo2204b = this.f3544GQ.mo2201ju();
            } else {
                int intValue = Integer.valueOf(str).intValue();
                if (strArr2 == null) {
                    mo2204b = this.f3544GQ.mo2205aS(intValue);
                } else {
                    mo2204b = this.f3544GQ.mo2204b(intValue, Integer.parseInt(strArr2[0]), strArr2[1]);
                }
            }
            if (mo2204b == null) {
                return null;
            }
            MatrixCursor matrixCursor = new MatrixCursor(C3611sv.f3531GJ, mo2204b.size());
            for (C3613sx c3613sx : mo2204b) {
                try {
                    matrixCursor.addRow(new Object[]{Long.valueOf(c3613sx.mId), Integer.valueOf(c3613sx.f3535GM), Long.valueOf(c3613sx.mTime), c3613sx.f3534Bk, Boolean.valueOf(c3613sx.f3536GN), c3613sx.f3537GO[0], c3613sx.f3537GO[1], c3613sx.f3537GO[2], c3613sx.f3537GO[3], c3613sx.f3537GO[4], c3613sx.f3537GO[5], c3613sx.f3537GO[6], c3613sx.f3537GO[7], c3613sx.f3537GO[8], c3613sx.f3537GO[9]});
                } catch (Throwable th) {
                }
            }
            return matrixCursor;
        } catch (Throwable th2) {
            return null;
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public String getType(Uri uri) {
        return null;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public Uri insert(Uri uri, ContentValues contentValues) {
        C3613sx m2219a = C3613sx.m2219a(contentValues);
        if (m2219a != null) {
            this.f3544GQ.mo2208a(m2219a);
        }
        return null;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    /* renamed from: a */
    public int mo2040a(Uri uri, ContentValues[] contentValuesArr) {
        int i;
        int i2 = 0;
        if (contentValuesArr != null) {
            ArrayList arrayList = new ArrayList();
            int length = contentValuesArr.length;
            int i3 = 0;
            while (i3 < length) {
                C3613sx m2219a = C3613sx.m2219a(contentValuesArr[i3]);
                if (m2219a != null) {
                    arrayList.add(m2219a);
                    i = i2 + 1;
                } else {
                    i = i2;
                }
                i3++;
                i2 = i;
            }
            if (!arrayList.isEmpty()) {
                this.f3544GQ.mo2206a((C3613sx[]) arrayList.toArray(new C3613sx[arrayList.size()]));
            }
        }
        return i2;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public int delete(Uri uri, String str, String[] strArr) {
        try {
            if (TextUtils.isEmpty(str)) {
                if (strArr == null) {
                    this.f3544GQ.clear();
                } else {
                    this.f3544GQ.clear(true);
                }
            } else {
                String[] split = str.split(",");
                int[] iArr = new int[split.length];
                for (int i = 0; i < split.length; i++) {
                    iArr[i] = Integer.valueOf(split[i]).intValue();
                }
                this.f3544GQ.mo2202c(iArr);
            }
        } catch (Throwable th) {
        }
        return 0;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        C3613sx m2219a = C3613sx.m2219a(contentValues);
        if (str.contains(";")) {
            String[] split = str.split(";");
            this.f3544GQ.mo2210a(Integer.parseInt(split[0]), strArr, Integer.parseInt(split[1]), Integer.parseInt(split[2]), m2219a);
        } else if (m2219a == null) {
            return -1;
        } else {
            this.f3544GQ.mo2209a(Integer.parseInt(str), strArr, m2219a);
        }
        return 0;
    }
}
