package com.kingroot.kinguser;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import com.kingroot.loader.common.KlConst;
import com.tencent.qqpim.discovery.AdDisplayModel;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public class brt implements View.OnClickListener, bru {
    static final List<Integer> bKY = new ArrayList();
    private InterfaceC2604a bKW;
    private final String TAG = "DisplayControl";
    private final int bKP = 1000;
    private final int bKQ = 3000;
    private List<String> bKR = new ArrayList(5);
    private HashMap<String, WeakReference<View>> bKS = new HashMap<>(5);
    private HashMap<String, Boolean> bKT = new HashMap<>(5);
    private HashMap<String, AdDisplayModel> bKU = new HashMap<>(5);
    private HashMap<String, Runnable> bKV = new HashMap<>(5);
    private boolean bKX = false;
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    /* renamed from: com.kingroot.kinguser.brt$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2604a {
        /* renamed from: b */
        void mo5622b(AdDisplayModel adDisplayModel, Bundle bundle);

        /* renamed from: h */
        void mo5621h(AdDisplayModel adDisplayModel);
    }

    /* renamed from: c */
    private brv m5630c(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof brv) {
                if (this.bKR.contains(childAt.getTag(67108863))) {
                    return (brv) childAt;
                } else {
                    viewGroup.removeViewAt(i);
                    return null;
                }
            }
        }
        return null;
    }

    /* renamed from: a */
    public void m5639a(final View view, final AdDisplayModel adDisplayModel, final Bundle bundle) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            m5632b(view, adDisplayModel, bundle);
        } else {
            this.mHandler.post(new Runnable() { // from class: com.kingroot.kinguser.brt.1
                @Override // java.lang.Runnable
                public void run() {
                    brt.this.m5632b(view, adDisplayModel, bundle);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m5632b(View view, AdDisplayModel adDisplayModel, Bundle bundle) {
        brv brvVar;
        if (view instanceof ViewGroup) {
            brv m5630c = m5630c((ViewGroup) view);
            if (m5630c == null) {
                brv brvVar2 = new brv(view.getContext(), this);
                ((ViewGroup) view).addView(brvVar2, new ViewGroup.LayoutParams(0, 0));
                this.bKR.add(adDisplayModel.uniqueKey);
                this.bKT.put(adDisplayModel.uniqueKey, false);
                brvVar = brvVar2;
            } else {
                String str = (String) m5630c.getTag(67108863);
                if (!str.equals(adDisplayModel.uniqueKey)) {
                    Runnable runnable = this.bKV.get(str);
                    if (runnable != null) {
                        this.bKV.remove(str);
                        this.mHandler.removeCallbacks(runnable);
                    }
                    this.bKT.put(adDisplayModel.uniqueKey, false);
                }
                brvVar = m5630c;
            }
            view.setTag(83886079, adDisplayModel.uniqueKey);
            view.setTag(100663295, bundle);
            brvVar.setTag(67108863, adDisplayModel.uniqueKey);
        }
        view.setOnClickListener(this);
        this.bKS.put(adDisplayModel.uniqueKey, new WeakReference<>(view));
        if (this.bKU.get(adDisplayModel.uniqueKey) == null) {
            this.bKU.put(adDisplayModel.uniqueKey, adDisplayModel);
        }
        if (((RunnableC2605b) this.bKV.get(adDisplayModel.uniqueKey)) == null) {
            RunnableC2605b runnableC2605b = new RunnableC2605b(adDisplayModel.uniqueKey);
            this.bKV.put(adDisplayModel.uniqueKey, runnableC2605b);
            this.mHandler.removeCallbacks(runnableC2605b);
            this.mHandler.post(runnableC2605b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.brt$b */
    /* loaded from: classes.dex */
    public class RunnableC2605b implements Runnable {
        final String bLc;

        public RunnableC2605b(String str) {
            this.bLc = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((Boolean) brt.this.bKT.get(this.bLc)).booleanValue()) {
                brt.this.bKV.remove(this.bLc);
                bth.m5541d("DisplayControl", "DetectRunnable mRuningTask.remove(Idle) Idle=" + this.bLc);
                return;
            }
            brt.this.m5623mY(this.bLc);
            Runnable runnable = (Runnable) brt.this.bKV.get(this.bLc);
            if (runnable != null) {
                brt.this.mHandler.removeCallbacks(runnable);
                brt.this.mHandler.postDelayed(runnable, 3000L);
                return;
            }
            bth.m5541d("DisplayControl", "DetectRunnablem RuningTask.get(Idle)==NULL Idle=" + this.bLc);
        }
    }

    @Override // com.kingroot.kinguser.bru
    /* renamed from: M */
    public void mo5620M(View view) {
        String str = (String) view.getTag(67108863);
        bth.m5541d("DisplayControl", "displayBegin() id=" + str);
        Runnable runnable = this.bKV.get(str);
        if (runnable == null) {
            bth.m5541d("DisplayControl", "displayBegin() null == runable id=" + str);
            return;
        }
        this.mHandler.removeCallbacks(runnable);
        this.mHandler.post(runnable);
    }

    @Override // com.kingroot.kinguser.bru
    /* renamed from: N */
    public void mo5619N(View view) {
        bth.m5541d("DisplayControl", "displayEnd()");
        String str = (String) view.getTag(67108863);
        Runnable runnable = this.bKV.get(str);
        if (runnable == null) {
            bth.m5541d("DisplayControl", "displayEnd() null == runable id=" + str);
            return;
        }
        this.bKV.remove(str);
        this.mHandler.removeCallbacks(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: mY */
    public void m5623mY(String str) {
        WeakReference<View> weakReference = this.bKS.get(str);
        bth.m5541d("DisplayControl", "startDetect() id=" + str + "||" + this.bKT.get(str) + "||null == tmpView:" + (weakReference == null));
        if (weakReference != null) {
            View view = weakReference.get();
            if (view == null) {
                Runnable runnable = this.bKV.get(str);
                if (runnable != null) {
                    this.mHandler.removeCallbacks(runnable);
                    return;
                }
                return;
            }
            bth.m5541d("DisplayControl", "view =" + view.getVisibility());
            btd m5545P = btg.m5545P(view);
            bth.m5541d("DisplayControl", "displayBegin() AD_UI_ERROR=" + m5545P);
            if (m5545P == btd.NO_ERROR) {
                RunnableC2606c runnableC2606c = new RunnableC2606c(str);
                this.mHandler.removeCallbacks(runnableC2606c);
                this.mHandler.postDelayed(runnableC2606c, 1000L);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.bKW != null) {
            Bundle bundle = (Bundle) view.getTag(100663295);
            AdDisplayModel adDisplayModel = this.bKU.get((String) view.getTag(83886079));
            if (adDisplayModel == null) {
                bth.m5541d("DisplayControl", "null == model");
            } else {
                this.bKW.mo5622b(adDisplayModel, bundle);
            }
        }
    }

    /* renamed from: a */
    public void m5638a(InterfaceC2604a interfaceC2604a) {
        this.bKW = interfaceC2604a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.brt$c */
    /* loaded from: classes.dex */
    public class RunnableC2606c implements Runnable {
        final String bLc;

        public RunnableC2606c(String str) {
            this.bLc = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdDisplayModel adDisplayModel;
            AdDisplayModel adDisplayModel2;
            bth.m5541d("DisplayControl", "showRunnable()");
            WeakReference weakReference = (WeakReference) brt.this.bKS.get(this.bLc);
            if (weakReference == null) {
                if (!brt.this.bKX && (adDisplayModel2 = (AdDisplayModel) brt.this.bKU.get(this.bLc)) != null) {
                    brt.this.bKX = brt.m5633a(adDisplayModel2, btd.VIEW_DISMISS.ordinal());
                    return;
                }
                return;
            }
            View view = (View) weakReference.get();
            if (view != null) {
                btd m5546O = btg.m5546O(view);
                bth.m5541d("DisplayControl", "showRunnable() AD_UI_ERROR=" + m5546O);
                r1 = m5546O == btd.NO_ERROR;
                if (!brt.this.bKX && (adDisplayModel = (AdDisplayModel) brt.this.bKU.get(this.bLc)) != null) {
                    brt.this.bKX = brt.m5633a(adDisplayModel, m5546O.ordinal());
                }
            }
            if (r1) {
                brt.this.bKT.put(this.bLc, true);
                if (brt.this.bKW != null) {
                    AdDisplayModel adDisplayModel3 = (AdDisplayModel) brt.this.bKU.get(this.bLc);
                    if (adDisplayModel3 != null) {
                        brt.this.bKW.mo5621h(adDisplayModel3);
                    } else {
                        bth.m5541d("DisplayControl", "showRunnable null == model");
                    }
                }
            }
        }
    }

    static {
        bKY.add(30183010);
        bKY.add(20183011);
    }

    /* renamed from: a */
    static boolean m5633a(AdDisplayModel adDisplayModel, int i) {
        if (bKY.contains(Integer.valueOf(adDisplayModel.bJp))) {
            bth.m5541d("DisplayControl", "checkandreport() model.positionId=" + adDisplayModel.bJp + " AD_UI_ERROR=" + i);
            brw.ahO().mo5617c(266032, String.valueOf(adDisplayModel.bJp) + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + i, 2);
            return true;
        }
        return false;
    }

    public void reset() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            ahN();
        } else {
            this.mHandler.post(new Runnable() { // from class: com.kingroot.kinguser.brt.2
                @Override // java.lang.Runnable
                public void run() {
                    brt.this.ahN();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ahN() {
        Set<String> keySet = this.bKT.keySet();
        if (keySet != null) {
            for (String str : keySet) {
                this.bKT.put(str, false);
            }
        }
    }
}
