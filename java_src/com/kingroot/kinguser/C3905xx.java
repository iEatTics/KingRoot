package com.kingroot.kinguser;

import android.content.Context;
import android.support.p004v4.view.LayoutInflaterFactory;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.xx */
/* loaded from: classes.dex */
public class C3905xx implements LayoutInflaterFactory {

    /* renamed from: UO */
    private List<C3919yj> f3997UO = new ArrayList();

    @Override // android.support.p004v4.view.LayoutInflaterFactory
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View m1433a;
        if (attributeSet.getAttributeBooleanValue("http://schemas.android.com/android/skin", "enable", false) && (m1433a = m1433a(context, str, attributeSet)) != null) {
            m1434a(context, attributeSet, m1433a);
            return m1433a;
        }
        return null;
    }

    /* renamed from: a */
    private void m1434a(Context context, AttributeSet attributeSet, View view) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < attributeSet.getAttributeCount(); i++) {
            String attributeName = attributeSet.getAttributeName(i);
            String attributeValue = attributeSet.getAttributeValue(i);
            if (C3912yc.m1427dr(attributeName) && attributeValue.startsWith("@")) {
                try {
                    int parseInt = Integer.parseInt(attributeValue.substring(1));
                    AbstractC3913yd m1428b = C3912yc.m1428b(attributeName, parseInt, context.getResources().getResourceEntryName(parseInt), context.getResources().getResourceTypeName(parseInt));
                    if (m1428b != null) {
                        arrayList.add(m1428b);
                    }
                } catch (NumberFormatException e) {
                }
            }
        }
        if (!C3942yy.m1351d(arrayList)) {
            C3919yj c3919yj = new C3919yj();
            c3919yj.view = view;
            c3919yj.f4009UY = arrayList;
            this.f3997UO.add(c3919yj);
            c3919yj.apply();
        }
    }

    /* renamed from: a */
    private View m1433a(Context context, String str, AttributeSet attributeSet) {
        try {
            if (-1 == str.indexOf(46)) {
                View createView = "View".equals(str) ? LayoutInflater.from(context).createView(str, "android.view.", attributeSet) : null;
                if (createView == null) {
                    createView = LayoutInflater.from(context).createView(str, "android.widget.", attributeSet);
                }
                if (createView == null) {
                    return LayoutInflater.from(context).createView(str, "android.webkit.", attributeSet);
                }
                return createView;
            }
            return LayoutInflater.from(context).createView(str, null, attributeSet);
        } catch (Exception e) {
            return null;
        }
    }

    public void clean() {
        if (!C3942yy.m1351d(this.f3997UO)) {
            for (C3919yj c3919yj : this.f3997UO) {
                if (c3919yj.view != null) {
                    c3919yj.clean();
                }
            }
        }
    }
}
