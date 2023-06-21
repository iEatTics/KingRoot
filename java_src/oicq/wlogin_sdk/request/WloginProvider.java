package oicq.wlogin_sdk.request;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import oicq.wlogin_sdk.tools.C4393util;
/* loaded from: classes.dex */
public class WloginProvider extends ContentProvider {

    /* renamed from: a */
    private C4338a f5161a;

    /* renamed from: f */
    private String f5166f;

    /* renamed from: h */
    private Context f5168h;

    /* renamed from: j */
    private Uri f5170j;

    /* renamed from: b */
    private SQLiteDatabase f5162b = null;

    /* renamed from: c */
    private final String f5163c = "wlogin_provider.db";

    /* renamed from: d */
    private final int f5164d = 4;

    /* renamed from: e */
    private final String f5165e = "rsa_pubkey";

    /* renamed from: g */
    private final int f5167g = 1;

    /* renamed from: i */
    private UriMatcher f5169i = new UriMatcher(-1);

    /* renamed from: oicq.wlogin_sdk.request.WloginProvider$a */
    /* loaded from: classes.dex */
    class C4338a extends SQLiteOpenHelper {
        public C4338a(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
            super(context, str, cursorFactory, i);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            try {
                sQLiteDatabase.execSQL(String.format("CREATE TABLE %s (id INTEGER PRIMARY KEY AUTOINCREMENT, appid INTEGER, subappid INTEGER, pubkey TEXT, pubkey_md5 TEXT)", "rsa_pubkey"));
            } catch (Exception e) {
                C4393util.printException(e, "");
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS rsa_pubkey");
            onCreate(sQLiteDatabase);
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        switch (this.f5169i.match(uri)) {
            case 1:
                int delete = this.f5162b.delete("rsa_pubkey", str, strArr);
                this.f5168h.getContentResolver().notifyChange(uri, null);
                return delete;
            default:
                throw new IllegalArgumentException("Unnown URI" + uri);
        }
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        if (this.f5169i.match(uri) != 1) {
            throw new IllegalArgumentException("Unknown URI " + uri);
        }
        long insert = this.f5162b.insert("rsa_pubkey", null, contentValues);
        if (insert > 0) {
            Uri withAppendedId = ContentUris.withAppendedId(this.f5170j, insert);
            this.f5168h.getContentResolver().notifyChange(withAppendedId, null);
            return withAppendedId;
        }
        throw new SQLException("Failed to insert row into " + uri);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.f5168h = getContext();
        this.f5166f = "oicq.wlogin_sdk.WloginProvider";
        this.f5170j = Uri.parse("content://" + this.f5166f + "/rsa_pubkey");
        this.f5169i.addURI(this.f5166f, "rsa_pubkey", 1);
        C4393util.LOGI("oncreated!");
        this.f5161a = new C4338a(this.f5168h, "wlogin_provider.db", null, 4);
        this.f5162b = this.f5161a.getWritableDatabase();
        return this.f5162b != null;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        switch (this.f5169i.match(uri)) {
            case 1:
                Cursor query = this.f5162b.query("rsa_pubkey", strArr, str, strArr2, null, null, str2);
                query.setNotificationUri(this.f5168h.getContentResolver(), uri);
                return query;
            default:
                throw new IllegalArgumentException("Unnown URI" + uri);
        }
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        switch (this.f5169i.match(uri)) {
            case 1:
                return this.f5162b.update("rsa_pubkey", contentValues, str, strArr);
            default:
                throw new IllegalArgumentException("Unnown URI" + uri);
        }
    }
}
