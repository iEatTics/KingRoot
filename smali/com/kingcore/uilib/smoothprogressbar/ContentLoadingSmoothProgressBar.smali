.class public Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;
.super Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;
.source "SourceFile"


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private mPostedHide:Z

.field private mPostedShow:Z

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v2}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->mStartTime:J

    .line 18
    iput-boolean v2, p0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->mPostedHide:Z

    .line 20
    iput-boolean v2, p0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->mPostedShow:Z

    .line 22
    iput-boolean v2, p0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDismissed:Z

    .line 24
    new-instance v0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar$1;

    invoke-direct {v0, p0}, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar$1;-><init>(Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;)V

    iput-object v0, p0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    .line 34
    new-instance v0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar$2;

    invoke-direct {v0, p0}, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar$2;-><init>(Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;)V

    iput-object v0, p0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;J)J
    .locals 1

    .prologue
    .line 11
    iput-wide p1, p0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->mStartTime:J

    return-wide p1
.end method

.method static synthetic a(Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;)Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDismissed:Z

    return v0
.end method

.method static synthetic a(Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;Z)Z
    .locals 0

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->mPostedHide:Z

    return p1
.end method

.method static synthetic b(Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;Z)Z
    .locals 0

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->mPostedShow:Z

    return p1
.end method

.method private removeCallbacks()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 68
    iget-object v0, p0, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->onAttachedToWindow()V

    .line 57
    invoke-direct {p0}, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->removeCallbacks()V

    .line 58
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->onDetachedFromWindow()V

    .line 63
    invoke-direct {p0}, Lcom/kingcore/uilib/smoothprogressbar/ContentLoadingSmoothProgressBar;->removeCallbacks()V

    .line 64
    return-void
.end method
