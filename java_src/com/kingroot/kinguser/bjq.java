package com.kingroot.kinguser;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Message;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.common.uilib.KBaseListView;
import com.kingroot.kingmaster.toolbox.cleaner.uninstall.data.TcPkgInfo;
import com.kingroot.kingmaster.toolbox.cleaner.uninstall.manager.AppBackupTool;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguses.R;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class bjq extends AbstractC3922ym {
    private ImageView acx;
    private TextView acy;
    private Animation acz;
    private String[] afK;
    HashSet<C2442d> ahA;
    private ImageView ahC;
    private bed ahF;
    private List<C2442d> ahq;
    private adh ahr;
    private View.OnClickListener ahs;
    private KBaseListView ahw;
    private TextView ahx;
    HashSet<C2442d> ahz;
    private TextView baA;
    private Button bwZ;
    public int bxN;
    private boolean bxO;
    private aey bxP;
    private Button bxQ;
    private RelativeLayout bxR;
    private View$OnClickListenerC2441c bxS;
    private int bxT;
    private AppBackupTool bxU;
    private ProgressDialog bxp;
    private bed bxr;

    public bjq(Context context) {
        super(context);
        this.bxN = 0;
        this.bxO = false;
        this.ahr = null;
        this.bxT = 0;
        this.bxr = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bjq.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                boolean z;
                super.run();
                if (bjs.byC == null) {
                    bjs.byC = afd.m12109e(bjq.this.getContext(), 0);
                }
                if (bjs.byC == null) {
                    bjs.byC = new ArrayList();
                }
                List<TcPkgInfo> list = bjs.byC;
                if (bjq.this.ahq == null) {
                    bjq.this.ahq = new ArrayList();
                }
                bjq.this.ahq.clear();
                ArrayList<AppBackupTool.C0602a> m13030uR = bjq.this.bxU.m13030uR();
                ArrayList<AppBackupTool.C0602a> arrayList = m13030uR == null ? new ArrayList<>() : m13030uR;
                ArrayList<AppBackupTool.C0602a> arrayList2 = new ArrayList();
                HashMap hashMap = new HashMap();
                for (AppBackupTool.C0602a c0602a : arrayList) {
                    hashMap.put(c0602a.mPackageName, c0602a);
                    Iterator<TcPkgInfo> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        }
                        TcPkgInfo next = it.next();
                        if (next.packageName != null && TextUtils.equals(next.packageName, c0602a.mPackageName)) {
                            if (next.enable != 2) {
                                c0602a.ahb = true;
                            }
                            z = true;
                        }
                    }
                    if (!z) {
                        arrayList2.add(c0602a);
                    }
                }
                for (AppBackupTool.C0602a c0602a2 : arrayList2) {
                    TcPkgInfo tcPkgInfo = new TcPkgInfo();
                    tcPkgInfo.packageName = c0602a2.mPackageName;
                    tcPkgInfo.classify = c0602a2.classify;
                    tcPkgInfo.pkgSize = c0602a2.ahd;
                    tcPkgInfo.appName = c0602a2.mAppName;
                    tcPkgInfo.description = c0602a2.f1202Bk;
                    tcPkgInfo.enable = 2;
                    list.add(tcPkgInfo);
                }
                for (TcPkgInfo tcPkgInfo2 : list) {
                    if (tcPkgInfo2 != null && !tcPkgInfo2.isPersonApp && (tcPkgInfo2.enable == 1 || tcPkgInfo2.enable == 2)) {
                        C2442d c2442d = new C2442d();
                        c2442d.afP = tcPkgInfo2;
                        c2442d.description = "";
                        c2442d.afR = false;
                        c2442d.bxZ = tcPkgInfo2.enable;
                        c2442d.bya = (AppBackupTool.C0602a) hashMap.get(tcPkgInfo2.packageName);
                        if (tcPkgInfo2.enable != 2 || c2442d.bya != null) {
                            bjq.this.ahq.add(c2442d);
                        }
                    }
                }
                for (AppBackupTool.C0602a c0602a3 : arrayList) {
                    if (c0602a3.ahb) {
                        try {
                            bjq.this.bxU.m13054a(c0602a3);
                        } catch (Throwable th) {
                        }
                    }
                }
                Collections.sort(bjq.this.ahq);
                bjq.this.getHandler().obtainMessage(1).sendToTarget();
            }
        });
        this.ahF = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bjq.4
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
                super.mo1208a(interfaceC2117a);
                List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                if (abc.m12845qK().isRootPermition(true)) {
                    Message obtainMessage = bjq.this.getHandler().obtainMessage(16);
                    if (mo7445nF != null && mo7445nF.size() > 0) {
                        obtainMessage.obj = mo7445nF.get(0);
                    } else {
                        obtainMessage.obj = null;
                    }
                    obtainMessage.sendToTarget();
                    return;
                }
                bjq.this.getHandler().obtainMessage(15).sendToTarget();
            }
        });
        try {
            this.afK = getResources().getStringArray(R.array.soft_clear_type_names);
        } catch (Throwable th) {
        }
        this.bxU = new AppBackupTool();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new C2438a(getContext(), m1417V(2131165774L));
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        this.ahs = new View$OnClickListenerC2440b();
        View inflate = getLayoutInflater().inflate(R.layout.cleaner_uninstall_recycle_page, (ViewGroup) null);
        this.ahx = (TextView) inflate.findViewById(R.id.list_title);
        this.ahx.setText(String.format(m1417V(2131166084L), 0));
        this.bxR = (RelativeLayout) inflate.findViewById(R.id.btn_container);
        this.bxS = new View$OnClickListenerC2441c();
        this.bwZ = (Button) inflate.findViewById(R.id.operation_first_btn);
        this.bwZ.setText(R.string.unistall_completely);
        this.bwZ.setOnClickListener(this.bxS);
        this.bxQ = (Button) inflate.findViewById(R.id.operation_second_btn);
        this.bxQ.setText(R.string.uninstall_tag_recover);
        this.bxQ.setOnClickListener(this.bxS);
        this.ahw = (KBaseListView) inflate.findViewById(R.id.list_view);
        this.ahw.m13334b(getImageFetcher());
        this.bxP = new aey(this.ahs, this.afK, getLayoutInflater());
        this.ahw.setAdapter((ListAdapter) this.bxP);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.bxN = 0;
        this.ahz = new HashSet<>();
        this.ahq = new ArrayList();
        this.ahA = new HashSet<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        View inflate = getLayoutInflater().inflate(R.layout.list_view_empty_tip, (ViewGroup) null, false);
        TextView textView = (TextView) inflate.findViewById(R.id.list_empty);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        textView.setText(R.string.unistall_empty_info);
        textView.setTextColor(C3953zi.m1311pr().getColor(R.color.global_secondly_grey_text_color));
        m1407oM().addContentView(inflate, layoutParams);
        this.ahw.setEmptyView(inflate);
        if (this.ahr == null) {
            this.ahr = new adh(getContext());
            this.ahr.m12541cp(R.string.loading);
        }
        this.ahr.show();
        m6665vf();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oR */
    public void mo1402oR() {
        m6666ve();
        super.mo1402oR();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: i */
    public void mo1372i(Object obj) {
        if (this.ahq.size() == 0) {
            this.ahx.setVisibility(4);
        } else {
            if (this.ahx.getVisibility() != 0) {
                this.ahx.setVisibility(0);
            }
            this.ahx.setText(String.format(m1417V(2131166084L), Integer.valueOf(this.ahq.size())));
        }
        m6664vg();
    }

    /* renamed from: ve */
    public void m6666ve() {
        this.bxP.m12142Z(this.ahq);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        String str = null;
        super.mo1413a(message);
        switch (message.what) {
            case 1:
                if (this.ahr != null) {
                    this.ahr.dismiss();
                }
                this.ahr = null;
                mo1402oR();
                return;
            case 2:
                m1418U(0L);
                return;
            case 3:
            case 4:
                this.bxT = this.ahz.size();
                final int i = message.what;
                beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.bjq.1
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        bjq.this.m6671jp(i);
                    }
                }));
                return;
            case 5:
                String V = m1417V(2131166032L);
                if (message.arg2 == 3) {
                    V = m1417V(2131166034L);
                }
                this.acy.setText(String.format(V, Integer.valueOf(message.arg1), Integer.valueOf(this.bxT)));
                this.baA.setText((String) message.obj);
                return;
            case 6:
            case 7:
                if (message.what == 7) {
                    this.acy.setText(R.string.uninstall_complete);
                } else {
                    this.acy.setText(R.string.recover_complete);
                }
                this.acx.clearAnimation();
                this.ahC.setVisibility(4);
                if (message.arg2 == 0) {
                    this.acx.setImageResource(R.drawable.succeful_uninstall_ok);
                    this.baA.setText("");
                } else {
                    int i2 = message.arg1 - message.arg2;
                    try {
                        str = String.format(m1417V(2131166086L), Integer.valueOf(i2), Integer.valueOf(message.arg2));
                    } catch (Throwable th) {
                    }
                    this.baA.setText((str == null || i2 < 0) ? "" : "");
                    this.acx.setImageResource(R.drawable.backgroup_uninstall_failture);
                }
                getHandler().sendEmptyMessageDelayed(8, 800L);
                return;
            case 8:
                this.ahq.removeAll(this.ahA);
                this.ahz.removeAll(this.ahA);
                this.ahA.clear();
                m6664vg();
                m6663vh();
                mo1402oR();
                return;
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            default:
                return;
            case 15:
                m6663vh();
                m6662vi();
                return;
            case 16:
                if (message.obj != null) {
                    getHandler().sendEmptyMessage(((Integer) message.obj).intValue());
                    return;
                }
                return;
        }
    }

    /* renamed from: vf */
    private void m6665vf() {
        beg.m7461Zj().m7450c(this.bxr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStart() {
        super.onStart();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        super.onStop();
    }

    /* renamed from: vg */
    public void m6664vg() {
        if (this.ahz.size() == 0) {
            this.bxR.setVisibility(8);
        } else if (this.bxR.getVisibility() == 8) {
            Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.slide_in_bottom);
            loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.kingroot.kinguser.bjq.3
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                    bjq.this.bxO = true;
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    if (bjq.this.ahz.size() != 0) {
                        bjq.this.bxR.setVisibility(0);
                    }
                    bjq.this.bxO = false;
                }
            });
            if (!this.bxO) {
                this.bxR.startAnimation(loadAnimation);
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.bjq$c */
    /* loaded from: classes.dex */
    final class View$OnClickListenerC2441c implements View.OnClickListener {
        View$OnClickListenerC2441c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (aer.m12170aq(bjq.this.getContext())) {
                if (view.getId() == R.id.operation_first_btn) {
                    ady.m12308tK().mo1746bi(100240);
                    bjq.this.m6668js(3);
                } else if (view.getId() == R.id.operation_second_btn) {
                    ady.m12308tK().mo1746bi(100241);
                    bjq.this.m6668js(4);
                    bjq.this.bxN = 4;
                }
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.bjq$b */
    /* loaded from: classes.dex */
    final class View$OnClickListenerC2440b implements View.OnClickListener {
        View$OnClickListenerC2440b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (bjq.this.ahq != null && bjq.this.ahz != null) {
                C2442d c2442d = (C2442d) bjq.this.ahq.get(view.getId());
                if (!c2442d.afR) {
                    c2442d.afR = true;
                    bjq.this.ahz.add(c2442d);
                } else {
                    c2442d.afR = false;
                    bjq.this.ahz.remove(c2442d);
                }
                bjq.this.getHandler().sendEmptyMessage(2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: jp */
    public void m6671jp(int i) {
        boolean z;
        HashSet hashSet = new HashSet();
        C3952zh m1312pq = C3952zh.m1312pq();
        if (abc.m12845qK().isRootPermition(true)) {
            Iterator<C2442d> it = this.ahz.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                C2442d next = it.next();
                Message message = new Message();
                if (!TextUtils.isEmpty(next.afP.appName)) {
                    message.obj = next.afP.appName;
                } else {
                    message.obj = next.afP.packageName;
                }
                message.what = 5;
                i2++;
                message.arg1 = i2;
                message.arg2 = i;
                getHandler().sendMessage(message);
                if (i == 4) {
                    try {
                        if (next.bxZ == 2) {
                            int m13053a = this.bxU.m13053a(next.bya, false, null);
                            if (m13053a != AppBackupTool.ERROR_NONE && m13053a == AppBackupTool.agV) {
                                String V = m1417V(2131166085L);
                                Object[] objArr = new Object[1];
                                objArr[0] = TextUtils.isEmpty(next.afP.appName) ? next.afP.packageName : next.afP.appName;
                                C3954zj.m1307c(String.format(V, objArr), 0);
                            }
                            z = m13053a == 0;
                        } else {
                            z = aff.m12091fa(next.afP.packageName) == 0;
                        }
                        if (!z) {
                            hashSet.add(next);
                        } else {
                            next.afP.enable = 0;
                        }
                    } catch (Throwable th) {
                        hashSet.add(next);
                    }
                } else if (i == 3) {
                    try {
                        if (next.bxZ == 2) {
                            this.bxU.m13054a(next.bya);
                        } else {
                            PackageInfo packageInfo = null;
                            int i3 = -1;
                            if (m1312pq != null) {
                                packageInfo = m1312pq.getPackageInfo(next.afP.packageName, 0);
                            }
                            if (packageInfo != null && packageInfo.applicationInfo != null) {
                                i3 = (packageInfo.applicationInfo.flags & 128) != 0 ? aff.m12093eY(next.afP.packageName) : aff.m12096V(next.afP.packageName, next.afP.appSourceDir);
                            }
                            if (!(i3 == 0)) {
                                hashSet.add(next);
                            } else {
                                next.afP.enable = 2;
                                if (m1312pq != null) {
                                    try {
                                        if (m1312pq.getApplicationEnabledSetting(next.afP.packageName) == 2) {
                                            aff.m12091fa(next.afP.packageName);
                                        }
                                    } catch (Throwable th2) {
                                    }
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        hashSet.add(next);
                    }
                }
            }
            if (this.ahA == null) {
                this.ahA = new HashSet<>();
            }
            this.ahA.clear();
            this.ahA.addAll(this.ahz);
            Message obtainMessage = getHandler().obtainMessage();
            obtainMessage.arg1 = this.ahz.size();
            obtainMessage.arg2 = hashSet.size();
            this.ahA.removeAll(hashSet);
            if (i == 3) {
                obtainMessage.what = 7;
            } else {
                obtainMessage.what = 6;
            }
            getHandler().sendMessageDelayed(obtainMessage, 300L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: jq */
    public void m6670jq(int i) {
        m6669jr(i);
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i));
        beg.m7461Zj().m7456a(this.ahF, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        m6667vd();
        super.onDestroy();
    }

    /* renamed from: vh */
    private void m6663vh() {
        if (this.bxp != null && this.bxp.isShowing()) {
            this.bxp.dismiss();
        }
    }

    /* renamed from: vd */
    public void m6667vd() {
        if (this.bxp != null && this.bxp.isShowing()) {
            this.bxp.dismiss();
        }
        if (this.ahr != null && this.ahr.isShowing()) {
            this.ahr.dismiss();
        }
    }

    /* renamed from: jr */
    private void m6669jr(int i) {
        if (this.bxp == null) {
            this.bxp = new ProgressDialog(getContext());
            this.bxp.show();
            Display defaultDisplay = getActivity().getWindowManager().getDefaultDisplay();
            WindowManager.LayoutParams attributes = this.bxp.getWindow().getAttributes();
            attributes.width = defaultDisplay.getWidth();
            attributes.height = defaultDisplay.getHeight();
            this.bxp.getWindow().setAttributes(attributes);
            this.bxp.setContentView(R.layout.cleaner_uninstall_progress_dialog);
            this.acy = (TextView) this.bxp.findViewById(R.id.process_percent_tv);
            this.baA = (TextView) this.bxp.findViewById(R.id.current_software);
            this.acx = (ImageView) this.bxp.findViewById(R.id.progress_turning);
            this.ahC = (ImageView) this.bxp.findViewById(R.id.progress_iv);
            this.acz = AnimationUtils.loadAnimation(getContext(), R.anim.progress_rotation_anim);
            if (4 == i) {
                this.ahC.setImageResource(R.drawable.backgroup_uninstall_restore);
            } else {
                this.ahC.setImageResource(R.drawable.backgroup_uninstall_empty);
            }
            this.bxp.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.kingroot.kinguser.bjq.5
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                    return true;
                }
            });
            this.bxp.setCanceledOnTouchOutside(false);
        }
        this.ahC.setVisibility(0);
        String V = m1417V(2131166034L);
        if (i == 4) {
            V = m1417V(2131166032L);
            this.ahC.setImageResource(R.drawable.backgroup_uninstall_restore);
        } else {
            this.ahC.setImageResource(R.drawable.backgroup_uninstall_empty);
        }
        this.baA.setText("");
        this.acy.setText(String.format(V, 0, Integer.valueOf(this.ahz.size())));
        this.acx.setImageResource(R.drawable.uninstall_uninstall_2);
        this.acx.startAnimation(this.acz);
        this.bxp.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: js */
    public void m6668js(final int i) {
        big bigVar = new big(getContext());
        bigVar.show();
        if (i == 4) {
            bigVar.setTitleText(m1417V(2131166083L));
            bigVar.m6930lL(m1417V(2131166092L));
        } else {
            bigVar.setTitleText(m1417V(2131166069L));
            bigVar.m6930lL(m1417V(2131166098L));
        }
        bigVar.mo6682lK(m1417V(2131165380L));
        bigVar.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bjq.6
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                bjq.this.m6670jq(i);
            }
        });
        bigVar.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bjq.7
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
            }
        });
    }

    /* renamed from: vi */
    private void m6662vi() {
        bjt bjtVar = new bjt(getContext());
        bjtVar.show();
        bjtVar.setTitleText(m1417V(2131165770L));
        bjtVar.m6614ma(m1417V(2131165724L));
        bjtVar.m6616lK(m1417V(2131165385L));
        bjtVar.m6617iY(8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public boolean onBackPressed() {
        getActivity().setResult(this.bxN, new Intent());
        return super.onBackPressed();
    }

    /* renamed from: com.kingroot.kinguser.bjq$a */
    /* loaded from: classes.dex */
    class C2438a extends acw {
        public C2438a(Context context, String str) {
            super(context, str);
        }

        @Override // com.kingroot.kinguser.AbstractC3933yp
        /* renamed from: oI */
        protected void mo1375oI() {
            m12560ck(1);
            this.abC.setVisibility(4);
            m12561c(new View.OnClickListener() { // from class: com.kingroot.kinguser.bjq.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    bjq.this.getActivity().setResult(bjq.this.bxN, new Intent());
                    bjq.this.getActivity().finish();
                }
            });
            mo10167sg().setBackgroundColor(C3953zi.m1311pr().getColor(R.color.uninstall_background_color));
            getWholeView().findViewById(R.id.title_bar_divider).setVisibility(0);
        }
    }

    /* renamed from: com.kingroot.kinguser.bjq$d */
    /* loaded from: classes.dex */
    public static class C2442d implements Comparable<C2442d> {
        public TcPkgInfo afP;
        public boolean afR;
        public int bxZ = 1;
        public AppBackupTool.C0602a bya;
        public String description;

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(C2442d c2442d) {
            if (this.afP != null && c2442d.afP != null) {
                Collator collator = Collator.getInstance(Locale.getDefault());
                if (TextUtils.isEmpty(this.afP.appName) || TextUtils.isEmpty(c2442d.afP.appName)) {
                    return collator.compare(this.afP.packageName, c2442d.afP.packageName);
                }
                return collator.compare(this.afP.appName, c2442d.afP.appName);
            }
            return -1;
        }
    }
}
