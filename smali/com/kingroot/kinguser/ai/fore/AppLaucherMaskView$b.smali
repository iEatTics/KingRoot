.class Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private PA:Z

.field final synthetic aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

.field private aqR:Z

.field private aqS:Z

.field private aqT:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 502
    iput-object p1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-boolean v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;->PA:Z

    .line 504
    iput-boolean v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;->aqR:Z

    .line 505
    iput-boolean v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;->aqS:Z

    .line 506
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;->aqT:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 511
    :goto_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;->aqR:Z

    if-eqz v0, :cond_0

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;->PA:Z

    .line 513
    return-void

    .line 516
    :cond_0
    const-wide/16 v0, 0x3

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->b(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

    move-result-object v0

    iget-wide v2, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqL:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqL:J

    .line 520
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->b(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

    move-result-object v0

    iget-wide v0, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqL:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->b(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

    move-result-object v0

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqL:J

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->b(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    invoke-static {v1}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->b(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

    move-result-object v1

    iget-wide v2, v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqL:J

    const-wide/16 v4, 0x168

    rem-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqM:F

    .line 525
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->postInvalidate()V

    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public xq()V
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;->aqR:Z

    if-eqz v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 537
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;->aqR:Z

    goto :goto_0
.end method
