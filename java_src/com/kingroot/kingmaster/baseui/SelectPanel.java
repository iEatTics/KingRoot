package com.kingroot.kingmaster.baseui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.abg;
import com.kingroot.kinguser.adb;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class SelectPanel extends LinearLayout {
    private TextView abV;
    private TextView abW;
    private int abX;
    private int abY;
    private boolean abZ;
    private adb aca;
    private View acb;

    public SelectPanel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m13117ap(context);
    }

    /* renamed from: ap */
    private void m13117ap(Context context) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.file_select_panel, (ViewGroup) this, false);
        addView(inflate, new LinearLayout.LayoutParams(-1, -2));
        this.acb = new View(context);
        this.acb.setBackgroundResource(R.color.list_view_divider);
        addView(this.acb, new LinearLayout.LayoutParams(-1, abg.m12835r(0.5f)));
        this.abV = (TextView) inflate.findViewById(R.id.selected_num_tv);
        this.abW = (TextView) inflate.findViewById(R.id.selected_tv);
        setId(R.id.selected_panel);
        setOrientation(1);
    }

    public void setIsAllSelected(boolean z) {
        this.abZ = z;
    }

    public void setSelectedMaxNum(int i) {
        this.abX = i;
        m13116sh();
    }

    public void setCurrentSelectedNum(int i) {
        this.abY = i;
        m13116sh();
    }

    public void setOnCheckedChangeListener(adb adbVar) {
        this.aca = adbVar;
    }

    /* renamed from: sh */
    private void m13116sh() {
        String str = null;
        try {
            str = String.format(getString(R.string.backup_selected_num_format), Integer.valueOf(this.abY), Integer.valueOf(this.abX));
        } catch (Throwable th) {
        }
        if (str == null) {
            str = "";
        }
        this.abV.setText(str);
        if (this.abY == this.abX && this.abX != 0) {
            this.abZ = true;
        } else {
            this.abZ = false;
        }
    }

    private String getString(int i) {
        return C3953zi.m1311pr().getString(i);
    }
}
