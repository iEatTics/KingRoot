.class Lcom/kingroot/kinguser/acq$4;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/acq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic abb:Lcom/kingroot/kinguser/acq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/acq;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/kingroot/kinguser/acq$4;->abb:Lcom/kingroot/kinguser/acq;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 424
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 426
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 429
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/acq$a;

    .line 431
    iget-object v1, p0, Lcom/kingroot/kinguser/acq$4;->abb:Lcom/kingroot/kinguser/acq;

    invoke-static {v1}, Lcom/kingroot/kinguser/acq;->e(Lcom/kingroot/kinguser/acq;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/kingroot/kinguser/acq$a;->abd:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/acq$4;->abb:Lcom/kingroot/kinguser/acq;

    invoke-static {v1}, Lcom/kingroot/kinguser/acq;->f(Lcom/kingroot/kinguser/acq;)Landroid/support/v4/util/LruCache;

    move-result-object v1

    iget-object v2, v0, Lcom/kingroot/kinguser/acq$a;->abd:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/kingroot/kinguser/acq$a;->mData:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 440
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/kingroot/kinguser/acq$a;->abc:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lcom/kingroot/kinguser/acq$a;->mInfo:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/kingroot/kinguser/acq$a;->mData:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 442
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/acq$4;->abb:Lcom/kingroot/kinguser/acq;

    iget-object v2, v0, Lcom/kingroot/kinguser/acq$a;->abc:Landroid/view/View;

    iget-object v0, v0, Lcom/kingroot/kinguser/acq$a;->mData:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/acq;->a(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    goto :goto_0

    .line 451
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/acq$4;->abb:Lcom/kingroot/kinguser/acq;

    invoke-static {v0}, Lcom/kingroot/kinguser/acq;->g(Lcom/kingroot/kinguser/acq;)V

    goto :goto_0

    .line 434
    :catch_1
    move-exception v1

    goto :goto_1

    .line 426
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
