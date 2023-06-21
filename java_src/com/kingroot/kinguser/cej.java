package com.kingroot.kinguser;

import android.util.Pair;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class cej {
    private static volatile boolean bYh = false;
    private static volatile String bYi = null;
    private static volatile boolean bYj = false;
    private static volatile boolean bYk = false;
    private static volatile long bYl = 0;
    private static volatile long bYm = 0;
    private static Object bYn = new Object();
    private static ArrayList<Pair<Integer, Long>> bYo = new ArrayList<>();

    public static boolean akX() {
        synchronized (bYn) {
            long currentTimeMillis = System.currentTimeMillis();
            return !(((bYm - currentTimeMillis) > 5184000L ? 1 : ((bYm - currentTimeMillis) == 5184000L ? 0 : -1)) > 0) && (((bYm - currentTimeMillis) > 0L ? 1 : ((bYm - currentTimeMillis) == 0L ? 0 : -1)) >= 0);
        }
    }
}
