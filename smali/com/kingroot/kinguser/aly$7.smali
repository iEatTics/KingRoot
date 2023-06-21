.class Lcom/kingroot/kinguser/aly$7;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aly;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aly;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/kingroot/kinguser/aly$7;->this$0:Lcom/kingroot/kinguser/aly;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 326
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 328
    if-nez v2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aly$7;->this$0:Lcom/kingroot/kinguser/aly;

    invoke-static {v0}, Lcom/kingroot/kinguser/aly;->c(Lcom/kingroot/kinguser/aly;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/aly$7;->this$0:Lcom/kingroot/kinguser/aly;

    invoke-static {v0}, Lcom/kingroot/kinguser/aly;->d(Lcom/kingroot/kinguser/aly;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x1

    .line 342
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/akl;->Bh()Z

    move-result v3

    if-nez v3, :cond_0

    .line 348
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/akl;->Bf()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    move v0, v1

    .line 354
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/akl;->Bk()Z

    move-result v3

    if-nez v3, :cond_3

    .line 359
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aly$7;->this$0:Lcom/kingroot/kinguser/aly;

    invoke-static {v0}, Lcom/kingroot/kinguser/aly;->e(Lcom/kingroot/kinguser/aly;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    if-eqz v1, :cond_0

    .line 366
    new-instance v0, Lcom/kingroot/kinguser/aly$7$1;

    invoke-direct {v0, p0, v2}, Lcom/kingroot/kinguser/aly$7$1;-><init>(Lcom/kingroot/kinguser/aly$7;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 374
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->Be()V

    .line 375
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/akl;->as(J)V

    .line 376
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18926

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method
