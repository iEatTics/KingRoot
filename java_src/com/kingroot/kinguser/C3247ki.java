package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.kinguser.C3193ir;
import java.io.File;
import java.io.IOException;
/* renamed from: com.kingroot.kinguser.ki */
/* loaded from: classes.dex */
public class C3247ki<T extends C3193ir> {

    /* renamed from: dN */
    private String f2945dN;

    /* renamed from: se */
    private T f2946se;

    /* renamed from: tO */
    private Context f2947tO;

    /* renamed from: tP */
    private C3191ip<T> f2948tP;

    /* renamed from: tQ */
    private final Object f2949tQ = new Object();

    /* renamed from: tR */
    private C3194is<T> f2950tR = null;

    /* renamed from: tS */
    C3194is<T> f2951tS = new C3190io(this);

    public C3247ki(Context context, T t) {
        this.f2947tO = context;
        this.f2946se = t;
    }

    /* renamed from: r */
    public void m3284r(String str) {
        this.f2945dN = str;
        File file = new File(this.f2945dN);
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    /* renamed from: a */
    public void m3290a(C3194is<T> c3194is) {
        this.f2950tR = c3194is;
    }

    /* renamed from: cV */
    public void m3287cV() {
        this.f2951tS.mo3480a(this.f2946se);
        synchronized (this.f2949tQ) {
            if (this.f2948tP != null) {
                this.f2948tP.m3482ce();
                this.f2948tP = null;
            }
        }
        String str = this.f2945dN + File.separator + this.f2946se.mName;
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
        String str2 = str + ".tmp";
        File file2 = new File(str2);
        if (file2.exists()) {
            file2.delete();
        }
        try {
            file2.createNewFile();
        } catch (IOException e) {
        }
        synchronized (this.f2949tQ) {
            this.f2948tP = new C3191ip<>(this.f2947tO, this.f2946se, str2);
            this.f2948tP.m3487a(this.f2951tS);
            this.f2946se.f2858sv = this.f2948tP;
            this.f2946se.f2853sq = this.f2945dN;
            this.f2948tP.m3080n(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cW */
    public void m3286cW() {
        m3285cX();
    }

    /* renamed from: cX */
    private void m3285cX() {
        String str = this.f2946se.f2853sq + File.separator + this.f2946se.mName;
        File file = new File(str + ".tmp");
        File file2 = new File(str);
        if (file.exists()) {
            if (file2.exists()) {
                file2.delete();
            }
            file.renameTo(file2);
        }
    }
}
