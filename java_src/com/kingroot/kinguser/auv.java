package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.common.network.download.UpdateInfo;
import com.kingroot.kingmaster.network.updata.CheckResult;
import com.kingroot.kinguser.aae;
import com.kingroot.master.app.KUApplication;
import com.p019qq.jce.wup.UniAttribute;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class auv {
    private static volatile auv aSY;
    private static final String aTa = AbstractC3976zt.get("clm3");

    /* renamed from: Ky */
    private C3759vh<C3754vf> f1613Ky;
    private C2821co aSZ;
    private String afe;
    private bed aTb = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.auv.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            auv.this.m8897QW();
        }
    });
    private aed aTc = new aed() { // from class: com.kingroot.kinguser.auv.2
        @Override // com.kingroot.kinguser.aed
        public void onCheckFinished(CheckResult checkResult) {
            if (checkResult.mUpdateInfoList.size() > 0) {
                auv.this.m8891jm(checkResult.mUpdateInfoList.get(0).url);
            }
        }

        @Override // com.kingroot.kinguser.aed
        public void onCheckStarted() {
        }

        @Override // com.kingroot.kinguser.aed
        public void onCheckEvent(int i) {
        }
    };
    private C3785vk<C3754vf> aTd = new C3785vk<C3754vf>() { // from class: com.kingroot.kinguser.auv.3
        @Override // com.kingroot.kinguser.C3785vk
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo1796b(C3754vf c3754vf) {
            auv.this.f1613Ky = null;
            auv.this.m8895QY();
            bbf.m7834Wn();
        }

        @Override // com.kingroot.kinguser.C3785vk
        /* renamed from: b  reason: avoid collision after fix types in other method */
        public void mo1797a(C3754vf c3754vf) {
            auv.this.f1613Ky = null;
        }
    };
    private Context mContext = KUApplication.m13453ge();

    public auv() {
        this.afe = null;
        this.afe = this.mContext.getFilesDir().getAbsolutePath();
    }

    /* renamed from: QV */
    public static auv m8898QV() {
        if (aSY == null) {
            synchronized (auv.class) {
                if (aSY == null) {
                    aSY = new auv();
                }
            }
        }
        return aSY;
    }

    /* renamed from: jl */
    public int m8892jl(String str) {
        if (air.m11599yd() || aig.m11654xB()) {
            C2821co m8896QX = m8896QX();
            if (m8896QX != null) {
                Iterator<C2842cp> it = m8896QX.f2375mq.iterator();
                while (it.hasNext()) {
                    C2842cp next = it.next();
                    String m4224aa = next.m4224aa();
                    if (m4224aa != null && m4224aa.equals(str)) {
                        switch (next.m4223ab()) {
                            case 4:
                                return 1;
                            case 99:
                                if (aig.m11653xC()) {
                                    return 99;
                                }
                                continue;
                        }
                    }
                }
            }
            return 0;
        }
        return 0;
    }

    /* renamed from: QW */
    protected void m8897QW() {
        C2658bx m4291Z;
        if (this.aTc != null) {
            this.aTc.onCheckStarted();
        }
        ArrayList<C2619bu> arrayList = new ArrayList<>();
        C2619bu c2619bu = new C2619bu();
        c2619bu.filename = "kinguserbuildinconf.conf";
        c2619bu.checksum = "";
        c2619bu.timestamp = 0;
        C2821co m8896QX = m8896QX();
        if (m8896QX != null && (m4291Z = m8896QX.m4291Z()) != null) {
            c2619bu.checksum = m4291Z.checksum;
            c2619bu.timestamp = m4291Z.timestamp;
        }
        arrayList.add(c2619bu);
        C2620bv c2620bv = new C2620bv();
        c2620bv.f2119lj = arrayList;
        AtomicReference atomicReference = new AtomicReference();
        CheckResult checkResult = new CheckResult();
        checkResult.mUpdateInfoList = new ArrayList();
        int m1913a = C3749vc.m1913a(this.mContext, c2620bv, atomicReference);
        if (m1913a == 0) {
            aks.m11143BP().m10914aH(System.currentTimeMillis());
            C2614bt c2614bt = (C2614bt) atomicReference.get();
            if (c2614bt != null && c2614bt.f2079la != null && c2614bt.f2079la.size() > 0) {
                Iterator<C2642bw> it = c2614bt.f2079la.iterator();
                while (it.hasNext()) {
                    C2642bw next = it.next();
                    if (next != null) {
                        UpdateInfo updateInfo = new UpdateInfo();
                        updateInfo.url = next.url;
                        updateInfo.fileName = next.filename;
                        checkResult.mUpdateInfoList.add(updateInfo);
                    }
                }
            }
            checkResult.mMessage = "";
        } else if (this.aTc != null) {
            this.aTc.onCheckEvent(m1913a);
        }
        if (this.aTc != null) {
            this.aTc.onCheckFinished(checkResult);
        }
    }

    /* renamed from: QX */
    private C2821co m8896QX() {
        if (this.aSZ == null) {
            m8895QY();
        }
        return this.aSZ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* renamed from: QY */
    public void m8895QY() {
        FileInputStream fileInputStream;
        ?? r1 = "cl2.conf";
        File file = new File(this.afe + File.separator + "cl2.conf");
        if (!file.exists()) {
            try {
                C3563rs.m2352e("cl2.conf", file);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        try {
            if (file.exists()) {
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        byte[] bArr = new byte[(int) file.length()];
                        fileInputStream.read(bArr);
                        byte[] mo12988D = bArr.length > 0 ? aae.m13007a(aae.EnumC0609a.XXTEA2).mo12988D(bArr) : null;
                        if (mo12988D != null) {
                            UniAttribute uniAttribute = new UniAttribute();
                            uniAttribute.setEncodeName("UTF-8");
                            uniAttribute.decode(mo12988D);
                            this.aSZ = (C2821co) uniAttribute.getByClass(aTa, new C2821co());
                        }
                        C3945za.m1340c(fileInputStream);
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        C3945za.m1340c(fileInputStream);
                    }
                } catch (Exception e3) {
                    e = e3;
                    fileInputStream = null;
                } catch (Throwable th) {
                    th = th;
                    r1 = 0;
                    C3945za.m1340c((Closeable) r1);
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: jm */
    protected void m8891jm(String str) {
        this.f1613Ky = new C3759vh<>(this.mContext, new C3754vf("cl2.conf", str));
        this.f1613Ky.m1883dc(this.afe);
        this.f1613Ky.m1887a(this.aTd);
        this.f1613Ky.m1882ll();
    }
}
