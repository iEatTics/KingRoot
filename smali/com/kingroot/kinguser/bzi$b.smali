.class Lcom/kingroot/kinguser/bzi$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic bVD:Lcom/kingroot/kinguser/bzi;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bzi;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/kingroot/kinguser/bzi$b;->bVD:Lcom/kingroot/kinguser/bzi;

    .line 747
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 748
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 752
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 774
    :goto_0
    return-void

    .line 754
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bzi$b;->removeMessages(I)V

    .line 760
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi$b;->bVD:Lcom/kingroot/kinguser/bzi;

    invoke-static {v0}, Lcom/kingroot/kinguser/bzi;->a(Lcom/kingroot/kinguser/bzi;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 765
    invoke-static {}, Lcom/kingroot/kinguser/bzi;->kh()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/bzi;->kC()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {}, Lcom/kingroot/kinguser/bzi;->kh()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi$b;->bVD:Lcom/kingroot/kinguser/bzi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bzi;->ake()V

    .line 769
    :cond_0
    const/4 v0, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/kingroot/kinguser/bzi$b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi$b;->bVD:Lcom/kingroot/kinguser/bzi;

    invoke-static {v0}, Lcom/kingroot/kinguser/bzi;->b(Lcom/kingroot/kinguser/bzi;)V

    goto :goto_0

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
