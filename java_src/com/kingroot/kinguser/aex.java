package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kingmaster.toolbox.cleaner.uninstall.data.TcPkgInfo;
import com.kingroot.kinguser.AbstractC3926yn;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class aex extends AbstractC3926yn.AbstractC3927a<C0796a> {
    private String[] afK;
    private boolean afL;
    private View.OnClickListener afM;
    private CompoundButton.OnCheckedChangeListener afN;
    private Drawable afO;

    /* renamed from: com.kingroot.kinguser.aex$a */
    /* loaded from: classes.dex */
    public static class C0796a {
        public TcPkgInfo afP;
        public boolean afQ;
        public boolean afR;
        public boolean afS;
        public String description;
    }

    public aex(Context context, int i, boolean z, View.OnClickListener onClickListener, CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        super(context, i);
        this.afM = onClickListener;
        this.afN = onCheckedChangeListener;
        this.afL = z;
        this.afK = C3953zi.m1311pr().getStringArray(R.array.soft_clear_type_names);
        this.afO = C3953zi.m1311pr().getDrawable(R.drawable.icon_risk_warning);
        if (this.afO != null) {
            int dimension = (int) C3953zi.m1311pr().getDimension(R.dimen.risk_icon_bound_width_1);
            this.afO.setBounds(0, 0, dimension, dimension);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3926yn.AbstractC3927a, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }

    @Override // com.kingroot.kinguser.AbstractC3926yn.AbstractC3927a
    /* renamed from: b */
    public View mo1384b(int i, View view, ViewGroup viewGroup) {
        C0797b c0797b;
        if (view == null) {
            c0797b = new C0797b();
            view = getLayoutInflater().inflate(R.layout.list_view_title, (ViewGroup) null);
            c0797b.afT = (TextView) view.findViewById(this.f4029Vu);
            view.setTag(c0797b);
        } else {
            c0797b = (C0797b) view.getTag();
        }
        AbstractC3926yn.C3929b c3929b = (AbstractC3926yn.C3929b) this.f4028Vt.get(i);
        if (c0797b != null && c0797b.afT != null) {
            c0797b.afT.setText(c3929b.title);
        }
        return view;
    }

    @Override // com.kingroot.kinguser.AbstractC3926yn.AbstractC3927a
    /* renamed from: c */
    public View mo1379c(int i, View view, ViewGroup viewGroup) {
        C0797b c0797b;
        int itemViewType = getItemViewType(i);
        if (itemViewType == 2) {
            if (view == null) {
                c0797b = new C0797b();
                view = getLayoutInflater().inflate(R.layout.list_item_app_header, (ViewGroup) null);
                c0797b.afU = (ImageView) view.findViewById(R.id.warning_icon);
                c0797b.afW = (TextView) view.findViewById(R.id.item_header);
                c0797b.afZ = (ImageView) view.findViewById(R.id.image_expand_state);
                c0797b.afY = (TextView) view.findViewById(R.id.item_des);
                view.setOnClickListener(this.afM);
                view.setTag(c0797b);
            } else {
                c0797b = (C0797b) view.getTag();
            }
        } else if (view == null) {
            c0797b = new C0797b();
            view = getLayoutInflater().inflate(R.layout.cleaner_unistall_list_item_selectable_app, (ViewGroup) null);
            c0797b.afU = (ImageView) view.findViewById(R.id.item_icon);
            c0797b.afV = (TextView) view.findViewById(R.id.item_title);
            c0797b.afW = (TextView) view.findViewById(R.id.item_describe);
            c0797b.afY = (TextView) view.findViewById(R.id.item_describe2);
            c0797b.afX = (TextView) view.findViewById(R.id.risk_tag);
            c0797b.aga = (CheckBox) view.findViewById(R.id.item_checkbox);
            acz.m12555l(c0797b.aga);
            c0797b.agb = (TextView) view.findViewById(R.id.unremovable_tag);
            view.setTag(c0797b);
        } else {
            c0797b = (C0797b) view.getTag();
        }
        if (itemViewType == 2) {
            c0797b.afW.setText(getItem(i).title);
            c0797b.afW.setGravity(80);
            c0797b.afW.setTextColor(C3953zi.m1311pr().getColor(R.color.uninstall_core_text_color));
            c0797b.afW.setTextSize(2, 15.0f);
            c0797b.afY.setVisibility(0);
            c0797b.afZ.setVisibility(0);
            c0797b.afU.setVisibility(0);
            view.setBackgroundColor(C3953zi.m1311pr().getColor(R.color.global_background_color));
        } else {
            C0796a c0796a = (C0796a) ((AbstractC3926yn.C3929b) this.f4028Vt.get(i)).data;
            if (c0796a.afP.packageName.equals(KUApplication.m13453ge().getPackageName())) {
                c0797b.aga.setVisibility(8);
                c0797b.agb.setVisibility(8);
            } else {
                if (!c0796a.afQ) {
                    c0797b.aga.setOnCheckedChangeListener(null);
                }
                if (c0796a.afS || this.afL) {
                    c0797b.agb.setVisibility(8);
                    c0797b.aga.setVisibility(0);
                    c0797b.aga.setId(i);
                    c0797b.aga.setChecked(c0796a.afR);
                    c0797b.aga.setOnCheckedChangeListener(this.afN);
                } else {
                    c0797b.aga.setVisibility(8);
                }
            }
            acr imageFetcher = getImageFetcher();
            if (imageFetcher != null) {
                imageFetcher.m12667a(c0796a.afP.packageName, c0797b.afU, R.drawable.default_icon);
            }
            c0797b.afV.setText(c0796a.afP.appName);
            if (avu.m8746hj(c0796a.afP.riskType)) {
                c0797b.afX.setTextColor(C3953zi.m1311pr().getColor(R.color.app_tag_careful_color));
                c0797b.afX.setBackgroundResource(R.drawable.shape_rounded_background_careful_tag);
                c0797b.afX.setVisibility(0);
            } else {
                c0797b.afX.setVisibility(8);
            }
            c0797b.afY.setTextColor(C3953zi.m1311pr().getColor(R.color.uninstall_item_subtitle_color));
            c0797b.afY.setCompoundDrawables(null, null, null, null);
            if (!c0796a.afP.isPersonApp) {
                boolean m1332pj = C3946zb.m1332pj();
                if (c0796a.afP.description != null && !c0796a.afP.description.equals("") && m1332pj) {
                    c0797b.afY.setText(c0796a.afP.description);
                } else {
                    String m12143cP = m12143cP(c0796a.afP.classify);
                    if (!m12143cP.equals("")) {
                        c0797b.afY.setText(m12143cP);
                    } else {
                        c0797b.afY.setText(C3953zi.m1311pr().getString(R.string.uninstall_app_default_description));
                    }
                }
            } else {
                c0797b.afY.setText(String.format(C3953zi.m1311pr().getString(R.string.uninstall_app_version), c0796a.afP.versionName));
            }
            c0797b.afW.setText(c0796a.description);
        }
        return view;
    }

    /* renamed from: cP */
    public String m12143cP(int i) {
        String str = null;
        if (this.afK != null && i >= 0 && i < this.afK.length) {
            str = this.afK[i];
        }
        return str != null ? str : "";
    }

    /* renamed from: com.kingroot.kinguser.aex$b */
    /* loaded from: classes.dex */
    static class C0797b {
        public TextView afT;
        public ImageView afU;
        public TextView afV;
        public TextView afW;
        public TextView afX;
        public TextView afY;
        public ImageView afZ;
        public CheckBox aga;
        public TextView agb;

        private C0797b() {
        }
    }

    /* renamed from: a */
    public static int m12145a(C0796a c0796a) {
        switch (c0796a.afP.classify) {
            case 1:
                return 2;
            case 2:
            case 3:
            case 8:
            case 9:
            case 10:
            case 12:
                return 1;
            case 4:
            case 5:
            case 6:
            case 7:
            case 11:
            default:
                return 0;
        }
    }

    /* renamed from: b */
    public static boolean m12144b(C0796a c0796a) {
        switch (c0796a.afP.classify) {
            case 0:
                c0796a.afR = false;
                c0796a.afQ = true;
                break;
            case 1:
                if (c0796a.afP.flag == 0) {
                    c0796a.afR = false;
                    c0796a.afQ = true;
                    break;
                }
                break;
            case 2:
            case 3:
            case 9:
                c0796a.afR = false;
                c0796a.afQ = true;
                break;
            case 4:
            case 5:
            case 8:
            case 10:
            default:
                c0796a.afR = false;
                c0796a.afQ = true;
                break;
            case 6:
            case 7:
            case 11:
                c0796a.afR = false;
                c0796a.afQ = true;
                break;
        }
        return false;
    }
}
