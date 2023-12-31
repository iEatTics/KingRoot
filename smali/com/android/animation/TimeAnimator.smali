.class public Lcom/android/animation/TimeAnimator;
.super Lcom/android/animation/ValueAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/animation/TimeAnimator$TimeListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/animation/TimeAnimator$TimeListener;

.field private mPreviousTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/animation/ValueAnimator;-><init>()V

    .line 15
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/animation/TimeAnimator;->mPreviousTime:J

    return-void
.end method


# virtual methods
.method animateValue(F)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method animationFrame(J)Z
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 19
    iget v0, p0, Lcom/android/animation/TimeAnimator;->mPlayingState:I

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/animation/TimeAnimator;->mPlayingState:I

    .line 21
    iget-wide v0, p0, Lcom/android/animation/TimeAnimator;->mSeekTime:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 22
    iput-wide p1, p0, Lcom/android/animation/TimeAnimator;->mStartTime:J

    .line 29
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/animation/TimeAnimator;->mListener:Lcom/android/animation/TimeAnimator$TimeListener;

    if-eqz v0, :cond_1

    .line 30
    iget-wide v0, p0, Lcom/android/animation/TimeAnimator;->mStartTime:J

    sub-long v2, p1, v0

    .line 31
    iget-wide v0, p0, Lcom/android/animation/TimeAnimator;->mPreviousTime:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 32
    :goto_1
    iput-wide p1, p0, Lcom/android/animation/TimeAnimator;->mPreviousTime:J

    .line 33
    iget-object v0, p0, Lcom/android/animation/TimeAnimator;->mListener:Lcom/android/animation/TimeAnimator$TimeListener;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/animation/TimeAnimator$TimeListener;->onTimeUpdate(Lcom/android/animation/TimeAnimator;JJ)V

    .line 35
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 24
    :cond_2
    iget-wide v0, p0, Lcom/android/animation/TimeAnimator;->mSeekTime:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/android/animation/TimeAnimator;->mStartTime:J

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/animation/TimeAnimator;->mSeekTime:J

    goto :goto_0

    .line 31
    :cond_3
    iget-wide v0, p0, Lcom/android/animation/TimeAnimator;->mPreviousTime:J

    sub-long v4, p1, v0

    goto :goto_1
.end method

.method initAnimation()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public setTimeListener(Lcom/android/animation/TimeAnimator$TimeListener;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/animation/TimeAnimator;->mListener:Lcom/android/animation/TimeAnimator$TimeListener;

    .line 46
    return-void
.end method
