package android.support.p004v4.net;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
/* renamed from: android.support.v4.net.ConnectivityManagerCompatGingerbread */
/* loaded from: classes.dex */
class ConnectivityManagerCompatGingerbread {
    ConnectivityManagerCompatGingerbread() {
    }

    public static boolean isActiveNetworkMetered(ConnectivityManager connectivityManager) {
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return true;
        }
        switch (activeNetworkInfo.getType()) {
            case 0:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            default:
                return true;
            case 1:
                return false;
        }
    }
}
