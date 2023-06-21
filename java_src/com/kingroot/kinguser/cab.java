package com.kingroot.kinguser;

import android.content.Context;
import android.os.RemoteCallbackList;
import com.kingroot.kinguser.caf;
import java.io.File;
import java.io.IOException;
import kingcom.core.network.download.InterfaceC4193f;
/* loaded from: classes.dex */
public class cab<T extends caf> {

    /* renamed from: b */
    private Context f2199b;
    private T bVZ;
    private cad<T> bWa;
    private final Object bWb = new Object();
    private cah<T> bWc = null;
    private RemoteCallbackList<InterfaceC4193f> bWd = new RemoteCallbackList<>();
    cah<T> bWe = new cac(this);

    /* renamed from: f */
    private String f2200f;

    public cab(Context context, T t) {
        this.f2199b = context;
        this.bVZ = t;
    }

    /* renamed from: a */
    public void m5089a(String str) {
        this.f2200f = str;
        File file = new File(this.f2200f);
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    /* renamed from: a */
    public void m5090a(cah<T> cahVar) {
        this.bWc = cahVar;
    }

    /* renamed from: a */
    public void m5092a() {
        this.bWe.mo5070d(this.bVZ);
        synchronized (this.bWb) {
            if (this.bWa != null) {
                this.bWa.m5084a();
                this.bWa = null;
            }
        }
        String str = this.f2200f + File.separator + this.bVZ.f2210e;
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
        synchronized (this.bWb) {
            this.bWa = new cad<>(this.f2199b, this.bVZ, str2);
            this.bWa.m5081a(this.bWe);
            this.bVZ.bWl = this.bWa;
            this.bVZ.f2211f = this.f2200f;
            this.bWa.m5114X(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m5088b() {
        m5086c();
    }

    /* renamed from: c */
    private void m5086c() {
        String str = this.bVZ.f2211f + File.separator + this.bVZ.f2210e;
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
