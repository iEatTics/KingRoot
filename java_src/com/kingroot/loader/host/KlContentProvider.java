package com.kingroot.loader.host;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.kingroot.kinguser.bkq;
import com.kingroot.loader.common.KlServiceManager;
import com.kingroot.loader.sdk.AbsKlApplication;
import com.kingroot.loader.sdk.service.IKlApplicationManager;
/* loaded from: classes.dex */
public class KlContentProvider extends ContentProvider {

    /* renamed from: a */
    private static final String f4117a = KlContentProvider.class.getName();

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        bkq.m6545i(f4117a, "query begin");
        C3990a m1224c = m1224c(uri);
        if (m1224c == null || m1224c.byS == null || m1224c.byT == null) {
            return null;
        }
        return m1224c.byS.query(uri, strArr, str, strArr2, str2);
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        bkq.m6545i(f4117a, "getType begin");
        C3990a m1224c = m1224c(uri);
        if (m1224c == null || m1224c.byS == null || m1224c.byT == null) {
            return null;
        }
        return m1224c.byS.getType(uri);
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, ContentValues contentValues) {
        bkq.m6545i(f4117a, "insert begin");
        C3990a m1224c = m1224c(uri);
        if (m1224c == null || m1224c.byS == null || m1224c.byT == null) {
            return null;
        }
        return m1224c.byS.insert(uri, contentValues);
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, String str, String[] strArr) {
        bkq.m6545i(f4117a, "delete begin");
        C3990a m1224c = m1224c(uri);
        if (m1224c == null || m1224c.byS == null || m1224c.byT == null) {
            return 0;
        }
        return m1224c.byS.delete(uri, str, strArr);
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, ContentValues contentValues, String str, String[] strArr) {
        bkq.m6545i(f4117a, "update begin");
        C3990a m1224c = m1224c(uri);
        if (m1224c == null || m1224c.byS == null || m1224c.byT == null) {
            return 0;
        }
        return m1224c.byS.update(uri, contentValues, str, strArr);
    }

    @NonNull
    /* renamed from: a */
    public static Uri m1225a(@NonNull Uri uri, int i) {
        Uri parse = Uri.parse(uri.toString().replace(uri.getAuthority(), "com.kingroot.loader.ProxyContentProvider/" + i + "/" + uri.getAuthority()));
        bkq.m6545i(f4117a, "Uri before : " + uri.toString());
        bkq.m6545i(f4117a, "Uri after : " + parse.toString());
        return parse;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.loader.host.KlContentProvider$a */
    /* loaded from: classes.dex */
    public static class C3990a {
        public ContentProvider byS;
        public Uri byT;

        private C3990a() {
            this.byS = null;
            this.byT = null;
        }
    }

    @Nullable
    /* renamed from: c */
    private static C3990a m1224c(@NonNull Uri uri) {
        AbsKlApplication runningPluginApplication;
        bkq.m6545i(f4117a, "Uri before : " + uri.toString());
        String uri2 = uri.toString();
        String[] split = uri2.split("/");
        if (split.length < 5) {
            return null;
        }
        try {
            int parseInt = Integer.parseInt(split[3]);
            IKlApplicationManager iKlApplicationManager = (IKlApplicationManager) KlServiceManager.getKService(IKlApplicationManager.class);
            if ((iKlApplicationManager.getRunningPluginApplication(parseInt) != null || iKlApplicationManager.launchPlugin(parseInt)) && (runningPluginApplication = iKlApplicationManager.getRunningPluginApplication(parseInt)) != null) {
                Uri parse = Uri.parse(uri2.replace("com.kingroot.loader.ProxyContentProvider/" + parseInt + "/", ""));
                bkq.m6545i(f4117a, "Uri after : " + parse.toString());
                ContentProvider contentProvider = runningPluginApplication.getContentProvider(parse.getAuthority());
                if (contentProvider == null) {
                    return null;
                }
                C3990a c3990a = new C3990a();
                c3990a.byT = parse;
                c3990a.byS = contentProvider;
                return c3990a;
            }
            return null;
        } catch (NumberFormatException e) {
            bkq.m6544w(f4117a, "Parse pluginId fail : " + split[3]);
            return null;
        }
    }
}
