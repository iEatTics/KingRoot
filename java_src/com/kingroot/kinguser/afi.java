package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.text.Html;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.common.uilib.KBaseListView;
import com.kingroot.kinguser.aex;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes.dex */
public class afi extends AbstractC3922ym {
    private ImageView acx;
    private TextView acy;
    private String[] afK;
    HashSet<aex.C0796a> ahA;
    private adi ahB;
    private ImageView ahC;
    private bjs ahD;
    private bed ahE;
    private bed ahF;
    private List<aex.C0796a> ahq;
    private adh ahr;
    private View.OnClickListener ahs;
    private afh aht;
    private Button ahu;
    private RelativeLayout ahv;
    private KBaseListView ahw;
    private TextView ahx;
    private View$OnClickListenerC0813b ahy;
    HashSet<aex.C0796a> ahz;

    public afi(Context context) {
        super(context);
        this.ahr = null;
        this.ahE = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.afi.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                if (afi.this.ahD == null) {
                    afi.this.ahD = (bjs) adt.m12458sY().mo12454f(bjs.class);
                }
                Object ta = afi.this.ahD.m12450ta();
                for (aex.C0796a c0796a : ta instanceof List ? (List) ta : arrayList) {
                    if (c0796a.afP.enable == 0) {
                        aex.C0796a c0796a2 = new aex.C0796a();
                        c0796a2.afR = c0796a.afR;
                        c0796a2.afP = c0796a.afP;
                        afi.this.ahq.add(c0796a2);
                        if (c0796a.afR) {
                            afi.this.ahz.add(c0796a2);
                        }
                    }
                }
                Collections.sort(afi.this.ahq, new Comparator<aex.C0796a>() { // from class: com.kingroot.kinguser.afi.3.1
                    @Override // java.util.Comparator
                    /* renamed from: a */
                    public int compare(aex.C0796a c0796a3, aex.C0796a c0796a4) {
                        if (c0796a3.afR != c0796a4.afR) {
                            return c0796a3.afR ? -1 : 1;
                        }
                        return c0796a3.afP.appName.compareToIgnoreCase(c0796a4.afP.appName);
                    }
                });
                afi.this.getHandler().obtainMessage(1).sendToTarget();
            }
        });
        this.ahF = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.afi.4
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(bed.InterfaceC2117a interfaceC2117a) {
                super.mo1208a(interfaceC2117a);
                List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                if (abc.m12845qK().isRootPermition(true)) {
                    Message obtainMessage = afi.this.getHandler().obtainMessage(16);
                    if (mo7445nF != null && mo7445nF.size() > 1) {
                        obtainMessage.arg1 = ((Integer) mo7445nF.get(0)).intValue();
                        obtainMessage.obj = mo7445nF.get(1);
                    } else {
                        obtainMessage.obj = null;
                    }
                    obtainMessage.sendToTarget();
                    return;
                }
                afi.this.getHandler().obtainMessage(15).sendToTarget();
            }
        });
        this.afK = getResources().getStringArray(R.array.soft_clear_type_names);
        this.ahz = new HashSet<>();
        this.ahq = new ArrayList();
        this.ahA = new HashSet<>();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new ada(getContext(), m1417V(2131166079L));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.ahD = (bjs) adt.m12458sY().mo12454f(bjs.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        m12071vd();
        super.onDestroy();
        this.ahD = null;
    }

    /* renamed from: vd */
    public void m12071vd() {
        if (this.ahB != null && this.ahB.isShowing()) {
            this.ahB.dismiss();
        }
        if (this.ahr != null && this.ahr.isShowing()) {
            this.ahr.dismiss();
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        this.ahs = new View$OnClickListenerC0812a();
        View inflate = getLayoutInflater().inflate(R.layout.cleaner_uninstall_optimize_page, (ViewGroup) null);
        this.ahx = (TextView) inflate.findViewById(R.id.list_title);
        this.ahx.setText(String.format(m1417V(2131166080L), 0));
        this.ahy = new View$OnClickListenerC0813b();
        this.ahv = (RelativeLayout) inflate.findViewById(R.id.button_area);
        this.ahu = (Button) inflate.findViewById(R.id.operation_first_btn);
        this.ahu.setOnClickListener(this.ahy);
        this.ahw = (KBaseListView) inflate.findViewById(R.id.list_view);
        this.ahw.m13334b(getImageFetcher());
        this.aht = new afh(this.ahs, this.afK, getLayoutInflater());
        this.ahw.setAdapter((ListAdapter) this.aht);
        this.ahw.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.afi.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                bjp bjpVar = new bjp(afi.this.getContext(), afi.this.aht.getItem(i));
                bjpVar.show();
                bjpVar.mo6683iY(8);
                bjpVar.mo6682lK(afi.this.m1417V(2131166067L));
            }
        });
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        TextView textView = new TextView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        textView.setGravity(17);
        textView.setText(R.string.unistall_empty_info);
        m1407oM().addContentView(textView, layoutParams);
        this.ahw.setEmptyView(textView);
        if (this.ahr == null) {
            this.ahr = new adh(getContext());
            this.ahr.m12541cp(R.string.loading);
        }
        this.ahr.show();
        m12069vf();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oR */
    public void mo1402oR() {
        m12070ve();
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
            this.ahx.setText(String.format(m1417V(2131166080L), Integer.valueOf(this.ahq.size())));
        }
        m12068vg();
    }

    /* renamed from: ve */
    public void m12070ve() {
        this.aht.m12080Z(this.ahq);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
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
                final aex.C0796a c0796a = (aex.C0796a) message.obj;
                beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.afi.2
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        afi.this.m12073c(c0796a);
                    }
                }));
                return;
            case 4:
                if (message.arg1 == 7) {
                    this.acy.setText(R.string.completed);
                    this.ahC.setVisibility(4);
                    this.acx.clearAnimation();
                    this.acx.setImageResource(R.drawable.uninstall_loading_icon_complete);
                    Message obtainMessage = getHandler().obtainMessage(5);
                    obtainMessage.obj = message.obj;
                    getHandler().sendMessageDelayed(obtainMessage, 800L);
                    return;
                }
                C3954zj.m1307c(m1417V(2131166057L), 0);
                m12067vh();
                return;
            case 5:
                if (message.obj instanceof aex.C0796a) {
                    if (message.obj instanceof aex.C0796a) {
                        this.ahq.remove((aex.C0796a) message.obj);
                        this.aht.setData(this.ahq);
                    }
                    m12067vh();
                    mo1402oR();
                    return;
                }
                return;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            default:
                return;
            case 15:
                m12067vh();
                m12066vi();
                return;
            case 16:
                if (message.obj != null) {
                    Message obtainMessage2 = getHandler().obtainMessage(message.arg1);
                    obtainMessage2.obj = message.obj;
                    obtainMessage2.sendToTarget();
                    return;
                }
                return;
        }
    }

    /* renamed from: vf */
    private void m12069vf() {
        beg.m7461Zj().m7450c(this.ahE);
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
    public void m12068vg() {
        if (this.ahz.size() == 0) {
            this.ahu.setText(m1417V(2131166070L));
        } else {
            this.ahu.setText(String.format(m1417V(2131166071L), Integer.valueOf(this.ahz.size())));
        }
        this.ahv.setVisibility(this.ahq.size() == 0 ? 8 : 0);
    }

    /* renamed from: com.kingroot.kinguser.afi$b */
    /* loaded from: classes.dex */
    final class View$OnClickListenerC0813b implements View.OnClickListener {
        View$OnClickListenerC0813b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (afi.this.ahD.byz != null && bjs.byC != null) {
                afi.this.ahD.byz.m12447a(bjs.byC.size(), afi.this.ahz.size(), afi.this.ahz, Html.fromHtml(String.format(afi.this.m1417V(2131166077L), Integer.valueOf(afi.this.ahz.size()))));
                afi.this.ahD.m12452n(afi.this.ahq);
            }
            afi.this.getActivity().finish();
        }
    }

    /* renamed from: com.kingroot.kinguser.afi$a */
    /* loaded from: classes.dex */
    final class View$OnClickListenerC0812a implements View.OnClickListener {
        View$OnClickListenerC0812a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (afi.this.ahq != null && afi.this.ahz != null) {
                aex.C0796a c0796a = (aex.C0796a) afi.this.ahq.get(view.getId());
                if (!c0796a.afR) {
                    c0796a.afR = true;
                    afi.this.ahz.add(c0796a);
                } else {
                    c0796a.afR = false;
                    afi.this.ahz.remove(c0796a);
                }
                afi.this.getHandler().sendEmptyMessage(2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m12073c(aex.C0796a c0796a) {
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
        Message obtainMessage = getHandler().obtainMessage(4);
        obtainMessage.obj = c0796a;
        if (r0) {
            obtainMessage.arg1 = 7;
        } else {
            obtainMessage.arg2 = 6;
        }
        obtainMessage.sendToTarget();
    }

    /* renamed from: vh */
    private void m12067vh() {
        if (this.ahB.isShowing()) {
            this.ahB.dismiss();
        }
    }

    /* renamed from: vi */
    private void m12066vi() {
        bjt bjtVar = new bjt(getContext());
        bjtVar.show();
        bjtVar.setTitleText(m1417V(2131165770L));
        bjtVar.m6614ma(m1417V(2131165724L));
        bjtVar.m6616lK(m1417V(2131165385L));
        bjtVar.m6617iY(8);
    }
}
