package com.kingroot.kinguser.distribution.appsmarket.view;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.anh;
import com.kingroot.kinguses.R;
import java.util.List;
/* loaded from: classes.dex */
public class SearchView extends LinearLayout {
    private List<String> aAF;
    private TextView aFG;
    private int aFH;
    private String aFI;
    private Runnable aFJ;
    private ImageView ahP;

    /* renamed from: d */
    static /* synthetic */ int m4120d(SearchView searchView) {
        int i = searchView.aFH;
        searchView.aFH = i + 1;
        return i;
    }

    public SearchView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.aFH = 0;
        this.aFJ = new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.SearchView.2
            @Override // java.lang.Runnable
            public void run() {
                SearchView.this.aFH %= SearchView.this.aAF.size();
                SearchView.this.aFI = (String) SearchView.this.aAF.get(SearchView.m4120d(SearchView.this));
                if (!TextUtils.isEmpty(SearchView.this.aFI)) {
                    SearchView.this.aFG.setText(SearchView.this.aFI);
                }
                C3840wl.m1551c(SearchView.this.aFJ, 3000L);
            }
        };
        LayoutInflater.from(context).inflate(R.layout.search_view, this);
        this.aFG = (TextView) findViewById(R.id.search_text);
        this.ahP = (ImageView) findViewById(R.id.search_ic);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            m4127JT();
        }
    }

    /* renamed from: fN */
    public void m4117fN(int i) {
        if (getVisibility() == 0) {
            anh.m10274IW().m10273a(i, new anh.InterfaceC1263a() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.SearchView.1
                @Override // com.kingroot.kinguser.anh.InterfaceC1263a
                public void onFinish(List<String> list) {
                    if (!C3942yy.m1351d(list)) {
                        SearchView.this.aAF = list;
                        C3840wl.m1550d(SearchView.this.aFJ);
                        C3840wl.m1551c(SearchView.this.aFJ, 3000L);
                    }
                }
            });
        }
    }

    /* renamed from: JT */
    public void m4127JT() {
        C3840wl.m1550d(this.aFJ);
    }

    public String getCurHotWord() {
        return this.aFI;
    }
}
