package com.kingroot.kinguser;

import android.support.p007v7.widget.DefaultItemAnimator;
import android.support.p007v7.widget.LinearLayoutManager;
import android.support.p007v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import com.kingroot.kinguser.alh;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class aoc extends anw {
    private RecyclerView aEX;
    private Button aEY;
    private alh aEZ;
    protected final WeakReference<alh.InterfaceC1095c> awO;

    /* JADX INFO: Access modifiers changed from: protected */
    public aoc(View view, aoa aoaVar, alh.InterfaceC1095c interfaceC1095c) {
        super(view, aoaVar);
        this.awO = new WeakReference<>(interfaceC1095c);
        m9996gq();
    }

    /* renamed from: gq */
    private void m9996gq() {
        this.aEX = (RecyclerView) this.mView.findViewById(R.id.app_search_key_word_history_list);
        this.aEX.setLayoutManager(new LinearLayoutManager(this.mView.getContext()));
        this.aEX.setItemAnimator(new DefaultItemAnimator());
        this.aEZ = new alh(this.awO.get());
        this.aEX.setAdapter(this.aEZ);
        this.aEY = (Button) this.mView.findViewById(R.id.item_clear_key_word_history);
        this.aEY.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.item_clear_key_word_history /* 2131689917 */:
                this.aEz.mo10010AV();
                return;
            default:
                return;
        }
    }

    /* renamed from: aS */
    public void m9999aS(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            arrayList.add(new alh.C1094b(2, str));
        }
        this.aEY.setVisibility(8);
        this.aEZ.m10612av(arrayList);
    }

    /* renamed from: aT */
    public void m9998aT(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            arrayList.add(new alh.C1094b(1, str));
        }
        this.aEY.setVisibility(0);
        this.aEZ.m10612av(arrayList);
    }

    /* renamed from: ff */
    public void m9997ff(int i) {
        this.aEZ.m10610ff(i);
    }
}
