package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class byc {
    private static final bzc<byc> bRb = new bzc<byc>() { // from class: com.kingroot.kinguser.byc.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.bzc
        /* renamed from: ajR */
        public byc create() {
            return new byc();
        }
    };
    private Map<Integer, bye> bTH;
    private Handler mHandler;

    private byc() {
        this.bTH = new HashMap();
        HandlerThread handlerThread = new HandlerThread("TuringMMTouch");
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper());
    }

    public static byc ajQ() {
        return bRb.get();
    }

    /* renamed from: d */
    public boolean m5180d(int i, View view) {
        int id = view.getId();
        if (this.bTH.get(Integer.valueOf(id)) != null) {
            return true;
        }
        this.bTH.put(Integer.valueOf(id), new bye(i));
        return byd.ajS().m5178a(view, new byf() { // from class: com.kingroot.kinguser.byc.2
            @Override // com.kingroot.kinguser.byf
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                byb bybVar;
                bye byeVar = (bye) byc.this.bTH.get(Integer.valueOf(view2.getId()));
                if (byeVar != null) {
                    switch (motionEvent.getAction()) {
                        case 0:
                            byeVar.m5175cM(System.currentTimeMillis());
                            byeVar.ajV().add(new byb(0, motionEvent.getRawX(), motionEvent.getRawY(), motionEvent.getPressure(), motionEvent.getSize()));
                            break;
                        case 1:
                            byeVar.setDuration(System.currentTimeMillis() - byeVar.ajU());
                            byeVar.ajV().add(new byb(1, motionEvent.getRawX(), motionEvent.getRawY(), motionEvent.getPressure(), motionEvent.getSize()));
                            if (byeVar.isValid()) {
                                byc.this.m5188a(view2.getContext().getApplicationContext(), byeVar.ajU(), byeVar.getDuration(), byeVar.ajW(), new ArrayList(byeVar.ajV()));
                            }
                            byeVar.reset();
                            break;
                        case 2:
                            if (byeVar.isValid()) {
                                bybVar = new byb(2, motionEvent.getRawX(), motionEvent.getRawY(), motionEvent.getPressure(), motionEvent.getSize());
                            } else {
                                byb bybVar2 = new byb(0, motionEvent.getRawX(), motionEvent.getRawY(), motionEvent.getPressure(), motionEvent.getSize());
                                byeVar.m5175cM(System.currentTimeMillis());
                                bybVar = bybVar2;
                            }
                            byeVar.ajV().add(bybVar);
                            break;
                        case 3:
                            byeVar.reset();
                            break;
                    }
                }
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m5188a(final Context context, final long j, final long j2, final int i, final List<byb> list) {
        this.mHandler.post(new Runnable() { // from class: com.kingroot.kinguser.byc.3
            @Override // java.lang.Runnable
            public void run() {
                byc.this.m5184b(context, j, j2, i, byc.this.m5181cv(list));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cv */
    public List<byb> m5181cv(List<byb> list) {
        ArrayList arrayList = new ArrayList();
        if (list.size() <= 20) {
            arrayList.addAll(list);
        } else {
            byb bybVar = list.get(0);
            byb bybVar2 = list.get(list.size() - 1);
            list.remove(bybVar);
            list.remove(bybVar2);
            int ceil = (int) Math.ceil(list.size() / 18);
            arrayList.add(bybVar);
            for (int i = 1; i < list.size(); i += ceil) {
                arrayList.add(list.get(i));
            }
            arrayList.add(bybVar2);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m5184b(Context context, long j, long j2, int i, List<byb> list) {
        byu byuVar = new byu();
        byuVar.duration = (int) j2;
        byuVar.bUT = j;
        ArrayList<byv> arrayList = new ArrayList<>();
        for (byb bybVar : list) {
            byv byvVar = new byv();
            switch (bybVar.action) {
                case 0:
                    byvVar.bUW = 1;
                    break;
                case 1:
                    byvVar.bUW = 3;
                    break;
                case 2:
                    byvVar.bUW = 2;
                    break;
                case 3:
                    byvVar.bUW = 4;
                    break;
                default:
                    byvVar.bUW = 0;
                    break;
            }
            byvVar.f2171x = bybVar.bTF;
            byvVar.f2172y = bybVar.bTG;
            byvVar.bUX = bybVar.pressure;
            byvVar.bUY = bybVar.size;
            arrayList.add(byvVar);
        }
        byuVar.bUU = arrayList;
        bya.ajN().m5195a(context, i, byuVar);
    }

    /* renamed from: cm */
    public Map<byr, String> m5182cm(Context context) {
        return bya.ajN().m5194cm(context);
    }
}
