package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class afk {
    public boolean aha;
    public boolean mChecked;
    public String mDescription;
    public Drawable mIcon;
    public String mName;
    public String mPackageName;

    public afk(String str, String str2, Drawable drawable) {
        m12062a(str, str2, drawable);
    }

    public afk(String str, String str2) {
        m12062a(str, str2, null);
    }

    /* renamed from: a */
    private void m12062a(String str, String str2, Drawable drawable) {
        this.mName = str;
        this.mPackageName = str2;
        this.mIcon = drawable;
        try {
            PackageInfo packageInfo = C3952zh.m1312pq().getPackageInfo(this.mPackageName, 0);
            if (packageInfo != null) {
                this.aha = (packageInfo.applicationInfo.flags & 1) != 0;
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.afk$f */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0821f {
        public TextView age;
        public ImageView ahP;

        AbstractC0821f(View view) {
            this.ahP = (ImageView) view.findViewById(R.id.item_icon);
            this.age = (TextView) view.findViewById(R.id.item_title);
        }

        /* renamed from: a */
        void mo12058a(afk afkVar, acr acrVar) {
            this.age.setText(afkVar.mName);
            if (afkVar.mIcon != null) {
                this.ahP.setImageDrawable(afkVar.mIcon);
            } else if (afkVar != null && acrVar != null) {
                acrVar.m12667a(afkVar.mPackageName, this.ahP, R.drawable.default_icon);
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.afk$c */
    /* loaded from: classes.dex */
    static abstract class AbstractC0818c extends AbstractC3856wr {
        protected List<? extends afk> ahM = new ArrayList(0);
        protected Context mContext;

        /* renamed from: b */
        protected abstract View mo12061b(int i, ViewGroup viewGroup);

        /* renamed from: o */
        protected abstract AbstractC0821f mo12059o(View view);

        public AbstractC0818c(Context context) {
            this.mContext = context;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.ahM.size();
        }

        @Override // android.widget.Adapter
        /* renamed from: cS */
        public afk getItem(int i) {
            return this.ahM.get(i);
        }

        public void setData(List<? extends afk> list) {
            this.ahM = list;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = mo12061b(i, viewGroup);
                view.setTag(mo12059o(view));
            }
            ((AbstractC0821f) view.getTag()).mo12058a(getItem(i), getImageFetcher());
            return view;
        }
    }

    /* renamed from: com.kingroot.kinguser.afk$b */
    /* loaded from: classes.dex */
    public static class C0817b extends AbstractC0818c {
        @Override // com.kingroot.kinguser.afk.AbstractC0818c
        /* renamed from: cS */
        public /* bridge */ /* synthetic */ afk mo12060cS(int i) {
            return super.getItem(i);
        }

        @Override // com.kingroot.kinguser.afk.AbstractC0818c, android.widget.Adapter
        public /* bridge */ /* synthetic */ int getCount() {
            return super.getCount();
        }

        @Override // com.kingroot.kinguser.afk.AbstractC0818c, android.widget.Adapter
        public /* bridge */ /* synthetic */ long getItemId(int i) {
            return super.getItemId(i);
        }

        @Override // com.kingroot.kinguser.afk.AbstractC0818c, android.widget.Adapter
        public /* bridge */ /* synthetic */ View getView(int i, View view, ViewGroup viewGroup) {
            return super.getView(i, view, viewGroup);
        }

        @Override // com.kingroot.kinguser.afk.AbstractC0818c
        public /* bridge */ /* synthetic */ void setData(List list) {
            super.setData(list);
        }

        public C0817b(Context context) {
            super(context);
        }

        @Override // com.kingroot.kinguser.afk.AbstractC0818c
        /* renamed from: b */
        protected View mo12061b(int i, ViewGroup viewGroup) {
            return LayoutInflater.from(this.mContext).inflate(R.layout.list_item_checkable_app, (ViewGroup) null);
        }

        @Override // com.kingroot.kinguser.afk.AbstractC0818c
        /* renamed from: o */
        protected AbstractC0821f mo12059o(View view) {
            return new C0816a(view);
        }
    }

    /* renamed from: com.kingroot.kinguser.afk$a */
    /* loaded from: classes.dex */
    static class C0816a extends AbstractC0821f {
        public CheckBox mCheckBox;

        C0816a(View view) {
            super(view);
            this.mCheckBox = (CheckBox) view.findViewById(R.id.item_checkbox);
            this.mCheckBox.setClickable(false);
        }

        @Override // com.kingroot.kinguser.afk.AbstractC0821f
        /* renamed from: a */
        void mo12058a(afk afkVar, acr acrVar) {
            super.mo12058a(afkVar, acrVar);
            this.mCheckBox.setChecked(afkVar.mChecked);
            this.mCheckBox.setTag(afkVar);
        }
    }

    /* renamed from: com.kingroot.kinguser.afk$d */
    /* loaded from: classes.dex */
    public static class C0819d extends AbstractC0818c {
        private View.OnClickListener ahN;

        @Override // com.kingroot.kinguser.afk.AbstractC0818c
        /* renamed from: cS */
        public /* bridge */ /* synthetic */ afk mo12060cS(int i) {
            return super.getItem(i);
        }

        @Override // com.kingroot.kinguser.afk.AbstractC0818c, android.widget.Adapter
        public /* bridge */ /* synthetic */ int getCount() {
            return super.getCount();
        }

        @Override // com.kingroot.kinguser.afk.AbstractC0818c, android.widget.Adapter
        public /* bridge */ /* synthetic */ long getItemId(int i) {
            return super.getItemId(i);
        }

        @Override // com.kingroot.kinguser.afk.AbstractC0818c, android.widget.Adapter
        public /* bridge */ /* synthetic */ View getView(int i, View view, ViewGroup viewGroup) {
            return super.getView(i, view, viewGroup);
        }

        @Override // com.kingroot.kinguser.afk.AbstractC0818c
        public /* bridge */ /* synthetic */ void setData(List list) {
            super.setData(list);
        }

        public C0819d(Context context, View.OnClickListener onClickListener) {
            super(context);
            this.ahN = onClickListener;
        }

        @Override // com.kingroot.kinguser.afk.AbstractC0818c
        /* renamed from: b */
        protected View mo12061b(int i, ViewGroup viewGroup) {
            return LayoutInflater.from(this.mContext).inflate(R.layout.process_manager_item_deletable_app, (ViewGroup) null);
        }

        @Override // com.kingroot.kinguser.afk.AbstractC0818c
        /* renamed from: o */
        protected AbstractC0821f mo12059o(View view) {
            C0820e c0820e = new C0820e(view, this.ahN);
            acz.m12555l(c0820e.ahO);
            return c0820e;
        }
    }

    /* renamed from: com.kingroot.kinguser.afk$e */
    /* loaded from: classes.dex */
    static class C0820e extends AbstractC0821f {
        public Button ahO;

        C0820e(View view, View.OnClickListener onClickListener) {
            super(view);
            this.ahO = (Button) view.findViewById(R.id.item_button);
            this.ahO.setOnClickListener(onClickListener);
        }

        @Override // com.kingroot.kinguser.afk.AbstractC0821f
        /* renamed from: a */
        void mo12058a(afk afkVar, acr acrVar) {
            super.mo12058a(afkVar, acrVar);
            this.ahO.setTag(afkVar);
        }
    }
}
