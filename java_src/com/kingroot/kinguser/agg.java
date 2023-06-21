package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.kingroot.common.uilib.QSwitchCheckBox;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class agg extends BaseAdapter {
    private ArrayList<auc> alr;
    private WeakReference<Button> als;
    private WeakReference<ProgressBar> alt;
    private Context mContext;

    /* renamed from: com.kingroot.kinguser.agg$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0882a {
        /* renamed from: p */
        void mo8035p(View view);
    }

    public agg(Context context, ArrayList<auc> arrayList) {
        this.mContext = context;
        this.alr = arrayList;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.alr.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C0883b c0883b;
        View view2;
        int itemViewType = getItemViewType(i);
        if (view == null) {
            C0883b c0883b2 = new C0883b();
            switch (itemViewType) {
                case 0:
                    view2 = LayoutInflater.from(this.mContext).inflate(R.layout.list_view_title, (ViewGroup) null);
                    c0883b2.alx = (TextView) view2;
                    break;
                case 1:
                    view2 = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_setting_text_icon, (ViewGroup) null);
                    c0883b2.alx = (TextView) view2.findViewById(R.id.left_textView);
                    c0883b2.f1420NE = (ImageView) view2.findViewById(R.id.image_view);
                    break;
                case 2:
                case 4:
                case 8:
                case 12:
                    view2 = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_setting_two_text, (ViewGroup) null);
                    c0883b2.alx = (TextView) view2.findViewById(R.id.left_textView);
                    c0883b2.alz = (TextView) view2.findViewById(R.id.right_textView);
                    c0883b2.f1420NE = (ImageView) view2.findViewById(R.id.expand_icon);
                    c0883b2.alG = view2.findViewById(R.id.new_tag);
                    if (8 == itemViewType) {
                        c0883b2.aly = (TextView) view2.findViewById(R.id.left_textView_descr);
                        c0883b2.aly.setVisibility(0);
                    }
                    if (12 == itemViewType) {
                        c0883b2.alE = (ImageView) view2.findViewById(R.id.right_icon);
                        c0883b2.alE.setVisibility(0);
                        break;
                    }
                    break;
                case 3:
                    View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_setting_text_checkbox, (ViewGroup) null);
                    c0883b2.alx = (TextView) inflate.findViewById(R.id.left_textView);
                    View findViewById = inflate.findViewById(R.id.checkbox);
                    try {
                        c0883b2.alD = (QSwitchCheckBox) findViewById;
                        view2 = inflate;
                        break;
                    } catch (ClassCastException e) {
                        if (findViewById instanceof QSwitchCheckBox) {
                            c0883b2.alD = (QSwitchCheckBox) findViewById;
                        }
                        view2 = inflate;
                        break;
                    }
                case 5:
                    view2 = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_setting_update_bar, (ViewGroup) null);
                    c0883b2.alF = (Button) view2.findViewById(R.id.button);
                    c0883b2.f1421VL = (ProgressBar) view2.findViewById(R.id.progressbar);
                    this.als = new WeakReference<>(c0883b2.alF);
                    this.alt = new WeakReference<>(c0883b2.f1421VL);
                    break;
                case 6:
                    view2 = LayoutInflater.from(this.mContext).inflate(R.layout.list_view_divider, (ViewGroup) null);
                    break;
                case 7:
                    view2 = LayoutInflater.from(this.mContext).inflate(R.layout.list_view_large_divider, (ViewGroup) null);
                    break;
                case 9:
                    view2 = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_text_radio, (ViewGroup) null);
                    c0883b2.alx = (TextView) view2.findViewById(R.id.item_title);
                    c0883b2.alH = (ImageView) view2.findViewById(R.id.radio_button);
                    break;
                case 10:
                    view2 = LayoutInflater.from(this.mContext).inflate(R.layout.list_view_related_icon, (ViewGroup) null);
                    c0883b2.alC = (TextView) view2.findViewById(R.id.about_ver_tv);
                    c0883b2.alB = (TextView) view2.findViewById(R.id.about_ver_bottom);
                    c0883b2.f1420NE = (ImageView) view2.findViewById(R.id.about_logo_iv);
                    break;
                case 11:
                    view2 = LayoutInflater.from(this.mContext).inflate(R.layout.list_view_two_text_vertical, (ViewGroup) null);
                    c0883b2.alA = (TextView) view2.findViewById(R.id.text_top);
                    c0883b2.alB = (TextView) view2.findViewById(R.id.text_bottom);
                    break;
                case 13:
                    View inflate2 = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_setting_two_text_checkbox, (ViewGroup) null);
                    c0883b2.alA = (TextView) inflate2.findViewById(R.id.tv_main);
                    c0883b2.alB = (TextView) inflate2.findViewById(R.id.tv_sub);
                    View findViewById2 = inflate2.findViewById(R.id.checkbox);
                    try {
                        c0883b2.alD = (QSwitchCheckBox) findViewById2;
                        view2 = inflate2;
                        break;
                    } catch (ClassCastException e2) {
                        if (findViewById2 instanceof QSwitchCheckBox) {
                            c0883b2.alD = (QSwitchCheckBox) findViewById2;
                        }
                        view2 = inflate2;
                        break;
                    }
                default:
                    view2 = view;
                    break;
            }
            view2.setTag(c0883b2);
            view = view2;
            c0883b = c0883b2;
        } else {
            c0883b = (C0883b) view.getTag();
        }
        final auc aucVar = this.alr.get(i);
        switch (itemViewType) {
            case 0:
                c0883b.alx.setText(aucVar.aQY);
                break;
            case 1:
                c0883b.alx.setText(aucVar.aQY);
                break;
            case 2:
            case 8:
            case 12:
                c0883b.alx.setText(aucVar.aQY);
                if (aucVar.mIconResId != -999999) {
                    c0883b.alx.setCompoundDrawablesWithIntrinsicBounds(this.mContext.getResources().getDrawable(aucVar.mIconResId), (Drawable) null, (Drawable) null, (Drawable) null);
                    c0883b.alx.setCompoundDrawablePadding(this.mContext.getResources().getDimensionPixelSize(R.dimen.list_item_icon_text_margin));
                }
                c0883b.alz.setText(aucVar.aRa);
                c0883b.f1420NE.setVisibility(4);
                if (aucVar.aQX == 19 || aucVar.aQX == 34) {
                    c0883b.alG.setVisibility(0);
                } else {
                    c0883b.alG.setVisibility(8);
                }
                if (8 == itemViewType) {
                    c0883b.aly.setText(aucVar.aQZ);
                }
                if (12 == itemViewType) {
                    c0883b.alE.setImageDrawable(aucVar.aRd);
                }
                view.setClickable(false);
                break;
            case 3:
                c0883b.alx.setText(aucVar.aQY);
                if (aucVar.mIconResId != -999999) {
                    c0883b.alx.setCompoundDrawablesWithIntrinsicBounds(this.mContext.getResources().getDrawable(aucVar.mIconResId), (Drawable) null, (Drawable) null, (Drawable) null);
                    c0883b.alx.setCompoundDrawablePadding(this.mContext.getResources().getDimensionPixelSize(R.dimen.list_item_icon_text_margin));
                }
                c0883b.alD.setEnabled(aucVar.aRi);
                c0883b.alD.setFocusable(aucVar.aRi);
                c0883b.alD.setClickable(aucVar.aRi);
                if (aucVar.aRi) {
                    c0883b.alD.setOnClickListener(null);
                    if (aucVar.aRh) {
                        c0883b.alD.setChecked(true);
                    } else {
                        c0883b.alD.setChecked(false);
                    }
                    c0883b.alD.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.kingroot.kinguser.agg.1
                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                            aucVar.aRj.mo8035p(compoundButton);
                            aucVar.aRh = !aucVar.aRh;
                        }
                    });
                    break;
                } else {
                    ((ViewGroup) c0883b.alD.getParent()).setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.agg.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view3) {
                            aucVar.aRj.mo8035p(view3);
                        }
                    });
                    break;
                }
            case 4:
                c0883b.alx.setText(aucVar.aQY);
                c0883b.alz.setText(aucVar.aRa);
                c0883b.f1420NE.setVisibility(4);
                c0883b.alG.setVisibility(8);
                view.setClickable(true);
                break;
            case 5:
                c0883b.alF.setOnClickListener(aucVar.aRl);
                if (aucVar.mProgress == -1) {
                    c0883b.alF.setText(aucVar.aQY);
                    c0883b.f1421VL.setVisibility(8);
                    break;
                } else {
                    c0883b.alF.setText(aucVar.aQY + "(" + aucVar.mProgress + "%)");
                    c0883b.f1421VL.setProgress(aucVar.mProgress);
                    c0883b.f1421VL.setVisibility(0);
                    break;
                }
            case 9:
                c0883b.alx.setText(aucVar.aQY);
                c0883b.alH.setEnabled(aucVar.aRi);
                c0883b.alH.setFocusable(aucVar.aRi);
                c0883b.alH.setClickable(aucVar.aRi);
                if (aucVar.mSelected) {
                    c0883b.alH.setImageResource(R.drawable.radio_button_checked);
                } else {
                    c0883b.alH.setImageResource(R.drawable.radio_button_selector);
                }
                final ImageView imageView = c0883b.alH;
                imageView.setTag(Integer.valueOf(aucVar.mPos));
                c0883b.alH.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.agg.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        if (aucVar.aRk != null) {
                            aucVar.aRk.mo8066x(imageView);
                        }
                    }
                });
                view.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.agg.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        if (aucVar.aRk != null) {
                            aucVar.aRk.mo8066x(imageView);
                        }
                    }
                });
                break;
            case 10:
                c0883b.alC.setText(aucVar.f1608CJ);
                c0883b.alB.setText(aucVar.aRc);
                c0883b.f1420NE.setImageResource(aucVar.mIconResId);
                break;
            case 11:
                c0883b.alA.setText(aucVar.aRb);
                c0883b.alB.setText(aucVar.aRc);
                break;
            case 13:
                c0883b.alA.setText(aucVar.aRb);
                c0883b.alB.setText(aucVar.aRc);
                c0883b.alD.setEnabled(aucVar.aRi);
                c0883b.alD.setFocusable(aucVar.aRi);
                c0883b.alD.setClickable(aucVar.aRi);
                if (aucVar.aRi) {
                    c0883b.alD.setOnClickListener(null);
                    if (aucVar.aRh) {
                        c0883b.alD.setChecked(true);
                    } else {
                        c0883b.alD.setChecked(false);
                    }
                    c0883b.alD.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.kingroot.kinguser.agg.5
                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                            aucVar.aRj.mo8035p(compoundButton);
                            aucVar.aRh = !aucVar.aRh;
                        }
                    });
                    break;
                } else {
                    ((ViewGroup) c0883b.alD.getParent()).setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.agg.6
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view3) {
                            aucVar.aRj.mo8035p(view3);
                        }
                    });
                    break;
                }
        }
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return this.alr.get(i).mType;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 14;
    }

    /* renamed from: com.kingroot.kinguser.agg$b */
    /* loaded from: classes.dex */
    public class C0883b {

        /* renamed from: NE */
        public ImageView f1420NE;

        /* renamed from: VL */
        public ProgressBar f1421VL;
        public TextView alA;
        public TextView alB;
        public TextView alC;
        public QSwitchCheckBox alD;
        public ImageView alE;
        public Button alF;
        public View alG;
        public ImageView alH;
        public TextView alx;
        public TextView aly;
        public TextView alz;

        public C0883b() {
        }
    }
}
