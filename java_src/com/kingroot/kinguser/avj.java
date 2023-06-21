package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.kingmaster.network.updatalist.CommonList;
import com.kingroot.master.app.KUApplication;
import java.io.File;
/* loaded from: classes.dex */
public abstract class avj {
    protected int aTu;
    private String afe;
    protected avz aTv = null;
    private Context mContext = KUApplication.m13453ge();

    /* renamed from: uy */
    public abstract void mo1472uy();

    public avj(int i) {
        this.aTu = -1;
        this.afe = null;
        this.aTu = i;
        this.afe = this.mContext.getFilesDir().getAbsolutePath();
        avv.m8742Sj().m12190a(new CommonList.InterfaceC0599a() { // from class: com.kingroot.kinguser.avj.1
            @Override // com.kingroot.kingmaster.network.updatalist.CommonList.InterfaceC0599a
            /* renamed from: uA */
            public void mo8829uA() {
                avj.this.mo1472uy();
            }
        }, this.aTu);
    }

    protected Context getContext() {
        return this.mContext;
    }

    /* renamed from: uu */
    protected String m8830uu() {
        return this.afe;
    }

    /* renamed from: Rw */
    public C2585br m8833Rw() {
        return m8831gZ(this.aTu);
    }

    /* renamed from: gZ */
    private C2585br m8831gZ(int i) {
        String str = String.valueOf(i) + ".dat";
        File file = new File(m8832Rx());
        if (!file.exists()) {
            try {
                C3563rs.m2352e(str, file);
            } catch (Exception e) {
            }
        }
        return (C2585br) aeq.m12173b(getContext(), m8830uu(), str, String.valueOf(i), new C2585br(), "UTF-8");
    }

    /* renamed from: Rx */
    public String m8832Rx() {
        return m8830uu() + File.separator + (String.valueOf(this.aTu) + ".dat");
    }
}
