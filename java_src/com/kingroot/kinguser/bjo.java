package com.kingroot.kinguser;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.support.annotation.NonNull;
import android.text.format.Formatter;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.kingmaster.toolbox.cleaner.uninstall.data.TcPkgInfo;
import com.kingroot.kinguser.aex;
import com.kingroot.kinguser.aey;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.bjp;
import com.kingroot.kinguses.R;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes.dex */
public class bjo extends acx {
    private ImageView acx;
    private TextView acy;
    private Animation acz;
    private ImageView ahC;
    private bed ahF;
    private List<TcPkgInfo> ahq;
    private TextView baA;
    private bjp.InterfaceC2430a bwY;
    private ProgressDialog bxp;
    private int bxq;
    private bed bxr;
    private adi bxs;
    private ImageView bxt;
    private Animation bxu;
    private boolean mIsRoot;

    public bjo(Context context) {
        super(context);
        this.bxq = 0;
        this.bxr = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bjo.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (bjs.byC == null) {
                    bjs.byC = afd.m12109e(bjo.this.getContext(), 0);
                }
                if (bjs.byC == null) {
                    bjs.byC = new ArrayList();
                }
                for (TcPkgInfo tcPkgInfo : bjs.byC) {
                    if (tcPkgInfo.classify == 1 && tcPkgInfo.enable == 0) {
                        bjo.this.ahq.add(tcPkgInfo);
                    }
                }
                Collections.sort(bjo.this.ahq, new Comparator<TcPkgInfo>() { // from class: com.kingroot.kinguser.bjo.2.1
                    @Override // java.util.Comparator
                    /* renamed from: a */
                    public int compare(TcPkgInfo tcPkgInfo2, TcPkgInfo tcPkgInfo3) {
                        if (tcPkgInfo2.flag != tcPkgInfo3.flag) {
                            return tcPkgInfo2.flag - tcPkgInfo3.flag;
                        }
                        if (tcPkgInfo2.hasLauncherOrMain != tcPkgInfo3.hasLauncherOrMain) {
                            return tcPkgInfo3.hasLauncherOrMain - tcPkgInfo2.hasLauncherOrMain;
                        }
                        return (int) (tcPkgInfo3.appUid - tcPkgInfo2.appUid);
                    }
                });
                bjo.this.getHandler().obtainMessage(1).sendToTarget();
            }
        });
        this.ahF = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bjo.4
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
                super.mo1208a(interfaceC2117a);
                List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                if (abc.m12845qK().isRootPermition(true)) {
                    Message obtainMessage = bjo.this.getHandler().obtainMessage(16);
                    if (mo7445nF != null && mo7445nF.size() > 1) {
                        obtainMessage.arg1 = ((Integer) mo7445nF.get(0)).intValue();
                        obtainMessage.obj = mo7445nF.get(1);
                    } else {
                        obtainMessage.obj = null;
                    }
                    obtainMessage.sendToTarget();
                    return;
                }
                bjo.this.getHandler().obtainMessage(15).sendToTarget();
            }
        });
        this.ahq = new ArrayList();
        this.bwY = new C2422a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.bxq = 0;
    }

    @Override // com.kingroot.kinguser.acx, com.kingroot.kinguser.AbstractC3921yl
    protected Drawable getDivider() {
        return m1414Y(2130837952L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.acx, com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        View inflate = getLayoutInflater().inflate(R.layout.cleaner_uninstall_system_core_template, m1407oM().getContainer(), false);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) inflate.getLayoutParams();
        layoutParams.addRule(10);
        this.mIsRoot = abc.m12845qK().isRootPermition();
        if (!this.mIsRoot) {
            ((TextView) inflate.findViewById(R.id.warning_text)).setText(C3953zi.m1311pr().getString(R.string.software_uninstall_without_root_unable_to_uninstall));
        }
        m1407oM().addContentView(inflate, layoutParams);
        ((RelativeLayout.LayoutParams) getListView().getLayoutParams()).addRule(3, inflate.getId());
        TextView textView = new TextView(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        textView.setGravity(17);
        textView.setText(R.string.unistall_empty_info);
        textView.setTextColor(C3953zi.m1311pr().getColor(R.color.global_secondly_grey_text_color));
        m1407oM().addContentView(textView, layoutParams2);
        getListView().setEmptyView(textView);
        aeh();
        getListView().setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.bjo.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                TcPkgInfo tcPkgInfo;
                if (bjo.this.mIsRoot && bjo.this.ahq != null && (tcPkgInfo = (TcPkgInfo) bjo.this.ahq.get(i)) != null) {
                    aex.C0796a c0796a = new aex.C0796a();
                    c0796a.afP = tcPkgInfo;
                    c0796a.description = "";
                    bjp bjpVar = new bjp(bjo.this.getContext(), c0796a);
                    bjpVar.show();
                    bjpVar.aej();
                    bjpVar.m6690a(bjo.this.bwY);
                }
            }
        });
        m6695vf();
    }

    /* renamed from: vf */
    private void m6695vf() {
        beg.m7461Zj().m7450c(this.bxr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 1:
                aei();
                ((C2423b) this.f4012Ve).setData(this.ahq);
                mo1402oR();
                return;
            case 2:
                final aex.C0796a c0796a = (aex.C0796a) message.obj;
                beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.bjo.3
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        bjo.this.m6699c(c0796a);
                    }
                }));
                return;
            case 3:
                if (message.arg1 == 6) {
                    this.acy.setText(R.string.completed);
                    this.ahC.setVisibility(4);
                    this.acx.clearAnimation();
                    this.acx.setImageResource(R.drawable.succeful_uninstall_ok);
                    Message obtainMessage = getHandler().obtainMessage(4);
                    obtainMessage.obj = message.obj;
                    getHandler().sendMessageDelayed(obtainMessage, 800L);
                    return;
                }
                C3954zj.m1307c(m1417V(2131166057L), 0);
                m6694vh();
                return;
            case 4:
                if (message.obj instanceof aex.C0796a) {
                    TcPkgInfo tcPkgInfo = ((aex.C0796a) message.obj).afP;
                    if (tcPkgInfo != null) {
                        this.ahq.remove(tcPkgInfo);
                        ((C2423b) this.f4012Ve).setData(this.ahq);
                    }
                    m6694vh();
                    mo1402oR();
                }
                this.bxq = 4;
                return;
            case 15:
                m6694vh();
                m6693vi();
                return;
            case 16:
                if (message.obj != null) {
                    Message obtainMessage2 = getHandler().obtainMessage(message.arg1);
                    obtainMessage2.obj = message.obj;
                    obtainMessage2.sendToTarget();
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl
    protected BaseAdapter getAdapter() {
        return new C2423b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public boolean onBackPressed() {
        getActivity().setResult(this.bxq, new Intent());
        return super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m6696f(aex.C0796a c0796a) {
        if (c0796a != null && c0796a.afP != null) {
            m6704Uy();
            this.baA.setText(c0796a.afP.appName);
            ArrayList arrayList = new ArrayList();
            arrayList.add(2);
            arrayList.add(c0796a);
            beg.m7461Zj().m7456a(this.ahF, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m6699c(aex.C0796a c0796a) {
        HashSet hashSet = new HashSet();
        if (abc.m12845qK().isRootPermition(true)) {
            try {
                r0 = aff.m12092eZ(c0796a.afP.packageName) == 0;
                if (!r0) {
                    hashSet.add(c0796a);
                } else {
                    c0796a.afP.enable = 1;
                }
            } catch (Exception e) {
                hashSet.add(c0796a);
            }
        }
        Message obtainMessage = getHandler().obtainMessage(3);
        obtainMessage.obj = c0796a;
        if (r0) {
            obtainMessage.arg1 = 6;
        } else {
            obtainMessage.arg2 = 5;
        }
        obtainMessage.sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        m6694vh();
        super.onDestroy();
    }

    /* renamed from: vh */
    private void m6694vh() {
        if (this.bxp != null && this.bxp.isShowing()) {
            this.bxp.dismiss();
        }
    }

    /* renamed from: Uy */
    private void m6704Uy() {
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
            this.bxp.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.kingroot.kinguser.bjo.5
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                    return true;
                }
            });
            this.bxp.setCanceledOnTouchOutside(false);
        }
        this.baA.setText("");
        this.ahC.setVisibility(0);
        this.acy.setText(m1417V(2131166097L));
        this.acx.setImageResource(R.drawable.uninstall_uninstall_2);
        this.acx.startAnimation(this.acz);
        this.bxp.show();
    }

    private void aeh() {
        if (this.bxs == null) {
            this.bxs = new adi(getContext());
            this.bxs.show();
            this.bxs.setContentView(R.layout.km_progress_dialog);
            ((TextView) this.bxs.findViewById(R.id.progress_text)).setText(m1417V(2131165324L));
            this.bxt = (ImageView) this.bxs.findViewById(R.id.progress_iv);
            this.bxu = AnimationUtils.loadAnimation(getContext(), R.anim.progress_rotation_anim);
            this.bxs.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.kingroot.kinguser.bjo.6
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                    return true;
                }
            });
            this.bxs.setCanceledOnTouchOutside(false);
        }
        this.bxt.setImageResource(R.drawable.common_loading_s);
        this.bxt.startAnimation(this.bxu);
        this.bxs.show();
    }

    private void aei() {
        if (this.bxs.isShowing()) {
            this.bxs.dismiss();
        }
    }

    /* renamed from: vi */
    private void m6693vi() {
        bjt bjtVar = new bjt(getContext());
        bjtVar.show();
        bjtVar.setTitleText(m1417V(2131165770L));
        bjtVar.m6614ma(m1417V(2131165724L));
        bjtVar.m6616lK(m1417V(2131165385L));
        bjtVar.m6617iY(8);
    }

    /* renamed from: com.kingroot.kinguser.bjo$b */
    /* loaded from: classes.dex */
    class C2423b extends AbstractC3856wr {
        List<TcPkgInfo> ajB;

        private C2423b() {
        }

        public void setData(List<TcPkgInfo> list) {
            this.ajB = list;
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.ajB != null) {
                return this.ajB.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        /* renamed from: jo */
        public TcPkgInfo getItem(int i) {
            if (this.ajB != null) {
                return this.ajB.get(i);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            aey.C0798a c0798a;
            TcPkgInfo item = getItem(i);
            if (view == null || view.getTag() == null) {
                aey.C0798a c0798a2 = new aey.C0798a();
                view = bjo.this.getLayoutInflater().inflate(R.layout.cleaner_uninstall_system_list_item, (ViewGroup) null);
                c0798a2.afU = (ImageView) view.findViewById(R.id.item_icon);
                c0798a2.age = (TextView) view.findViewById(R.id.item_title);
                c0798a2.afW = (TextView) view.findViewById(R.id.item_describe);
                c0798a2.afY = (TextView) view.findViewById(R.id.item_describe2);
                c0798a = c0798a2;
            } else {
                c0798a = (aey.C0798a) view.getTag();
            }
            c0798a.age.setText(item.appName);
            acr imageFetcher = getImageFetcher();
            if (imageFetcher != null) {
                imageFetcher.m12665a(item.packageName, c0798a.afU, C3953zi.m1311pr().getDrawable(R.drawable.default_icon));
            }
            boolean m1332pj = C3946zb.m1332pj();
            if (item.description != null && !item.description.equals("") && m1332pj) {
                c0798a.afY.setText(item.description);
            } else {
                c0798a.afY.setText(bjo.this.m1417V(2131166038L));
            }
            c0798a.afW.setText(Formatter.formatFileSize(bjo.this.getContext(), new File(item.appSourceDir).length()));
            view.setTag(c0798a);
            return view;
        }
    }

    /* renamed from: com.kingroot.kinguser.bjo$a */
    /* loaded from: classes.dex */
    final class C2422a implements bjp.InterfaceC2430a {
        C2422a() {
        }

        @Override // com.kingroot.kinguser.bjp.InterfaceC2430a
        /* renamed from: a */
        public void mo6680a(boolean z, aex.C0796a c0796a) {
            if (z) {
                ady.m12308tK().mo1746bi(100059);
                bjo.this.m6696f(c0796a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new C2424c(getContext(), m1417V(2131166038L));
    }

    /* renamed from: com.kingroot.kinguser.bjo$c */
    /* loaded from: classes.dex */
    class C2424c extends acw {
        public C2424c(Context context, String str) {
            super(context, str);
        }

        @Override // com.kingroot.kinguser.AbstractC3933yp
        /* renamed from: oI */
        protected void mo1375oI() {
            m12560ck(1);
            this.abC.setVisibility(4);
            m12561c(new View.OnClickListener() { // from class: com.kingroot.kinguser.bjo.c.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    bjo.this.getActivity().setResult(bjo.this.bxq, new Intent());
                    bjo.this.getActivity().finish();
                }
            });
            mo10167sg().setBackgroundColor(C3953zi.m1311pr().getColor(R.color.uninstall_background_color));
        }
    }
}
