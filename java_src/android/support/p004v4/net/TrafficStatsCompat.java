package android.support.p004v4.net;

import android.os.Build;
import java.net.DatagramSocket;
import java.net.Socket;
/* renamed from: android.support.v4.net.TrafficStatsCompat */
/* loaded from: classes.dex */
public final class TrafficStatsCompat {
    private static final TrafficStatsCompatImpl IMPL;

    /* renamed from: android.support.v4.net.TrafficStatsCompat$TrafficStatsCompatImpl */
    /* loaded from: classes.dex */
    interface TrafficStatsCompatImpl {
        void clearThreadStatsTag();

        int getThreadStatsTag();

        void incrementOperationCount(int i);

        void incrementOperationCount(int i, int i2);

        void setThreadStatsTag(int i);

        void tagDatagramSocket(DatagramSocket datagramSocket);

        void tagSocket(Socket socket);

        void untagDatagramSocket(DatagramSocket datagramSocket);

        void untagSocket(Socket socket);
    }

    /* renamed from: android.support.v4.net.TrafficStatsCompat$BaseTrafficStatsCompatImpl */
    /* loaded from: classes.dex */
    static class BaseTrafficStatsCompatImpl implements TrafficStatsCompatImpl {
        private ThreadLocal<SocketTags> mThreadSocketTags = new ThreadLocal<SocketTags>() { // from class: android.support.v4.net.TrafficStatsCompat.BaseTrafficStatsCompatImpl.1
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.lang.ThreadLocal
            public SocketTags initialValue() {
                return new SocketTags();
            }
        };

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.net.TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags */
        /* loaded from: classes.dex */
        public static class SocketTags {
            public int statsTag;

            private SocketTags() {
                this.statsTag = -1;
            }
        }

        BaseTrafficStatsCompatImpl() {
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void clearThreadStatsTag() {
            this.mThreadSocketTags.get().statsTag = -1;
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public int getThreadStatsTag() {
            return this.mThreadSocketTags.get().statsTag;
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void incrementOperationCount(int i) {
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void incrementOperationCount(int i, int i2) {
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void setThreadStatsTag(int i) {
            this.mThreadSocketTags.get().statsTag = i;
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void tagSocket(Socket socket) {
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void untagSocket(Socket socket) {
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void tagDatagramSocket(DatagramSocket datagramSocket) {
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void untagDatagramSocket(DatagramSocket datagramSocket) {
        }
    }

    /* renamed from: android.support.v4.net.TrafficStatsCompat$IcsTrafficStatsCompatImpl */
    /* loaded from: classes.dex */
    static class IcsTrafficStatsCompatImpl implements TrafficStatsCompatImpl {
        IcsTrafficStatsCompatImpl() {
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void clearThreadStatsTag() {
            TrafficStatsCompatIcs.clearThreadStatsTag();
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public int getThreadStatsTag() {
            return TrafficStatsCompatIcs.getThreadStatsTag();
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void incrementOperationCount(int i) {
            TrafficStatsCompatIcs.incrementOperationCount(i);
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void incrementOperationCount(int i, int i2) {
            TrafficStatsCompatIcs.incrementOperationCount(i, i2);
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void setThreadStatsTag(int i) {
            TrafficStatsCompatIcs.setThreadStatsTag(i);
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void tagSocket(Socket socket) {
            TrafficStatsCompatIcs.tagSocket(socket);
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void untagSocket(Socket socket) {
            TrafficStatsCompatIcs.untagSocket(socket);
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void tagDatagramSocket(DatagramSocket datagramSocket) {
            TrafficStatsCompatIcs.tagDatagramSocket(datagramSocket);
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void untagDatagramSocket(DatagramSocket datagramSocket) {
            TrafficStatsCompatIcs.untagDatagramSocket(datagramSocket);
        }
    }

    /* renamed from: android.support.v4.net.TrafficStatsCompat$Api24TrafficStatsCompatImpl */
    /* loaded from: classes.dex */
    static class Api24TrafficStatsCompatImpl extends IcsTrafficStatsCompatImpl {
        Api24TrafficStatsCompatImpl() {
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.IcsTrafficStatsCompatImpl, android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void tagDatagramSocket(DatagramSocket datagramSocket) {
            TrafficStatsCompatApi24.tagDatagramSocket(datagramSocket);
        }

        @Override // android.support.p004v4.net.TrafficStatsCompat.IcsTrafficStatsCompatImpl, android.support.p004v4.net.TrafficStatsCompat.TrafficStatsCompatImpl
        public void untagDatagramSocket(DatagramSocket datagramSocket) {
            TrafficStatsCompatApi24.untagDatagramSocket(datagramSocket);
        }
    }

    static {
        if ("N".equals(Build.VERSION.CODENAME)) {
            IMPL = new Api24TrafficStatsCompatImpl();
        } else if (Build.VERSION.SDK_INT >= 14) {
            IMPL = new IcsTrafficStatsCompatImpl();
        } else {
            IMPL = new BaseTrafficStatsCompatImpl();
        }
    }

    public static void clearThreadStatsTag() {
        IMPL.clearThreadStatsTag();
    }

    public static int getThreadStatsTag() {
        return IMPL.getThreadStatsTag();
    }

    public static void incrementOperationCount(int i) {
        IMPL.incrementOperationCount(i);
    }

    public static void incrementOperationCount(int i, int i2) {
        IMPL.incrementOperationCount(i, i2);
    }

    public static void setThreadStatsTag(int i) {
        IMPL.setThreadStatsTag(i);
    }

    public static void tagSocket(Socket socket) {
        IMPL.tagSocket(socket);
    }

    public static void untagSocket(Socket socket) {
        IMPL.untagSocket(socket);
    }

    public static void tagDatagramSocket(DatagramSocket datagramSocket) {
        IMPL.tagDatagramSocket(datagramSocket);
    }

    public static void untagDatagramSocket(DatagramSocket datagramSocket) {
        IMPL.untagDatagramSocket(datagramSocket);
    }

    private TrafficStatsCompat() {
    }
}
