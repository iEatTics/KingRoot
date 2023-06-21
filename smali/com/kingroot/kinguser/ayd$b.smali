.class Lcom/kingroot/kinguser/ayd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ayd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final bcJ:Lcom/kingroot/kinguser/ayd$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ayd$a;)V
    .locals 0
    .param p1    # Lcom/kingroot/kinguser/ayd$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/kingroot/kinguser/ayd$b;->bcJ:Lcom/kingroot/kinguser/ayd$a;

    .line 47
    return-void
.end method


# virtual methods
.method UO()Lcom/kingroot/kinguser/ayd$a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/ayd$b;->bcJ:Lcom/kingroot/kinguser/ayd$a;

    return-object v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/aku;->Gn()Lcom/kingroot/kinguser/aku;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/ayd$b;->bcJ:Lcom/kingroot/kinguser/ayd$a;

    iget v3, v3, Lcom/kingroot/kinguser/ayd$a;->id:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/kingroot/kinguser/aku;->a(IJ)V

    .line 61
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/ayd$b;->bcJ:Lcom/kingroot/kinguser/ayd$a;

    iget-object v2, v2, Lcom/kingroot/kinguser/ayd$a;->bcH:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 68
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 70
    invoke-static {}, Lcom/kingroot/kinguser/ayd;->UM()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ayd$b;->bcJ:Lcom/kingroot/kinguser/ayd$a;

    iget-wide v2, v1, Lcom/kingroot/kinguser/ayd$a;->bcI:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    :goto_1
    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/kingroot/kinguser/ayd$b;->bcJ:Lcom/kingroot/kinguser/ayd$a;

    iget-wide v2, v2, Lcom/kingroot/kinguser/ayd$a;->bcI:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 73
    invoke-static {}, Lcom/kingroot/kinguser/ayd;->UM()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/ayd$b;->bcJ:Lcom/kingroot/kinguser/ayd$a;

    iget-wide v4, v3, Lcom/kingroot/kinguser/ayd$a;->bcI:J

    sub-long v0, v4, v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 76
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ayd;->UM()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 62
    :catch_0
    move-exception v2

    goto :goto_0
.end method
