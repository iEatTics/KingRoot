package com.android.internal.p009os;

import android.content.Context;
import java.util.HashMap;
/* renamed from: com.android.internal.os.PowerProfile */
/* loaded from: classes.dex */
public class PowerProfile {
    private static final String ATTR_NAME = "name";
    public static final String POWER_AUDIO = "dsp.audio";
    public static final String POWER_BATTERY_CAPACITY = "battery.capacity";
    public static final String POWER_BLUETOOTH_ACTIVE = "bluetooth.active";
    public static final String POWER_BLUETOOTH_AT_CMD = "bluetooth.at";
    public static final String POWER_BLUETOOTH_ON = "bluetooth.on";
    public static final String POWER_CPU_ACTIVE = "cpu.active";
    public static final String POWER_CPU_AWAKE = "cpu.awake";
    public static final String POWER_CPU_IDLE = "cpu.idle";
    public static final String POWER_CPU_SPEEDS = "cpu.speeds";
    public static final String POWER_GPS_ON = "gps.on";
    public static final String POWER_NONE = "none";
    public static final String POWER_RADIO_ACTIVE = "radio.active";
    public static final String POWER_RADIO_ON = "radio.on";
    public static final String POWER_RADIO_SCANNING = "radio.scanning";
    public static final String POWER_SCREEN_FULL = "screen.full";
    public static final String POWER_SCREEN_ON = "screen.on";
    public static final String POWER_VIDEO = "dsp.video";
    public static final String POWER_WIFI_ACTIVE = "wifi.active";
    public static final String POWER_WIFI_ON = "wifi.on";
    public static final String POWER_WIFI_SCAN = "wifi.scan";
    private static final String TAG_ARRAY = "array";
    private static final String TAG_ARRAYITEM = "value";
    private static final String TAG_DEVICE = "device";
    private static final String TAG_ITEM = "item";
    static final HashMap<String, Object> sPowerMap = new HashMap<>();

    public PowerProfile(Context context) {
        if (sPowerMap.size() == 0) {
            readPowerValuesFromXml(context);
        }
    }

    private void readPowerValuesFromXml(Context context) {
    }

    public double getAveragePower(String str) {
        if (sPowerMap.containsKey(str)) {
            Object obj = sPowerMap.get(str);
            if (obj instanceof Double[]) {
                return ((Double[]) obj)[0].doubleValue();
            }
            return ((Double) sPowerMap.get(str)).doubleValue();
        }
        return 0.0d;
    }

    public double getAveragePower(String str, int i) {
        if (sPowerMap.containsKey(str)) {
            Object obj = sPowerMap.get(str);
            if (obj instanceof Double[]) {
                Double[] dArr = (Double[]) obj;
                if (dArr.length > i && i >= 0) {
                    return dArr[i].doubleValue();
                }
                if (i < 0) {
                    return 0.0d;
                }
                return dArr[dArr.length - 1].doubleValue();
            }
            return ((Double) obj).doubleValue();
        }
        return 0.0d;
    }

    public double getBatteryCapacity() {
        return getAveragePower(POWER_BATTERY_CAPACITY);
    }

    public int getNumSpeedSteps() {
        Object obj = sPowerMap.get(POWER_CPU_SPEEDS);
        if (obj == null || !(obj instanceof Double[])) {
            return 1;
        }
        return ((Double[]) obj).length;
    }
}
