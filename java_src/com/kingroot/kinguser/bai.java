package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.kingroot.kinguser.plugin.upgrade.PluginUpgradeInfo;
/* loaded from: classes.dex */
class bai extends SQLiteOpenHelper {
    private static final Object avD = new Object();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bai(Context context) {
        super(context, "klupgradev2.db", (SQLiteDatabase.CursorFactory) null, 3);
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = getWritableDatabase();
            sQLiteDatabase.setLockingEnabled(false);
        } finally {
            C3945za.m1341c(sQLiteDatabase);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS plugin_upgrade_3 (xa INTEGER PRIMARY KEY,xb INTEGER,xc TEXT,xd INTEGER,xe TEXT,xf INTEGER,xg TEXT,xi TEXT,xk TEXT,xl INTEGER,xm INTEGER,xn LONG,xo LONG,xp INTEGER,xq LONG)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m7941a(sQLiteDatabase, i);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @SuppressLint({"Override"})
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m7941a(sQLiteDatabase, i);
    }

    /* renamed from: a */
    private void m7941a(SQLiteDatabase sQLiteDatabase, int i) {
        if (sQLiteDatabase != null) {
            try {
                onCreate(sQLiteDatabase);
            } catch (Exception e) {
            }
            for (PluginUpgradeInfo pluginUpgradeInfo : m7940b(sQLiteDatabase, i)) {
                try {
                    sQLiteDatabase.insert("plugin_upgrade_3", null, pluginUpgradeInfo.transferToContentValues());
                } catch (Throwable th) {
                }
            }
            try {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS plugin_upgrade_" + i);
            } catch (Exception e2) {
            }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: b */
    private static java.util.List<com.kingroot.kinguser.plugin.upgrade.PluginUpgradeInfo> m7940b(android.database.sqlite.SQLiteDatabase r10, int r11) {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.bai.m7940b(android.database.sqlite.SQLiteDatabase, int):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m7937c(String str, ContentValues contentValues) {
        synchronized (avD) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.insert(str, null, contentValues);
            C3945za.m1341c(writableDatabase);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m7938b(String str, String str2, String[] strArr) {
        synchronized (avD) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.delete(str, str2, strArr);
            C3945za.m1341c(writableDatabase);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m7939b(String str, ContentValues contentValues, String str2, String[] strArr) {
        synchronized (avD) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            writableDatabase.update(str, contentValues, str2, strArr);
            C3945za.m1341c(writableDatabase);
        }
    }
}
