.class Lcom/kingroot/kinguser/cff$2$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cff$2$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic caD:Lcom/kingroot/kinguser/cff$2$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cff$2$3;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/kingroot/kinguser/cff$2$3$1;->caD:Lcom/kingroot/kinguser/cff$2$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 9

    .prologue
    const v8, -0x2faf0800

    const/4 v7, 0x0

    .line 550
    invoke-static {p3}, Lcom/kingroot/kinguser/cen;->kY(I)I

    move-result v6

    .line 553
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$3$1;->caD:Lcom/kingroot/kinguser/cff$2$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$3;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->e(Lcom/kingroot/kinguser/cff;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, p4}, Lcom/kingroot/kinguser/cer;->c(Landroid/content/Context;ILjava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    const-string v1, "SharkNetwork"

    const/4 v4, 0x0

    const/16 v5, 0x1e

    move v2, p2

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/bg;II)V

    .line 556
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/cfc;->lf(I)Z

    .line 558
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$3$1;->caD:Lcom/kingroot/kinguser/cff$2$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$3;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->k(Lcom/kingroot/kinguser/cff;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$3$1;->caD:Lcom/kingroot/kinguser/cff$2$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$3;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/cff;->c(Lcom/kingroot/kinguser/cff;Z)Z

    .line 560
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    if-nez v6, :cond_0

    .line 563
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$3$1;->caD:Lcom/kingroot/kinguser/cff$2$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$3;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 575
    :goto_0
    return-void

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 566
    :cond_0
    if-lez v6, :cond_1

    .line 568
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v6

    .line 573
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/cff$2$3$1;->caD:Lcom/kingroot/kinguser/cff$2$3;

    iget-object v1, v1, Lcom/kingroot/kinguser/cff$2$3;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v1, v7, v7, v0}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;ZZI)V

    goto :goto_0

    .line 570
    :cond_1
    add-int v0, v6, v8

    goto :goto_1
.end method
