.class Lcom/kingroot/kinguser/bjy$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic byO:Lcom/kingroot/kinguser/bjy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjy;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/kingroot/kinguser/bjy$b;->byO:Lcom/kingroot/kinguser/bjy;

    .line 58
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    return-void
.end method


# virtual methods
.method b(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 72
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 73
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/kingroot/kinguser/bjy$a;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/bjy$a;

    .line 75
    invoke-interface {v0}, Lcom/kingroot/kinguser/bjy$a;->a()V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 63
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bjy$b;->b(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 67
    return-void

    .line 65
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
