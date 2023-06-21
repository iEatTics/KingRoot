.class Lcom/kingroot/kinguser/cep$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bYA:Lcom/kingroot/kinguser/cep;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cep;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kingroot/kinguser/cep$1;->bYA:Lcom/kingroot/kinguser/cep;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cep$1;->bYA:Lcom/kingroot/kinguser/cep;

    invoke-static {v0}, Lcom/kingroot/kinguser/cep;->a(Lcom/kingroot/kinguser/cep;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cep$1;->bYA:Lcom/kingroot/kinguser/cep;

    invoke-static {v0}, Lcom/kingroot/kinguser/cep;->b(Lcom/kingroot/kinguser/cep;)I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/cep$1;->bYA:Lcom/kingroot/kinguser/cep;

    invoke-static {v0}, Lcom/kingroot/kinguser/cep;->c(Lcom/kingroot/kinguser/cep;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cep$a;

    .line 68
    if-eqz v0, :cond_0

    .line 70
    iget-object v2, p0, Lcom/kingroot/kinguser/cep$1;->bYA:Lcom/kingroot/kinguser/cep;

    invoke-static {v2}, Lcom/kingroot/kinguser/cep;->d(Lcom/kingroot/kinguser/cep;)I

    .line 71
    iget-object v2, p0, Lcom/kingroot/kinguser/cep$1;->bYA:Lcom/kingroot/kinguser/cep;

    iget-object v3, v0, Lcom/kingroot/kinguser/cep$a;->bYH:Lcom/kingroot/kinguser/cff$d;

    iget-object v4, v0, Lcom/kingroot/kinguser/cep$a;->data:[B

    iget-object v0, v0, Lcom/kingroot/kinguser/cep$a;->bYI:Lcom/kingroot/kinguser/ceo$a;

    invoke-static {v2, v3, v4, v0}, Lcom/kingroot/kinguser/cep;->a(Lcom/kingroot/kinguser/cep;Lcom/kingroot/kinguser/cff$d;[BLcom/kingroot/kinguser/ceo$a;)V

    .line 78
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
