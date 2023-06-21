package com.kingroot.kinguser;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class axw extends AbstractC3921yl {
    private int bcg;

    public axw(Context context) {
        super(context);
        this.bcg = -1;
    }

    public axw(Context context, int i) {
        super(context);
        this.bcg = -1;
        this.bcg = i;
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl
    protected BaseAdapter getAdapter() {
        ArrayList arrayList = new ArrayList();
        String[] stringArray = getResources().getStringArray(R.array.array_string_question_and_answer);
        int length = stringArray.length / 2;
        for (int i = 0; i < length; i++) {
            arrayList.add(new C1987b(stringArray[i * 2], stringArray[(i * 2) + 1]));
        }
        return new C1985a(getActivity(), arrayList);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new ada(getActivity(), m1417V(2131166031L));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.axw.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (axw.this.f4012Ve != null && (axw.this.f4012Ve instanceof C1985a)) {
                    ((C1985a) axw.this.f4012Ve).m8099hD(i);
                    axw.this.mo1402oR();
                }
            }
        });
        if (this.bcg > -1 && this.f4012Ve != null && (this.f4012Ve instanceof C1985a)) {
            ((C1985a) this.f4012Ve).m8099hD(this.bcg);
            mo1402oR();
        }
    }

    /* renamed from: com.kingroot.kinguser.axw$a */
    /* loaded from: classes.dex */
    static class C1985a extends BaseAdapter {
        private ArrayList<C1987b> acr = new ArrayList<>();
        private Context mContext;

        public C1985a(Context context, ArrayList<C1987b> arrayList) {
            this.mContext = context;
            this.acr.addAll(arrayList);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.acr.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        /* renamed from: hD */
        public void m8099hD(int i) {
            for (int i2 = 0; i2 < this.acr.size(); i2++) {
                C1987b c1987b = this.acr.get(i2);
                if (i2 == i) {
                    c1987b.bcn = !c1987b.bcn;
                } else {
                    c1987b.bcn = false;
                }
            }
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            C1986a c1986a;
            C1987b c1987b = this.acr.get(i);
            if (view == null) {
                C1986a c1986a2 = new C1986a();
                view = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_software_help, (ViewGroup) null);
                c1986a2.bci = (TextView) view.findViewById(R.id.question);
                c1986a2.bcj = (TextView) view.findViewById(R.id.answer);
                c1986a2.bck = view.findViewById(R.id.expand_panel);
                view.setTag(c1986a2);
                c1986a = c1986a2;
            } else {
                c1986a = (C1986a) view.getTag();
            }
            c1986a.bci.setText(c1987b.bcl);
            c1986a.bcj.setText(Html.fromHtml(c1987b.bcm));
            c1986a.bck.setVisibility(c1987b.bcn ? 0 : 8);
            return view;
        }

        /* renamed from: com.kingroot.kinguser.axw$a$a */
        /* loaded from: classes.dex */
        static class C1986a {
            public TextView bci;
            public TextView bcj;
            public View bck;

            C1986a() {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.axw$b */
    /* loaded from: classes.dex */
    public static class C1987b {
        String bcl;
        String bcm;
        boolean bcn = false;

        public C1987b(String str, String str2) {
            this.bcl = str;
            this.bcm = str2;
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl
    /* renamed from: oJ */
    protected int mo1419oJ() {
        return 0;
    }
}
