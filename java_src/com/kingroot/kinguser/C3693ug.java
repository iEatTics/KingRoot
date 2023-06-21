package com.kingroot.kinguser;

import android.content.ContentValues;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.AbstractC3695ui;
/* renamed from: com.kingroot.kinguser.ug */
/* loaded from: classes.dex */
public class C3693ug extends AbstractC3695ui {

    /* renamed from: In */
    private AbstractC3695ui.InterfaceC3696a f3622In = null;

    /* renamed from: jq */
    public static String m2037jq() {
        return C3640tm.m2160C(KApplication.m13428iq(), "task_pm");
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    /* renamed from: jo */
    public String mo2038jo() {
        return "task_pm";
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public boolean onCreate() {
        return true;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        MatrixCursor matrixCursor;
        int i;
        ApplicationInfo applicationInfo;
        try {
            if (this.f3622In != null) {
                this.f3622In.mo2033O(true);
            }
            if (getContext() == null) {
                if (this.f3622In != null) {
                    this.f3622In.mo2033O(false);
                }
                return null;
            }
            matrixCursor = new MatrixCursor(new String[]{"value"}, 1);
            try {
                m2039cW(uri.toString());
                if (strArr.length < 2) {
                    if (this.f3622In != null) {
                        this.f3622In.mo2033O(false);
                    }
                    return null;
                }
                String str3 = strArr[0];
                try {
                    i = Integer.parseInt(strArr[1]);
                } catch (Throwable th) {
                    i = -1;
                }
                C3952zh m1312pq = C3952zh.m1312pq();
                try {
                    applicationInfo = m1312pq.getApplicationInfo(str3, 1024);
                } catch (PackageManager.NameNotFoundException e) {
                    applicationInfo = null;
                } catch (Throwable th2) {
                    if (this.f3622In != null) {
                        this.f3622In.mo2033O(false);
                    }
                    throw th2;
                }
                if (applicationInfo == null) {
                    if (this.f3622In != null) {
                        this.f3622In.mo2033O(false);
                    }
                    return null;
                }
                try {
                    matrixCursor.addRow(new Object[]{m1312pq.getText(str3, i, applicationInfo)});
                } catch (Throwable th3) {
                }
                if (this.f3622In != null) {
                    this.f3622In.mo2033O(false);
                    return matrixCursor;
                }
                return matrixCursor;
            } catch (Throwable th4) {
                if (this.f3622In != null) {
                    this.f3622In.mo2033O(false);
                    return matrixCursor;
                }
                return matrixCursor;
            }
        } catch (Throwable th5) {
            matrixCursor = null;
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public Bundle call(String str, String str2, Bundle bundle) {
        Bundle bundle2;
        try {
            if (this.f3622In != null) {
                this.f3622In.mo2033O(true);
            }
            if (bundle == null) {
                if (this.f3622In != null) {
                    this.f3622In.mo2033O(false);
                }
                return null;
            }
            bundle2 = new Bundle();
            try {
                String string = bundle.getString("pkg", "");
                if (TextUtils.isEmpty(string)) {
                    if (this.f3622In != null) {
                        this.f3622In.mo2033O(false);
                    }
                    return null;
                }
                int i = bundle.getInt("resid", 0);
                C3952zh m1312pq = C3952zh.m1312pq();
                try {
                    ApplicationInfo applicationInfo = m1312pq.getApplicationInfo(string, 1024);
                    if (applicationInfo != null) {
                        CharSequence text = m1312pq.getText(string, i, applicationInfo);
                        if (!TextUtils.isEmpty(text)) {
                            bundle2.putCharSequence("text", text);
                        }
                    }
                } catch (PackageManager.NameNotFoundException e) {
                } catch (Throwable th) {
                    if (this.f3622In != null) {
                        this.f3622In.mo2033O(false);
                    }
                    throw th;
                }
                if (this.f3622In != null) {
                    this.f3622In.mo2033O(false);
                    return bundle2;
                }
                return bundle2;
            } catch (Throwable th2) {
                if (this.f3622In != null) {
                    this.f3622In.mo2033O(false);
                    return bundle2;
                }
                return bundle2;
            }
        } catch (Throwable th3) {
            bundle2 = null;
        }
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
        return 0;
    }

    @Override // com.kingroot.kinguser.AbstractC3639tl
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    @Override // com.kingroot.kinguser.AbstractC3695ui
    /* renamed from: a */
    public void mo2034a(AbstractC3695ui.InterfaceC3696a interfaceC3696a) {
        this.f3622In = interfaceC3696a;
    }

    /* renamed from: cW */
    private String m2039cW(String str) {
        return str.substring("content://task_pm/".length());
    }
}
