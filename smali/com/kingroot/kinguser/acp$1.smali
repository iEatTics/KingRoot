.class Lcom/kingroot/kinguser/acp$1;
.super Lcom/kingroot/kinguser/acp$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/acp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aaK:Lcom/kingroot/kinguser/acp;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/acp;Landroid/content/Context;Lcom/kingroot/kinguser/acp;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/kingroot/kinguser/acp$1;->aaK:Lcom/kingroot/kinguser/acp;

    invoke-direct {p0, p2, p3}, Lcom/kingroot/kinguser/acp$b;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/acp;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;Lcom/kingroot/kinguser/acp;)V
    .locals 6

    .prologue
    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 56
    invoke-static {p2}, Lcom/kingroot/kinguser/acp;->a(Lcom/kingroot/kinguser/acp;)V

    .line 60
    iget-object v1, p0, Lcom/kingroot/kinguser/acp$1;->aaK:Lcom/kingroot/kinguser/acp;

    monitor-enter v1

    .line 61
    :try_start_0
    invoke-static {p2}, Lcom/kingroot/kinguser/acp;->b(Lcom/kingroot/kinguser/acp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 62
    monitor-exit v1

    .line 64
    :cond_0
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
