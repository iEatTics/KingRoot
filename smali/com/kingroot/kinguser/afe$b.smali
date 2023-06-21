.class final Lcom/kingroot/kinguser/afe$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/afe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic ahm:Lcom/kingroot/kinguser/afe;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/afe;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/kingroot/kinguser/afe$b;->ahm:Lcom/kingroot/kinguser/afe;

    .line 124
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 125
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/afe$b;->ahm:Lcom/kingroot/kinguser/afe;

    invoke-static {v0}, Lcom/kingroot/kinguser/afe;->a(Lcom/kingroot/kinguser/afe;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 132
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/afe$a;

    .line 133
    if-eqz v0, :cond_1

    .line 134
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/afe$a;->aA(Z)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/afe$b;->ahm:Lcom/kingroot/kinguser/afe;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/afe;->va()V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
