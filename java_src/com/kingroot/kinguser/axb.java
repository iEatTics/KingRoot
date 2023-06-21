package com.kingroot.kinguser;

import andhook.lib.xposed.callbacks.XCallback;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.kinguser.afk;
import com.kingroot.kinguses.R;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class axb extends acy implements AdapterView.OnItemClickListener, adb {
    private View aNW;
    private bed aSN;
    private akd aXg;
    private HashSet<afk> aXh;
    private ViewGroup aXi;
    private AbstractC1772b aXj;
    private ArrayList<afk> acr;
    private String mTitle;

    public axb(Context context, akd akdVar, AbstractC1772b abstractC1772b) {
        super(context);
        this.acr = new ArrayList<>();
        this.aXh = new HashSet<>();
        this.aSN = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.axb.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                List<afk> list;
                super.run();
                afl aflVar = new afl(axb.this.getContext());
                ArrayList arrayList = new ArrayList();
                C3952zh m1312pq = C3952zh.m1312pq();
                if (m1312pq != null) {
                    String V = axb.this.m1417V(2131166037L);
                    String V2 = axb.this.m1417V(2131166130L);
                    List<PackageInfo> installedPackages = m1312pq.getInstalledPackages(64);
                    if (installedPackages != null) {
                        for (PackageInfo packageInfo : installedPackages) {
                            if (!axb.this.aXg.contains(packageInfo.packageName) && aflVar.m12056d(packageInfo)) {
                                afk afkVar = new afk(packageInfo.applicationInfo.loadLabel(m1312pq).toString(), packageInfo.packageName);
                                if ((packageInfo.applicationInfo.flags & 1) != 0) {
                                    afkVar.mDescription = V;
                                } else {
                                    afkVar.mDescription = V2;
                                }
                                arrayList.add(afkVar);
                            }
                        }
                    }
                    list = axb.this.aXj != null ? axb.this.aXj.mo8513ab(arrayList) : arrayList;
                    Collections.sort(list, new C1771a());
                    if (axb.this.aXj != null) {
                        list = axb.this.aXj.mo8512ac(list);
                    }
                } else {
                    list = arrayList;
                }
                Message obtainMessage = axb.this.getHandler().obtainMessage(XCallback.PRIORITY_LOWEST);
                obtainMessage.obj = list;
                obtainMessage.sendToTarget();
            }
        });
        this.aXg = akdVar;
        this.aXj = abstractC1772b;
    }

    public axb(Context context, akd akdVar, AbstractC1772b abstractC1772b, String str) {
        super(context);
        this.acr = new ArrayList<>();
        this.aXh = new HashSet<>();
        this.aSN = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.axb.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                List<afk> list;
                super.run();
                afl aflVar = new afl(axb.this.getContext());
                ArrayList arrayList = new ArrayList();
                C3952zh m1312pq = C3952zh.m1312pq();
                if (m1312pq != null) {
                    String V = axb.this.m1417V(2131166037L);
                    String V2 = axb.this.m1417V(2131166130L);
                    List<PackageInfo> installedPackages = m1312pq.getInstalledPackages(64);
                    if (installedPackages != null) {
                        for (PackageInfo packageInfo : installedPackages) {
                            if (!axb.this.aXg.contains(packageInfo.packageName) && aflVar.m12056d(packageInfo)) {
                                afk afkVar = new afk(packageInfo.applicationInfo.loadLabel(m1312pq).toString(), packageInfo.packageName);
                                if ((packageInfo.applicationInfo.flags & 1) != 0) {
                                    afkVar.mDescription = V;
                                } else {
                                    afkVar.mDescription = V2;
                                }
                                arrayList.add(afkVar);
                            }
                        }
                    }
                    list = axb.this.aXj != null ? axb.this.aXj.mo8513ab(arrayList) : arrayList;
                    Collections.sort(list, new C1771a());
                    if (axb.this.aXj != null) {
                        list = axb.this.aXj.mo8512ac(list);
                    }
                } else {
                    list = arrayList;
                }
                Message obtainMessage = axb.this.getHandler().obtainMessage(XCallback.PRIORITY_LOWEST);
                obtainMessage.obj = list;
                obtainMessage.sendToTarget();
            }
        });
        this.aXg = akdVar;
        this.aXj = abstractC1772b;
        this.mTitle = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl
    protected BaseAdapter getAdapter() {
        return new afk.C0817b(getContext());
    }

    @Override // com.kingroot.kinguser.AbstractC3936ys, com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: i */
    public void mo1372i(Object obj) {
        super.mo1372i(obj);
        if (this.acr.size() == 0) {
            this.aNW.setVisibility(0);
            this.f4011Vd.setVisibility(8);
            return;
        }
        this.aNW.setVisibility(8);
        this.f4011Vd.setVisibility(0);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        ada adaVar = new ada(getContext(), TextUtils.isEmpty(this.mTitle) ? m1417V(2131165974L) : this.mTitle);
        adaVar.getWholeView().findViewById(R.id.title_bar_divider).setVisibility(0);
        return adaVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3936ys, com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        AbstractC3933yp oM = m1407oM();
        oM.getContainer().setBackgroundResource(R.color.global_background_color);
        this.aXi = (ViewGroup) getLayoutInflater().inflate(R.layout.operation_bar, (ViewGroup) null);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.list_footer_bar_height));
        layoutParams.addRule(12);
        oM.addContentView(this.aXi, layoutParams);
        this.aXi.setVisibility(8);
        Button button = (Button) this.aXi.findViewById(R.id.operation_first_btn);
        button.setText(m1417V(2131165253L));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axb.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (axb.this.aXj != null) {
                    axb.this.aXj.mo8514a(axb.this.aXh);
                }
                ArrayList<String> arrayList = new ArrayList();
                Iterator it = axb.this.aXh.iterator();
                while (it.hasNext()) {
                    arrayList.add(((afk) it.next()).mPackageName);
                }
                for (String str : arrayList) {
                    axb.this.aXg.m11310fg(str);
                }
                axb.this.aXg.m11311aI(axb.this.getContext());
                ady.m12308tK().mo1746bi(100220);
                axb.this.getActivity().setResult(-1);
                axb.this.getActivity().finish();
            }
        });
        this.aNW = getLayoutInflater().inflate(R.layout.list_view_empty_tip, oM.getContainer(), false);
        TextView textView = (TextView) this.aNW.findViewById(R.id.list_empty);
        textView.setText(m1417V(2131165307L));
        textView.setTextColor(C3953zi.m1311pr().getColor(R.color.global_secondly_grey_text_color));
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.aNW.getLayoutParams();
        layoutParams2.addRule(13);
        this.aNW.setVisibility(8);
        oM.addContentView(this.aNW, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.f4011Vd.getLayoutParams();
        layoutParams3.addRule(2, R.id.operation_bar);
        layoutParams3.addRule(3, R.id.selected_panel);
        setOnItemClickListener(this);
        this.f4011Vd.setDivider(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1) {
            getActivity().setResult(-1);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case XCallback.PRIORITY_LOWEST /* -10000 */:
                ArrayList<afk> arrayList = (ArrayList) message.obj;
                this.acr = arrayList;
                ((afk.C0817b) this.f4012Ve).setData(arrayList);
                m1418U(0L);
                return;
            default:
                return;
        }
    }

    /* renamed from: com.kingroot.kinguser.axb$a */
    /* loaded from: classes.dex */
    static class C1771a implements Comparator<afk> {
        private Collator ahV = Collator.getInstance(Locale.CHINA);

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(afk afkVar, afk afkVar2) {
            if (afkVar.aha == afkVar2.aha) {
                return this.ahV.compare(afkVar.mName, afkVar2.mName);
            }
            return afkVar.aha ? 1 : -1;
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        afk afkVar = (afk) adapterView.getItemAtPosition(i);
        afkVar.mChecked = !afkVar.mChecked;
        if (afkVar.mChecked) {
            this.aXh.add(afkVar);
        } else {
            this.aXh.remove(afkVar);
        }
        if (this.aXh.size() > 0) {
            this.aXi.setVisibility(0);
        } else {
            this.aXi.setVisibility(8);
        }
        m1418U(0L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        beg.m7461Zj().m7450c(this.aSN);
        super.onResume();
    }

    /* renamed from: com.kingroot.kinguser.axb$b */
    /* loaded from: classes.dex */
    public static abstract class AbstractC1772b {
        /* renamed from: ac */
        public List<afk> mo8512ac(List<afk> list) {
            return list;
        }

        /* renamed from: ab */
        public List<afk> mo8513ab(List<afk> list) {
            return list;
        }

        /* renamed from: a */
        public void mo8514a(HashSet<afk> hashSet) {
        }
    }
}
