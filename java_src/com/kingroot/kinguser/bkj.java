package com.kingroot.kinguser;

import android.annotation.TargetApi;
import android.content.Context;
import com.kingroot.loader.common.KlConst;
import com.kingroot.loader.sdk.KlInfo;
import java.io.File;
import java.util.Locale;
/* loaded from: classes.dex */
public class bkj {

    /* renamed from: a */
    private Context f1721a;

    /* renamed from: b */
    private File f1722b;
    private File bzh;

    /* renamed from: c */
    private File f1723c;

    @TargetApi(9)
    public bkj(Context context) {
        this.f1722b = null;
        this.f1723c = null;
        this.bzh = null;
        this.f1721a = context;
        File dir = context.getDir(KlConst.PLUGIN_BASE_DIR_NAME, 0);
        this.f1723c = new File(dir, KlConst.PLUGIN_APP_DIR_NAME);
        if (!this.f1723c.exists() || this.f1723c.isFile()) {
            this.f1723c.delete();
            if (this.f1723c.mkdirs() && bku.m6529qb() > 8) {
                this.f1723c.setExecutable(true, false);
            }
        }
        this.f1722b = new File(dir, KlConst.PLUGIN_DATA_DIR_NAME);
        if (!this.f1722b.exists() || this.f1722b.isFile()) {
            this.f1722b.delete();
            if (this.f1722b.mkdirs() && bku.m6529qb() > 8) {
                this.f1722b.setExecutable(true, false);
            }
        }
        this.bzh = new File(dir, KlConst.PLUGIN_DEX_DIR_NAME);
        if (!this.bzh.exists() || this.bzh.isFile()) {
            this.bzh.delete();
            if (this.bzh.mkdirs() && bku.m6529qb() > 8) {
                this.bzh.setExecutable(true, false);
            }
        }
    }

    /* renamed from: a */
    public void m6566a(KlInfo klInfo) {
        File[] listFiles;
        if (klInfo != null) {
            bkh bkhVar = new bkh(klInfo);
            File[] listFiles2 = this.f1723c.listFiles(bkhVar);
            if (listFiles2 != null) {
                for (File file : listFiles2) {
                    bkp.m6555cz(file.getAbsolutePath());
                }
            }
            File[] listFiles3 = this.bzh.listFiles(bkhVar);
            if (listFiles3 != null) {
                for (File file2 : listFiles3) {
                    bkp.m6555cz(file2.getAbsolutePath());
                }
            }
            if (klInfo.installState == 0) {
                File[] listFiles4 = this.f1722b.listFiles(bkhVar);
                if (listFiles4 != null) {
                    for (File file3 : listFiles4) {
                        bkp.m6555cz(file3.getAbsolutePath());
                    }
                }
                File file4 = new File(this.f1721a.getFilesDir().getParentFile(), "shared_prefs");
                if (file4.exists() && (listFiles = file4.listFiles(bkhVar)) != null) {
                    for (File file5 : listFiles) {
                        bkp.m6555cz(file5.getAbsolutePath());
                    }
                }
            }
        }
    }

    public final File aeL() {
        return this.f1722b;
    }

    public final File aeM() {
        return this.bzh;
    }

    /* renamed from: f */
    public final String m6565f(String str, String str2) {
        return this.f1723c.getAbsolutePath() + File.separator + String.format(Locale.US, KlConst.PLUGIN_SOURCE_NAME_FORMAT, str2, str);
    }
}
