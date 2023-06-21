.class Lcom/kingroot/kinguser/cff$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cff$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic caB:Lcom/kingroot/kinguser/cff$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cff$2;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/kingroot/kinguser/cff$2$3;->caB:Lcom/kingroot/kinguser/cff$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 543
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$3;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$3;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->o(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cer;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/cff$2$3$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/cff$2$3$1;-><init>(Lcom/kingroot/kinguser/cff$2$3;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cer;->a(Lcom/kingroot/kinguser/cer$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$3;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->k(Lcom/kingroot/kinguser/cff;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 581
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$3;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/cff;->c(Lcom/kingroot/kinguser/cff;Z)Z

    .line 582
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$3;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    const v1, -0x30e0350e

    invoke-static {v0, v3, v3, v1}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;ZZI)V

    goto :goto_0

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
