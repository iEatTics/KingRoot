package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.kingroot.common.uilib.SlidingUpPanelLayout;
import com.kingroot.kinguser.toolbox.view.ToolBoxView;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class bfc extends BaseAdapter {
    private static final SparseArray<Class> bmc = new SparseArray<>();
    private final List<ToolBoxView.C3655a> blY;
    private WeakReference<Handler> blZ;
    private WeakReference<SlidingUpPanelLayout> bma;
    protected final Context mContext;
    private final LayoutInflater mLayoutInflater;
    private final Set<bez> bmb = Collections.newSetFromMap(new WeakHashMap());
    private boolean blW = false;

    static {
        bmc.put(0, bfh.class);
        bmc.put(1, bfb.class);
        bmc.put(2, bfe.class);
        bmc.put(3, bfd.class);
        bmc.put(4, bfg.class);
        bmc.put(5, bff.class);
    }

    public bfc(Context context, @NonNull List<ToolBoxView.C3655a> list) {
        this.mContext = context;
        this.blY = list;
        this.mLayoutInflater = LayoutInflater.from(context);
    }

    /* renamed from: j */
    public void m7341j(SlidingUpPanelLayout slidingUpPanelLayout) {
        this.bma = new WeakReference<>(slidingUpPanelLayout);
        for (bez bezVar : this.bmb) {
            if ((bezVar instanceof SlidingUpPanelLayout.InterfaceC0559b) && slidingUpPanelLayout != null) {
                slidingUpPanelLayout.m13225a((SlidingUpPanelLayout.InterfaceC0559b) bezVar);
            }
        }
    }

    public void setWellChosenMode(boolean z) {
        if (this.blW != z) {
            this.blW = z;
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.blY.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        ToolBoxView.C3655a c3655a;
        synchronized (this.blY) {
            c3655a = i < getCount() ? this.blY.get(i) : null;
        }
        return c3655a;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        bez bezVar;
        SlidingUpPanelLayout slidingUpPanelLayout;
        ToolBoxView.C3655a c3655a = this.blY.get(i);
        if (view == null) {
            Class cls = bmc.get(c3655a.bmI);
            if (cls == null) {
                return null;
            }
            try {
                bez bezVar2 = (bez) cls.newInstance();
                if ((bezVar2 instanceof SlidingUpPanelLayout.InterfaceC0559b) && (slidingUpPanelLayout = this.bma.get()) != null) {
                    slidingUpPanelLayout.m13225a((SlidingUpPanelLayout.InterfaceC0559b) bezVar2);
                }
                bezVar2.m7350a(this);
                view = bezVar2.m7351a(this.mLayoutInflater);
                bezVar2.mo7285r(c3655a);
                view.setTag(bezVar2);
                this.bmb.add(bezVar2);
                bezVar = bezVar2;
            } catch (IllegalAccessException e) {
                return null;
            } catch (InstantiationException e2) {
                return null;
            }
        } else {
            bez bezVar3 = (bez) view.getTag();
            bezVar3.mo7285r(c3655a);
            bezVar = bezVar3;
        }
        if (bezVar instanceof bfb) {
            ((bfb) bezVar).m7344dL(this.blW);
        }
        m7342a(i, bezVar);
        bezVar.mo7293a(c3655a);
        bezVar.mo7284s(c3655a);
        if (bezVar instanceof bfd) {
            ((bfd) bezVar).m7329ZK();
            return view;
        }
        return view;
    }

    /* renamed from: a */
    private void m7342a(int i, bez bezVar) {
        boolean z = true;
        synchronized (this.blY) {
            if (i != this.blY.size() - 1 && (i >= this.blY.size() || this.blY.get(i + 1).bmI != 0)) {
                z = false;
            }
            if (bezVar.blP != null) {
                bezVar.blP.setVisibility(z ? 0 : 8);
            }
            if (bezVar.blO != null) {
                bezVar.blO.setVisibility(z ? 8 : 0);
            }
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        int i2;
        synchronized (this.blY) {
            i2 = (this.blY.size() <= i || this.blY.get(i) == null) ? 0 : this.blY.get(i).bmI;
        }
        return i2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return bmc.size();
    }

    public void setHandler(@NonNull Handler handler) {
        this.blZ = new WeakReference<>(handler);
    }

    /* renamed from: ZF */
    public void m7343ZF() {
        Handler handler = this.blZ.get();
        if (handler != null) {
            handler.sendEmptyMessage(1);
        }
    }

    public void onResume() {
        for (bez bezVar : this.bmb) {
            bezVar.onResume();
        }
    }

    public void onDestroy() {
        for (bez bezVar : this.bmb) {
            bezVar.onDestroy();
        }
    }
}
