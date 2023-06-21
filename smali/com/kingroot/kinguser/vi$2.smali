.class Lcom/kingroot/kinguser/vi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/vi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic KR:Lcom/kingroot/kinguser/vi;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/vi;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/kingroot/kinguser/vi$2;->KR:Lcom/kingroot/kinguser/vi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 501
    iget-object v0, p0, Lcom/kingroot/kinguser/vi$2;->KR:Lcom/kingroot/kinguser/vi;

    invoke-static {v0}, Lcom/kingroot/kinguser/vi;->b(Lcom/kingroot/kinguser/vi;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vi$2;->KR:Lcom/kingroot/kinguser/vi;

    invoke-static {v0}, Lcom/kingroot/kinguser/vi;->c(Lcom/kingroot/kinguser/vi;)Lcom/kingroot/kinguser/uy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/vi$2;->KR:Lcom/kingroot/kinguser/vi;

    invoke-static {v0}, Lcom/kingroot/kinguser/vi;->c(Lcom/kingroot/kinguser/vi;)Lcom/kingroot/kinguser/uy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/uy;->close()V

    .line 505
    iget-object v0, p0, Lcom/kingroot/kinguser/vi$2;->KR:Lcom/kingroot/kinguser/vi;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/vi;->a(Lcom/kingroot/kinguser/vi;Lcom/kingroot/kinguser/uy;)Lcom/kingroot/kinguser/uy;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 507
    :catch_0
    move-exception v0

    goto :goto_0
.end method
