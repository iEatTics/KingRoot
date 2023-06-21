package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguser.AbstractC3926yn;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class age extends AbstractC3926yn.AbstractC3927a<aub> {
    public age(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.AbstractC3926yn.AbstractC3927a, com.kingroot.common.uilib.template.PinnedHeaderListView.InterfaceC0575a
    /* renamed from: b */
    public void mo1383b(View view, int i, int i2) {
        if (i >= 0 && i < this.f4028Vt.size()) {
            Integer num = (Integer) view.getTag(R.id.tag_first);
            Integer num2 = (Integer) view.getTag(R.id.tag_second);
            if ((num != null && num.intValue() >= 0 && i < num.intValue()) || (num2 != null && num2.intValue() != this.f4028Vt.size())) {
                int i3 = i;
                while (true) {
                    if (i3 < 0) {
                        break;
                    } else if (((aub) ((AbstractC3926yn.C3929b) this.f4028Vt.get(i3)).data).aQT) {
                        i = i3;
                        break;
                    } else {
                        i3--;
                    }
                }
            }
            aub aubVar = (aub) ((AbstractC3926yn.C3929b) this.f4028Vt.get(i)).data;
            if (aubVar.aQT) {
                String str = aubVar.appName;
                String str2 = aubVar.action;
                view.setTag(R.id.tag_first, Integer.valueOf(i));
                view.setTag(R.id.tag_second, Integer.valueOf(this.f4028Vt.size()));
                C0873b c0873b = (C0873b) view.getTag();
                if (c0873b == null) {
                    C0873b c0873b2 = new C0873b();
                    c0873b2.ajH = (ImageView) view.findViewById(R.id.item_icon);
                    c0873b2.alb = (ImageView) view.findViewById(R.id.expand_icon);
                    c0873b2.ajP = (TextView) view.findViewById(R.id.item_title);
                    c0873b2.ala = (TextView) view.findViewById(R.id.item_title_desc);
                    c0873b2.akY = (TextView) view.findViewById(R.id.item_describe);
                    view.setTag(c0873b2);
                    c0873b = c0873b2;
                }
                if (c0873b.ajH != null) {
                    Drawable drawable = aubVar.amD;
                    if (drawable == null) {
                        drawable = C3953zi.m1311pr().getDrawable(R.drawable.icon);
                    }
                    c0873b.ajH.setImageDrawable(drawable);
                }
                if (c0873b.alb != null) {
                    c0873b.alb.setBackgroundDrawable(C3953zi.m1311pr().getDrawable((aubVar.visible & 64) <= 0 ? R.drawable.arrow_up : R.drawable.arrow_down));
                }
                c0873b.ajP.setText(str);
                c0873b.akY.setText(str2);
                c0873b.ala.setText(Html.fromHtml(C3953zi.m1311pr().getString(R.string.log_title_desc_format, Integer.valueOf(aubVar.aQV), Integer.valueOf(aubVar.aQU))));
            }
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3926yn.AbstractC3927a
    /* renamed from: b */
    public View mo1384b(int i, View view, ViewGroup viewGroup) {
        C0873b c0873b;
        if (view == null) {
            c0873b = new C0873b();
            view = getLayoutInflater().inflate(R.layout.list_item_root_mgr_log_title, (ViewGroup) null);
            c0873b.ajH = (ImageView) view.findViewById(R.id.item_icon);
            c0873b.ajP = (TextView) view.findViewById(R.id.item_title);
            c0873b.ala = (TextView) view.findViewById(R.id.item_title_desc);
            c0873b.akY = (TextView) view.findViewById(R.id.item_describe);
            c0873b.alb = (ImageView) view.findViewById(R.id.expand_icon);
            view.setTag(c0873b);
        } else {
            c0873b = (C0873b) view.getTag();
        }
        aub aubVar = (aub) ((AbstractC3926yn.C3929b) this.f4028Vt.get(i)).data;
        if (c0873b.ajH != null) {
            Drawable drawable = aubVar.amD;
            if (drawable == null) {
                drawable = C3953zi.m1311pr().getDrawable(R.drawable.icon);
            }
            c0873b.ajH.setImageDrawable(drawable);
        }
        if (c0873b.alb != null) {
            c0873b.alb.setBackgroundDrawable(C3953zi.m1311pr().getDrawable((aubVar.visible & 64) <= 0 ? R.drawable.arrow_up : R.drawable.arrow_down));
        }
        c0873b.ajP.setText(aubVar.appName);
        c0873b.ala.setText(Html.fromHtml(C3953zi.m1311pr().getString(R.string.log_title_desc_format, Integer.valueOf(aubVar.aQV), Integer.valueOf(aubVar.aQU))));
        c0873b.akY.setText(aubVar.action);
        return view;
    }

    @Override // com.kingroot.kinguser.AbstractC3926yn.AbstractC3927a
    /* renamed from: c */
    public View mo1379c(int i, View view, ViewGroup viewGroup) {
        C0872a c0872a;
        if (view == null) {
            c0872a = new C0872a();
            view = getLayoutInflater().inflate(R.layout.list_item_root_mgr_log_content, (ViewGroup) null);
            c0872a.ajP = (TextView) view.findViewById(R.id.item_title);
            c0872a.akY = (TextView) view.findViewById(R.id.item_describe);
            view.setTag(c0872a);
        } else {
            c0872a = (C0872a) view.getTag();
        }
        aub aubVar = (aub) ((AbstractC3926yn.C3929b) this.f4028Vt.get(i)).data;
        c0872a.ajP.setText(aubVar.alY + " " + aubVar.time);
        c0872a.akY.setText(aubVar.action);
        return view;
    }

    /* renamed from: com.kingroot.kinguser.age$b */
    /* loaded from: classes.dex */
    public class C0873b {
        public ImageView ajH;
        public TextView ajP;
        public TextView akY;
        public TextView ala;
        public ImageView alb;

        public C0873b() {
        }
    }

    /* renamed from: com.kingroot.kinguser.age$a */
    /* loaded from: classes.dex */
    public class C0872a {
        public TextView ajP;
        public TextView akY;

        public C0872a() {
        }
    }
}
