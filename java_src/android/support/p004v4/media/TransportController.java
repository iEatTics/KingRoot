package android.support.p004v4.media;
/* renamed from: android.support.v4.media.TransportController */
/* loaded from: classes.dex */
public abstract class TransportController {
    public abstract int getBufferPercentage();

    public abstract long getCurrentPosition();

    public abstract long getDuration();

    public abstract int getTransportControlFlags();

    public abstract boolean isPlaying();

    public abstract void pausePlaying();

    public abstract void registerStateListener(TransportStateListener transportStateListener);

    public abstract void seekTo(long j);

    public abstract void startPlaying();

    public abstract void stopPlaying();

    public abstract void unregisterStateListener(TransportStateListener transportStateListener);
}
