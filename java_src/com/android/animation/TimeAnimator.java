package com.android.animation;
/* loaded from: classes.dex */
public class TimeAnimator extends ValueAnimator {
    private TimeListener mListener;
    private long mPreviousTime = -1;

    /* loaded from: classes.dex */
    public interface TimeListener {
        void onTimeUpdate(TimeAnimator timeAnimator, long j, long j2);
    }

    @Override // com.android.animation.ValueAnimator
    boolean animationFrame(long j) {
        if (this.mPlayingState == 0) {
            this.mPlayingState = 1;
            if (this.mSeekTime < 0) {
                this.mStartTime = j;
            } else {
                this.mStartTime = j - this.mSeekTime;
                this.mSeekTime = -1L;
            }
        }
        if (this.mListener != null) {
            long j2 = j - this.mStartTime;
            long j3 = this.mPreviousTime >= 0 ? j - this.mPreviousTime : 0L;
            this.mPreviousTime = j;
            this.mListener.onTimeUpdate(this, j2, j3);
            return false;
        }
        return false;
    }

    public void setTimeListener(TimeListener timeListener) {
        this.mListener = timeListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.android.animation.ValueAnimator
    public void animateValue(float f) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.android.animation.ValueAnimator
    public void initAnimation() {
    }
}
