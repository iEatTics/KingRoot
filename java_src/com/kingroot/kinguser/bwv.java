package com.kingroot.kinguser;

import android.hardware.SensorEvent;
import java.util.Arrays;
/* loaded from: classes.dex */
public class bwv {
    public final int bSM;
    public final long timestamp;
    public final float[] values;

    public bwv(SensorEvent sensorEvent, long j) {
        this.bSM = sensorEvent.sensor.getType();
        this.timestamp = j;
        this.values = Arrays.copyOf(sensorEvent.values, sensorEvent.values.length);
    }
}
