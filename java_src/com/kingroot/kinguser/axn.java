package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.kinguser.activitys.SelectAppsActivity;
import com.kingroot.kinguser.afk;
import com.kingroot.kinguser.axb;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes.dex */
public class axn extends acy implements View.OnClickListener {
    private View aWk;
    private ViewGroup aXi;
    private View bas;
    private ArrayList<afk> bat;
    private HashSet<String> bau;
    private ake bav;
    private bed baw;

    public axn(Context context) {
        super(context);
        this.baw = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.axn.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                C3952zh m1312pq = C3952zh.m1312pq();
                if (axn.this.bav == null) {
                    axn.this.bav = ake.m11308Al();
                }
                HashSet hashSet = new HashSet(axn.this.bav.m11312Ak());
                ArrayList arrayList = new ArrayList();
                if (m1312pq != null) {
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        if (axn.this.bau.contains(str) && axn.this.m8244jY(str)) {
                            axn.this.bau.remove(str);
                            axn.this.bav.m11309gF(str);
                        }
                        if (!axn.this.bau.contains(str)) {
                            try {
                                PackageInfo packageInfo = m1312pq.getPackageInfo(str, 0);
                                arrayList.add(new afk(packageInfo.applicationInfo.loadLabel(m1312pq).toString(), packageInfo.packageName));
                            } catch (PackageManager.NameNotFoundException e) {
                            }
                        }
                    }
                }
                Message obtainMessage = axn.this.getHandler().obtainMessage(0);
                obtainMessage.obj = arrayList;
                obtainMessage.sendToTarget();
            }
        });
        this.bat = new ArrayList<>();
        this.bau = new HashSet<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        super.onStop();
        if (this.bav != null) {
            this.bav.m11311aI(getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 0 && i2 == -1) {
            this.f4011Vd.setVisibility(8);
            this.bas.setVisibility(0);
            beg.m7461Zj().m7450c(this.baw);
            getActivity().setResult(-1);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl
    protected BaseAdapter getAdapter() {
        return new afk.C0819d(getContext(), this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new ada(getContext(), m1417V(2131165445L));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3936ys, com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        this.aXi = (ViewGroup) getLayoutInflater().inflate(R.layout.operation_bar, (ViewGroup) null);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.list_footer_bar_height));
        layoutParams.addRule(12);
        m1407oM().addContentView(this.aXi, layoutParams);
        ((RelativeLayout.LayoutParams) getListView().getLayoutParams()).addRule(2, R.id.operation_bar);
        Button button = (Button) this.aXi.findViewById(R.id.operation_first_btn);
        button.setText(m1417V(2131165252L));
        button.setOnClickListener(this);
        this.aWk = getLayoutInflater().inflate(R.layout.list_view_empty_tip, m1407oM().getContainer(), false);
        TextView textView = (TextView) this.aWk.findViewById(R.id.list_empty);
        textView.setText(m1417V(2131165446L));
        textView.setTextColor(C3953zi.m1311pr().getColor(R.color.global_secondly_grey_text_color));
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.aWk.getLayoutParams();
        layoutParams2.height = -1;
        layoutParams2.addRule(13);
        layoutParams2.addRule(2, R.id.operation_bar);
        m1407oM().addContentView(this.aWk, layoutParams2);
        getListView().setEmptyView(this.aWk);
        m1407oM().getContainer().setBackgroundResource(R.color.general_light_bg);
        this.bas = m1407oM().getContainer().findViewById(R.id.loading_progress);
        this.f4011Vd.setDivider(C3953zi.m1311pr().getDrawable(R.drawable.list_view_divider_padding_shape));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        if (message.what == 0) {
            ArrayList arrayList = (ArrayList) message.obj;
            this.bat.addAll(arrayList);
            LinkedList<afk> linkedList = new LinkedList();
            linkedList.addAll(this.bat);
            this.bat.clear();
            for (afk afkVar : linkedList) {
                if (!m8244jY(afkVar.mPackageName)) {
                    this.bat.add(afkVar);
                }
            }
            Collections.sort(this.bat, new axb.C1771a());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.bau.add(((afk) it.next()).mPackageName);
            }
            ((afk.C0819d) this.f4012Ve).setData(this.bat);
            mo1402oR();
            return;
        }
        super.mo1413a(message);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        beg.m7461Zj().m7450c(this.baw);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: jY */
    public boolean m8244jY(String str) {
        C3952zh m1312pq = C3952zh.m1312pq();
        try {
            m1312pq.getPackageInfo(str, 0);
            try {
                return m1312pq.getApplicationEnabledSetting(str) == 2;
            } catch (IllegalArgumentException e) {
                return false;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.operation_first_btn) {
            ady.m12308tK().mo1746bi(100219);
            Intent intent = new Intent(getContext(), SelectAppsActivity.class);
            intent.putExtra("software.protect_list.page", 1);
            getActivity().startActivityForResult(intent, 0);
            return;
        }
        afk afkVar = (afk) view.getTag();
        this.bat.remove(afkVar);
        this.bau.remove(afkVar.mPackageName);
        this.bav.m11309gF(afkVar.mPackageName);
        getActivity().setResult(-1);
        ((afk.C0819d) this.f4012Ve).setData(this.bat);
        this.f4012Ve.notifyDataSetChanged();
    }
}
