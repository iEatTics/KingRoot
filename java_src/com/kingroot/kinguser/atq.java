package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.support.p004v4.view.ViewCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguses.R;
import java.util.List;
/* loaded from: classes.dex */
public class atq extends BaseAdapter {
    private List<ats> aOt;
    private Context mContext;
    private Handler mHandler;
    public boolean aPT = false;
    private View.OnClickListener mOnClickListener = new View.OnClickListener() { // from class: com.kingroot.kinguser.atq.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message obtainMessage = atq.this.mHandler.obtainMessage(100);
            obtainMessage.obj = view.getTag();
            atq.this.mHandler.dispatchMessage(obtainMessage);
        }
    };
    private View.OnLongClickListener aPU = new View.OnLongClickListener() { // from class: com.kingroot.kinguser.atq.2
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            Object tag = view.getTag();
            if (tag == null || !(tag instanceof ats)) {
                return false;
            }
            if (((ats) tag).aQc) {
                return true;
            }
            atq.this.aPT = true;
            atq.this.mHandler.sendEmptyMessage(102);
            return true;
        }
    };

    public atq(Context context, List<ats> list) {
        this.mContext = context;
        this.aOt = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.aOt == null) {
            return 0;
        }
        return this.aOt.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (this.aOt == null) {
            return null;
        }
        return this.aOt.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C1586a c1586a;
        ats atsVar = this.aOt.get(i);
        atsVar.mPos = i;
        if (view == null) {
            view = LayoutInflater.from(this.mContext).inflate(R.layout.gamebox_main_page_grid_item, viewGroup, false);
            C1586a c1586a2 = new C1586a();
            c1586a2.afU = (ImageView) view.findViewById(R.id.gamebox_grid_app_icon);
            c1586a2.age = (TextView) view.findViewById(R.id.gamebox_grid_app_name);
            c1586a2.aPW = view.findViewById(R.id.gamebox_grid_app_remove_layout);
            c1586a2.aPX = (ImageView) view.findViewById(R.id.gamebox_grid_app_remove_icon);
            view.setTag(c1586a2);
            c1586a = c1586a2;
        } else {
            c1586a = (C1586a) view.getTag();
        }
        if (atsVar.mIcon != null) {
            c1586a.afU.setImageDrawable(atsVar.mIcon);
        }
        c1586a.age.setText(atsVar.mAppName);
        c1586a.aPW.setVisibility(this.aPT ? 0 : 8);
        if (this.aPT && atsVar.aQc) {
            view.setVisibility(8);
        } else {
            view.setVisibility(0);
        }
        if (atsVar.aQd != null) {
            atsVar.aQd.end();
        }
        if (this.aPT && !atsVar.aQc) {
            c1586a.afU.setOnClickListener(null);
            c1586a.aPX.setOnClickListener(this.mOnClickListener);
            c1586a.aPX.setTag(atsVar);
            ViewCompat.setLayerType(view, 2, null);
            atsVar.m9143w(view);
        } else {
            ViewCompat.setLayerType(view, 0, null);
            c1586a.afU.setOnClickListener(this.mOnClickListener);
            c1586a.afU.setOnLongClickListener(this.aPU);
            c1586a.afU.setTag(atsVar);
        }
        return view;
    }

    /* renamed from: aZ */
    public void m9146aZ(List<ats> list) {
        this.aOt = list;
    }

    /* renamed from: Mq */
    public List<ats> m9148Mq() {
        return this.aOt;
    }

    public void setHandler(Handler handler) {
        this.mHandler = handler;
    }

    /* renamed from: com.kingroot.kinguser.atq$a */
    /* loaded from: classes.dex */
    public class C1586a {
        public View aPW;
        public ImageView aPX;
        public ImageView afU;
        public TextView age;

        public C1586a() {
        }
    }
}
