package com.kingroot.kinguser;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.SparseArray;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class bws {
    private static final int[] bSz = {1, 4, 9};
    private final SensorManager bSw;
    private final HashSet<Sensor> bSx = new HashSet<>();
    private final SparseArray<bwu> bSy = new SparseArray<>();
    private C2651a bSA = new C2651a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bws$a */
    /* loaded from: classes.dex */
    public class C2651a implements SensorEventListener {
        private final AtomicBoolean bSB = new AtomicBoolean(false);
        private long bRr = 0;
        private int bSC = 0;
        private long bSD = 0;

        C2651a() {
        }

        /* renamed from: cL */
        void m5291cL(long j) {
            synchronized (this.bSB) {
                if (!this.bSB.get()) {
                    this.bSB.set(true);
                    this.bRr = System.currentTimeMillis();
                    this.bSC = (int) Math.ceil((j * 1.0d) / bwr.bSt);
                }
            }
        }

        void stopListening() {
            synchronized (this.bSB) {
                if (this.bSB.get()) {
                    this.bSB.set(false);
                    this.bSD = System.currentTimeMillis() - this.bRr;
                    if (this.bSD < 0) {
                        this.bSD = 0L;
                    }
                    this.bRr = 0L;
                }
            }
        }

        long aiS() {
            return this.bRr;
        }

        long aiT() {
            return this.bSD;
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            synchronized (this.bSB) {
                if (this.bSB.get()) {
                    if (sensorEvent != null && sensorEvent.sensor != null) {
                        bwv bwvVar = new bwv(sensorEvent, System.currentTimeMillis());
                        long j = bwvVar.timestamp - this.bRr;
                        if (j >= 0) {
                            int i = bwvVar.bSM;
                            int i2 = (int) (j / bwr.bSt);
                            synchronized (bws.this.bSy) {
                                bwu bwuVar = (bwu) bws.this.bSy.get(i);
                                if (bwuVar == null) {
                                    bwuVar = new bwu(i, bwr.bSu, this.bSC);
                                    bws.this.bSy.put(i, bwuVar);
                                }
                                bwuVar.m5280a(i2, bwvVar);
                            }
                        }
                    }
                }
            }
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }
    }

    public bws(Context context) {
        Object systemService = context.getSystemService("sensor");
        if (systemService != null) {
            this.bSw = (SensorManager) systemService;
        } else {
            this.bSw = null;
        }
    }

    /* renamed from: cK */
    public synchronized boolean m5293cK(long j) {
        boolean z = false;
        synchronized (this) {
            if (this.bSw != null) {
                this.bSA.m5291cL(j);
                synchronized (this.bSx) {
                    this.bSx.clear();
                }
                synchronized (this.bSx) {
                    for (int i : bSz) {
                        Sensor defaultSensor = this.bSw.getDefaultSensor(i);
                        if (defaultSensor != null && this.bSw.registerListener(this.bSA, defaultSensor, 0)) {
                            z = true;
                            this.bSx.add(defaultSensor);
                        }
                    }
                }
                if (!z) {
                    aiR();
                }
            }
        }
        return z;
    }

    public synchronized void aiR() {
        if (this.bSw != null) {
            synchronized (this.bSx) {
                Iterator<Sensor> it = this.bSx.iterator();
                while (it.hasNext()) {
                    this.bSw.unregisterListener(this.bSA, it.next());
                }
                this.bSx.clear();
            }
            this.bSA.stopListening();
        }
    }

    public long aiS() {
        return this.bSA.aiS();
    }

    public long aiT() {
        return this.bSA.aiT();
    }

    public void reset() {
        synchronized (this.bSy) {
            this.bSy.clear();
        }
    }

    public SparseArray<bwu> aiU() {
        synchronized (this.bSy) {
            SparseArray<bwu> sparseArray = new SparseArray<>();
            for (int i = 0; i < this.bSy.size(); i++) {
                sparseArray.append(this.bSy.keyAt(i), this.bSy.valueAt(i));
            }
            if (m5292d(sparseArray)) {
                return sparseArray;
            }
            return new SparseArray<>();
        }
    }

    /* renamed from: d */
    private static boolean m5292d(SparseArray<bwu> sparseArray) {
        Object[] ajb;
        if (sparseArray == null || sparseArray.size() == 0) {
            return false;
        }
        for (int i = 0; i < sparseArray.size(); i++) {
            bwu valueAt = sparseArray.valueAt(i);
            if (valueAt != null && (ajb = valueAt.ajb()) != null && ajb.length != 0) {
                if (valueAt.ajc() >= 3) {
                    for (Object obj : ajb) {
                        List list = (List) obj;
                        if (list != null && list.size() < bwr.bSu / 4) {
                            return false;
                        }
                    }
                    continue;
                } else {
                    return false;
                }
            }
        }
        return true;
    }
}
