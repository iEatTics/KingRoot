package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p007v7.widget.helper.ItemTouchHelper;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.kinguser.net.shark.IKSharkRemoteListener;
import com.kingroot.kinguser.webview.WebViewActivity;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.List;
import kingcom.module.network.shark.conch.entity.SplashScreenEntity;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class awo {
    private final cbe aUZ = new AbstractC3786vl() { // from class: com.kingroot.kinguser.awo.7
        @Override // com.kingroot.kinguser.cbe
        /* renamed from: d */
        public String mo5016d(int i, String str, String str2) {
            if (i == 4) {
                return ait.m11571gf(cbb.m5023be(str, str2));
            }
            if (i != 3) {
                return "";
            }
            return ait.m11571gf(cbb.m5024bd(str, str2));
        }

        @Override // com.kingroot.kinguser.cbe
        /* renamed from: a */
        public int mo5020a(long j, long j2, C3683u c3683u) {
            if (c3683u == null || c3683u.f3611gp == null || !bat.isAvailable()) {
                return 3;
            }
            aeg.m12265um().mo12224a(c3683u, j);
            return 1;
        }

        @Override // com.kingroot.kinguser.cbe
        @NonNull
        /* renamed from: aD */
        public Intent mo5017aD(String str, String str2) {
            Intent intent = new Intent();
            intent.addFlags(268435456);
            intent.setClass(KApplication.m13453ge(), WebViewActivity.class);
            intent.putExtra("url", str2);
            intent.putExtra("webview_title", str);
            return intent;
        }

        @Override // com.kingroot.kinguser.cbe
        @NonNull
        /* renamed from: jO */
        public Intent mo5013jO(String str) {
            return new Intent();
        }

        @Override // com.kingroot.kinguser.cbe
        /* renamed from: jP */
        public cbd mo5012jP(String str) {
            Class<?> cls;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String[] split = str.split("\\|");
            if (split.length >= 1) {
                try {
                    cls = awo.class.getClassLoader().loadClass(split[1]);
                } catch (ClassNotFoundException e) {
                    cls = null;
                }
                if (cls == null || !Activity.class.isAssignableFrom(cls)) {
                    return null;
                }
                cbd cbdVar = new cbd();
                if ("ENABLE_DESKTOP_ICON".equals(split[0]) && split.length == 2) {
                    cbdVar.setId(21);
                    cbdVar.setIntent(new Intent(KUApplication.m13453ge(), cls));
                } else if ("APP_CATEGORY_PAGE".equals(split[0]) && split.length == 4) {
                    try {
                        int intValue = Integer.valueOf(split[3]).intValue();
                        Intent intent = new Intent(KUApplication.m13453ge(), cls);
                        intent.putExtra("app_download_page_title", split[2]);
                        intent.putExtra("app_download_page_category_id", intValue);
                        cbdVar.setId(24);
                        cbdVar.setIntent(intent);
                    } catch (NumberFormatException e2) {
                        return null;
                    }
                } else if ("APP_DETAIL_PAGE".equals(split[0]) && split.length == 4) {
                    if (TextUtils.isEmpty(split[2]) || C3952zh.m1312pq().m1314du(split[2])) {
                        return null;
                    }
                    int hashCode = ("APP_DETAIL_PAGE" + split[2]).hashCode();
                    try {
                        int intValue2 = Integer.valueOf(split[3]).intValue();
                        Intent intent2 = new Intent(KUApplication.m13453ge(), cls);
                        Bundle bundle = new Bundle();
                        bundle.putInt("app_detail_scene", 1);
                        bundle.putInt("notification_app_offset", intValue2);
                        intent2.putExtras(bundle);
                        cbdVar.setId(hashCode);
                        cbdVar.setIntent(intent2);
                    } catch (NumberFormatException e3) {
                        return null;
                    }
                }
                return cbdVar;
            }
            return null;
        }

        @Override // com.kingroot.kinguser.cbe
        /* renamed from: jQ */
        public int mo5011jQ(String str) {
            return m8617jS(str);
        }

        @Override // com.kingroot.kinguser.cbe
        /* renamed from: jR */
        public int mo5010jR(String str) {
            return m8617jS(str);
        }

        @Override // com.kingroot.kinguser.cbe
        /* renamed from: Tp */
        public int mo5021Tp() {
            return R.drawable.ic_launcher;
        }

        @Override // com.kingroot.kinguser.cbe
        /* renamed from: gs */
        public String mo5014gs(String str) {
            return ajl.m11464gs(str);
        }

        @Override // com.kingroot.kinguser.cbe
        /* renamed from: O */
        public void mo5022O(int i, String str) {
            if (i == 1) {
                avv.m8742Sj().m8736di(true);
            }
        }

        @Override // com.kingroot.kinguser.cbe
        /* renamed from: g */
        public void mo5015g(int i, long j) {
            switch (i) {
                case ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION /* 200 */:
                    aeg.m12265um().mo12221ab(j);
                    return;
                case 785:
                    bgz.aca().m7075cy(j);
                    return;
                default:
                    return;
            }
        }

        @Override // com.kingroot.kinguser.cbe
        /* renamed from: a */
        public void mo5018a(SplashScreenEntity splashScreenEntity) {
            if (splashScreenEntity != null) {
                bgz.aca().m7077b(splashScreenEntity);
                aea.m12295a(System.currentTimeMillis() / 1000 < splashScreenEntity.expirationTime, splashScreenEntity.taskID, splashScreenEntity.conchSeqno);
            }
        }

        /* renamed from: jS */
        private int m8617jS(String str) {
            if (!TextUtils.isEmpty(str)) {
                aws m8623Td = awo.this.m8623Td();
                if (m8623Td != null) {
                    return m8623Td.mo8612jT(str);
                }
                return 2;
            }
            return 3;
        }
    };
    private static final String TAG = aiq.arV + "_KuSharkManager";
    private static final cce<awo> sInstance = new cce<awo>() { // from class: com.kingroot.kinguser.awo.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Te */
        public awo create() {
            return new awo();
        }
    };
    private static aws aUV = null;
    private static final cas aUW = new cas() { // from class: com.kingroot.kinguser.awo.4
        @Override // com.kingroot.kinguser.cas
        public int getProductId() {
            return KApplication.m13445hY();
        }

        @Override // com.kingroot.kinguser.cas
        public String getChannel() {
            return KApplication.m13442ib();
        }

        @Override // com.kingroot.kinguser.cas
        /* renamed from: Tf */
        public String mo5049Tf() {
            return KApplication.m13443ia();
        }

        @Override // com.kingroot.kinguser.cas
        /* renamed from: dG */
        public String mo5039dG() {
            return KApplication.m13436ii();
        }

        @Override // com.kingroot.kinguser.cas
        /* renamed from: Tg */
        public int mo5048Tg() {
            return KApplication.m13444hZ();
        }

        @Override // com.kingroot.kinguser.cas
        /* renamed from: Th */
        public String mo5047Th() {
            return aay.m12881al(KApplication.m13453ge());
        }

        @Override // com.kingroot.kinguser.cas
        /* renamed from: Ti */
        public int mo5046Ti() {
            return (C3823wb.m1585nd() ? 4 : 0) + 0 + (C3823wb.m1584ne() ? 8 : 0);
        }

        @Override // com.kingroot.kinguser.cas
        /* renamed from: Tj */
        public String mo5045Tj() {
            return aav.m12917pZ();
        }

        @Override // com.kingroot.kinguser.cas
        /* renamed from: Tk */
        public C2802cg mo5044Tk() {
            return C3736ux.m1943kV();
        }

        @Override // com.kingroot.kinguser.cas
        /* renamed from: dm */
        public void mo5038dm(boolean z) {
            aks.m11143BP().m10785cr(z);
        }

        @Override // com.kingroot.kinguser.cas
        /* renamed from: Tl */
        public int mo5043Tl() {
            return 1;
        }

        @Override // com.kingroot.kinguser.cas
        /* renamed from: Tm */
        public boolean mo5042Tm() {
            return false;
        }

        @Override // com.kingroot.kinguser.cas
        /* renamed from: Tn */
        public String mo5041Tn() {
            return "";
        }

        @Override // com.kingroot.kinguser.cas
        /* renamed from: To */
        public String mo5040To() {
            return "";
        }
    };
    private static final cau aUX = new cau() { // from class: com.kingroot.kinguser.awo.5
        @Override // com.kingroot.kinguser.cau
        /* renamed from: aC */
        public void mo5036aC(String str, String str2) {
            if (TextUtils.equals(str, "key_s_guid")) {
                C3984zy.m1231pI().setProperty("K3", str2);
            } else {
                aks.m11143BP().m10894aj(str, str2);
            }
        }

        @Override // com.kingroot.kinguser.cau
        /* renamed from: dE */
        public String mo5035dE(String str) {
            return TextUtils.equals(str, "key_s_guid") ? C3984zy.m1231pI().getProperty("K3") : aks.m11143BP().m10731hf(str);
        }
    };
    private static final InterfaceC3443pv aUY = new InterfaceC3443pv() { // from class: com.kingroot.kinguser.awo.6
        @Override // com.kingroot.kinguser.InterfaceC3443pv
        /* renamed from: cj */
        public cby mo2618cj(String str) {
            VTCmdResult m12846el = abc.m12845qK().m12846el(str);
            return new cby(m12846el.mCmdFlag, m12846el.mExitValue, m12846el.mStdOut, m12846el.mStdErr);
        }

        @Override // com.kingroot.kinguser.InterfaceC3443pv
        /* renamed from: ck */
        public cby mo2617ck(String str) {
            VTCmdResult m12831em = abi.m12831em(str);
            return new cby(m12831em.mCmdFlag, m12831em.mExitValue, m12831em.mStdOut, m12831em.mStdErr);
        }

        @Override // com.kingroot.kinguser.InterfaceC3443pv
        /* renamed from: p */
        public List<cby> mo2616p(List list) {
            List<VTCmdResult> runRootCommands = abc.m12845qK().runRootCommands(list);
            ArrayList arrayList = new ArrayList();
            for (VTCmdResult vTCmdResult : runRootCommands) {
                arrayList.add(new cby(vTCmdResult.mCmdFlag, vTCmdResult.mExitValue, vTCmdResult.mStdOut, vTCmdResult.mStdErr));
            }
            return arrayList;
        }
    };

    awo() {
    }

    /* renamed from: Tc */
    public static awo m8624Tc() {
        return sInstance.get();
    }

    public void init() {
        cbx.m4982eD(KApplication.m13437ih());
        cbx.m4981g(new String[0]);
        cav.akt().m5031a(KApplication.m13453ge(), aUW, aUX, KApplication.m13437ih(), KApplication.m13426is(), true);
        cay.akw().m5030a(aUY, this.aUZ, new awr());
    }

    /* renamed from: a */
    public void m8622a(int i, String str, byte[] bArr, final IKSharkRemoteListener iKSharkRemoteListener) {
        try {
            JceStruct jceStruct = (JceStruct) Class.forName(str).newInstance();
            JceInputStream jceInputStream = new JceInputStream(bArr);
            jceInputStream.setServerEncoding("UTF-8");
            jceStruct.readFrom(jceInputStream);
            cav.akt().m5034a(i, jceStruct, new cat() { // from class: com.kingroot.kinguser.awo.2
                @Override // com.kingroot.kinguser.cat
                /* renamed from: a */
                public void mo2689a(int i2, int i3, int i4, int i5, JceStruct jceStruct2) {
                    if (iKSharkRemoteListener != null) {
                        try {
                            iKSharkRemoteListener.onFinish(i2, i3, i3, i5, jceStruct2.getClass().getName(), jceStruct2.toByteArray());
                        } catch (RemoteException e) {
                        }
                    }
                }
            });
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public void m8621a(int i, String str, byte[] bArr, String str2, byte[] bArr2, final IKSharkRemoteListener iKSharkRemoteListener) {
        try {
            JceStruct jceStruct = (JceStruct) Class.forName(str).newInstance();
            jceStruct.readFrom(new JceInputStream(bArr));
            JceStruct jceStruct2 = (JceStruct) Class.forName(str2).newInstance();
            jceStruct2.readFrom(new JceInputStream(bArr2));
            cav.akt().m5033a(i, jceStruct, jceStruct2, new cat() { // from class: com.kingroot.kinguser.awo.3
                @Override // com.kingroot.kinguser.cat
                /* renamed from: a */
                public void mo2689a(int i2, int i3, int i4, int i5, JceStruct jceStruct3) {
                    if (iKSharkRemoteListener != null) {
                        String str3 = "";
                        byte[] bArr3 = null;
                        if (jceStruct3 != null) {
                            try {
                                str3 = jceStruct3.getClass().getName();
                                bArr3 = jceStruct3.toByteArray();
                            } catch (RemoteException e) {
                                return;
                            }
                        }
                        iKSharkRemoteListener.onFinish(i2, i3, i4, i5, str3, bArr3);
                    }
                }
            });
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public boolean m8619b(@NonNull List<byte[]> list, @Nullable C2687c c2687c) {
        ArrayList arrayList = new ArrayList();
        JceInputStream jceInputStream = new JceInputStream();
        jceInputStream.setServerEncoding("UTF-8");
        for (byte[] bArr : C3942yy.m1350e(list)) {
            if (bArr != null) {
                C2037b c2037b = new C2037b();
                jceInputStream.wrap(bArr);
                c2037b.readFrom(jceInputStream);
                arrayList.add(c2037b);
            }
        }
        return cbj.akz().m5005b(arrayList, c2687c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Td */
    public aws m8623Td() {
        if (aUV == null) {
            aUV = new aws() { // from class: com.kingroot.kinguser.awo.8
                @Override // com.kingroot.kinguser.aws
                /* renamed from: jT */
                public int mo8612jT(String str) {
                    avb m8847jr;
                    if (TextUtils.isEmpty(str) || !avb.m8870jo(str) || (m8847jr = avf.m8847jr(str)) == null) {
                        return 3;
                    }
                    return m8847jr.mo8834j(null);
                }
            };
        }
        return aUV;
    }
}
