package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.common.network.download.UpdateInfo;
import com.kingroot.kingmaster.network.updatalist.CommonList;
import com.kingroot.kinguser.HandlerC3755vg;
import com.kingroot.kinguser.bed;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class ael {
    private String afe;
    private HandlerC3755vg aff;
    private final HashMap<CommonList.InterfaceC0599a, Integer> afg = new HashMap<>();
    private bed afh = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ael.2
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            List<UpdateInfo> mo8730uw = ael.this.mo8730uw();
            if (mo8730uw != null && mo8730uw.size() > 0) {
                ArrayList arrayList = new ArrayList();
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= mo8730uw.size()) {
                        ael.this.aff.m1895y(arrayList);
                        return;
                    }
                    C0785a c0785a = new C0785a();
                    c0785a.localName = mo8730uw.get(i2).localName;
                    c0785a.url = mo8730uw.get(i2).url;
                    c0785a.f1404mf = mo8730uw.get(i2).checksum;
                    c0785a.size = mo8730uw.get(i2).size;
                    arrayList.add(c0785a);
                    i = i2 + 1;
                }
            }
        }
    });
    private Context mContext;

    /* renamed from: c */
    protected abstract void mo8738c(C3754vf c3754vf);

    /* renamed from: d */
    protected abstract void mo8737d(C3754vf c3754vf);

    /* renamed from: uw */
    protected abstract List<UpdateInfo> mo8730uw();

    public ael(Context context) {
        this.mContext = context;
        this.afe = this.mContext.getFilesDir().getAbsolutePath();
        this.aff = new HandlerC3755vg(HandlerThreadC3843wn.m1547nw().getLooper(), this.mContext, this.afe, new HandlerC3755vg.InterfaceC3757a() { // from class: com.kingroot.kinguser.ael.1
            @Override // com.kingroot.kinguser.HandlerC3755vg.InterfaceC3757a
            /* renamed from: c */
            public void mo1892c(C3754vf c3754vf) {
                ael.this.mo8738c(c3754vf);
            }

            @Override // com.kingroot.kinguser.HandlerC3755vg.InterfaceC3757a
            /* renamed from: d */
            public void mo1891d(C3754vf c3754vf) {
                ael.this.mo8737d(c3754vf);
            }
        });
    }

    /* renamed from: uu */
    public String m12187uu() {
        return this.afe;
    }

    /* renamed from: uv */
    public void mo8731uv() {
        beg.m7461Zj().m7450c(this.afh);
    }

    /* renamed from: com.kingroot.kinguser.ael$a */
    /* loaded from: classes.dex */
    public static class C0785a implements HandlerC3755vg.InterfaceC3758b {
        public String localName;

        /* renamed from: mf */
        public String f1404mf;
        public long size;
        public String url;

        @Override // com.kingroot.kinguser.HandlerC3755vg.InterfaceC3758b
        public String getLocalName() {
            return this.localName;
        }

        @Override // com.kingroot.kinguser.HandlerC3755vg.InterfaceC3758b
        public String getUrl() {
            return this.url;
        }

        @Override // com.kingroot.kinguser.HandlerC3755vg.InterfaceC3758b
        /* renamed from: lk */
        public String mo1890lk() {
            return this.f1404mf;
        }

        @Override // com.kingroot.kinguser.HandlerC3755vg.InterfaceC3758b
        public long getSize() {
            return this.size;
        }
    }

    /* renamed from: a */
    public void m12190a(CommonList.InterfaceC0599a interfaceC0599a, int i) {
        if (interfaceC0599a != null) {
            synchronized (this.afg) {
                this.afg.put(interfaceC0599a, Integer.valueOf(i));
            }
        }
    }

    /* renamed from: cN */
    public void m12188cN(int i) {
        CommonList.InterfaceC0599a key;
        synchronized (this.afg) {
            for (Map.Entry<CommonList.InterfaceC0599a, Integer> entry : this.afg.entrySet()) {
                Integer value = entry.getValue();
                if (value != null && value.intValue() == i && (key = entry.getKey()) != null) {
                    key.mo8829uA();
                }
            }
        }
    }
}
