package com.kingroot.kinguser;

import android.support.p007v7.widget.DefaultItemAnimator;
import android.support.p007v7.widget.RecyclerView;
import android.support.p007v7.widget.StaggeredGridLayoutManager;
import android.view.View;
import android.widget.Button;
import com.kingroot.kinguser.alg;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class anz extends anw {
    private List<aml> aAF;
    private final alg.InterfaceC1090a aEJ;
    private RecyclerView aEK;
    private alg aEL;
    private Button aEM;

    public anz(View view, aoa aoaVar, alg.InterfaceC1090a interfaceC1090a) {
        super(view, aoaVar);
        this.aAF = new ArrayList();
        this.aEJ = interfaceC1090a;
        m10011gq();
    }

    /* renamed from: gq */
    private void m10011gq() {
        this.aEK = (RecyclerView) this.mView.findViewById(R.id.app_search_hot_word_list);
        this.aEL = new alg(this.aAF, this.aEJ);
        this.aEK.setLayoutManager(new StaggeredGridLayoutManager(3, 1) { // from class: com.kingroot.kinguser.anz.1
            @Override // android.support.p007v7.widget.StaggeredGridLayoutManager, android.support.p007v7.widget.RecyclerView.LayoutManager
            public boolean canScrollVertically() {
                return false;
            }
        });
        this.aEK.setItemAnimator(new DefaultItemAnimator());
        this.aEK.setAdapter(this.aEL);
        this.aEM = (Button) this.mView.findViewById(R.id.item_more_word);
        this.aEM.setText(R.string.app_search_change_hot_word);
        this.aEM.setOnClickListener(this);
    }

    /* renamed from: av */
    public void m10012av(List<String> list) {
        if (!C3942yy.m1351d(list)) {
            this.aAF.clear();
            for (String str : list) {
                this.aAF.add(new aml(str, 0));
            }
            if (this.aAF.size() > 12) {
                this.aAF = this.aAF.subList(0, 12);
            }
            this.aEL.notifyDataSetChanged();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.aEz.mo10005cB(true);
        ady.m12308tK().mo1746bi(100593);
    }
}
