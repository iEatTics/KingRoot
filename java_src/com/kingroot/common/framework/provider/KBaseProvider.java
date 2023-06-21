package com.kingroot.common.framework.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.kingroot.kinguser.AbstractC3639tl;
import com.kingroot.kinguser.C3640tm;
import java.util.List;
/* loaded from: classes.dex */
public abstract class KBaseProvider extends ContentProvider {

    /* renamed from: Hm */
    private Uri f782Hm = null;

    /* renamed from: Hn */
    private C3640tm f783Hn = new C3640tm();

    public abstract String getAuthority();

    /* renamed from: jb */
    public abstract List<? extends AbstractC3639tl> mo13387jb();

    /* renamed from: a */
    private Uri m13398a(Uri uri) {
        String uri2 = m13397jQ().toString();
        String uri3 = uri.toString();
        if (uri3.startsWith(uri2)) {
            return Uri.parse("content://" + uri3.substring(uri2.length()));
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.f783Hn.m2158e(getContext(), mo13387jb());
        return true;
    }

    /* renamed from: jQ */
    public Uri m13397jQ() {
        if (this.f782Hm == null) {
            this.f782Hm = C3640tm.getContentUri(getAuthority());
        }
        return this.f782Hm;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String authority;
        AbstractC3639tl m2157j;
        Uri m13398a = m13398a(uri);
        if (m13398a == null || (authority = m13398a.getAuthority()) == null || (m2157j = this.f783Hn.m2157j(getContext(), authority)) == null) {
            return null;
        }
        return m2157j.query(m13398a, strArr, str, strArr2, str2);
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        String authority;
        AbstractC3639tl m2157j;
        Uri m13398a = m13398a(uri);
        if (m13398a == null || (authority = m13398a.getAuthority()) == null || (m2157j = this.f783Hn.m2157j(getContext(), authority)) == null) {
            return null;
        }
        return m2157j.getType(m13398a);
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        String authority;
        AbstractC3639tl m2157j;
        Uri m13398a = m13398a(uri);
        if (m13398a == null || (authority = m13398a.getAuthority()) == null || (m2157j = this.f783Hn.m2157j(getContext(), authority)) == null) {
            return null;
        }
        return m2157j.insert(m13398a, contentValues);
    }

    @Override // android.content.ContentProvider
    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        String authority;
        AbstractC3639tl m2157j;
        Uri m13398a = m13398a(uri);
        if (m13398a == null || (authority = m13398a.getAuthority()) == null || (m2157j = this.f783Hn.m2157j(getContext(), authority)) == null) {
            return 0;
        }
        return m2157j.mo2040a(m13398a, contentValuesArr);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        String authority;
        AbstractC3639tl m2157j;
        Uri m13398a = m13398a(uri);
        if (m13398a == null || (authority = m13398a.getAuthority()) == null || (m2157j = this.f783Hn.m2157j(getContext(), authority)) == null) {
            return -1;
        }
        return m2157j.delete(m13398a, str, strArr);
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        String authority;
        AbstractC3639tl m2157j;
        Uri m13398a = m13398a(uri);
        if (m13398a == null || (authority = m13398a.getAuthority()) == null || (m2157j = this.f783Hn.m2157j(getContext(), authority)) == null) {
            return -1;
        }
        return m2157j.update(m13398a, contentValues, str, strArr);
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Bundle call(@NonNull String str, String str2, Bundle bundle) {
        String authority;
        AbstractC3639tl m2157j;
        Uri m13398a = m13398a(Uri.parse(str));
        return (m13398a == null || (authority = m13398a.getAuthority()) == null || (m2157j = this.f783Hn.m2157j(getContext(), authority)) == null) ? super.call(str, str2, bundle) : m2157j.call(m13398a.toString(), str2, bundle);
    }
}
