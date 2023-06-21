.class final Lcom/kingroot/kinguser/ayd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ayd;->a(ILjava/lang/Runnable;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bcG:Lcom/kingroot/kinguser/ayd$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ayd$a;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/kingroot/kinguser/ayd$1;->bcG:Lcom/kingroot/kinguser/ayd$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 97
    invoke-static {}, Lcom/kingroot/kinguser/ayd;->UN()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ayd$1;->bcG:Lcom/kingroot/kinguser/ayd$a;

    iget v1, v1, Lcom/kingroot/kinguser/ayd$a;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ayd$b;

    .line 98
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ayd$b;->UO()Lcom/kingroot/kinguser/ayd$a;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/kingroot/kinguser/ayd$1;->bcG:Lcom/kingroot/kinguser/ayd$a;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ayd$a;->a(Lcom/kingroot/kinguser/ayd$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ayd;->UM()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/ayd$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/ayd$1;->bcG:Lcom/kingroot/kinguser/ayd$a;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ayd$b;-><init>(Lcom/kingroot/kinguser/ayd$a;)V

    .line 112
    invoke-static {}, Lcom/kingroot/kinguser/ayd;->UN()Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ayd$1;->bcG:Lcom/kingroot/kinguser/ayd$a;

    iget v2, v2, Lcom/kingroot/kinguser/ayd$a;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 116
    invoke-static {}, Lcom/kingroot/kinguser/aku;->Gn()Lcom/kingroot/kinguser/aku;

    move-result-object v1

    iget-object v4, p0, Lcom/kingroot/kinguser/ayd$1;->bcG:Lcom/kingroot/kinguser/ayd$a;

    iget v4, v4, Lcom/kingroot/kinguser/ayd$a;->id:I

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/aku;->eS(I)J

    move-result-wide v4

    .line 117
    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    .line 119
    invoke-static {}, Lcom/kingroot/kinguser/ayd;->UM()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 120
    :cond_2
    sub-long v6, v2, v4

    iget-object v1, p0, Lcom/kingroot/kinguser/ayd$1;->bcG:Lcom/kingroot/kinguser/ayd$a;

    iget-wide v8, v1, Lcom/kingroot/kinguser/ayd$a;->bcI:J

    cmp-long v1, v6, v8

    if-ltz v1, :cond_3

    .line 122
    invoke-static {}, Lcom/kingroot/kinguser/ayd;->UM()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 124
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/ayd;->UM()Landroid/os/Handler;

    move-result-object v1

    iget-object v6, p0, Lcom/kingroot/kinguser/ayd$1;->bcG:Lcom/kingroot/kinguser/ayd$a;

    iget-wide v6, v6, Lcom/kingroot/kinguser/ayd$a;->bcI:J

    add-long/2addr v4, v6

    sub-long v2, v4, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
