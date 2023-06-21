.class Lcom/kingroot/kinguser/gh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic qs:Lcom/kingroot/kinguser/gg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/gg;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/kingroot/kinguser/gh;->qs:Lcom/kingroot/kinguser/gg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x36ee80

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/gh;->qs:Lcom/kingroot/kinguser/gg;

    invoke-static {v0}, Lcom/kingroot/kinguser/gg;->a(Lcom/kingroot/kinguser/gg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/gh;->qs:Lcom/kingroot/kinguser/gg;

    invoke-static {v0}, Lcom/kingroot/kinguser/gg;->b(Lcom/kingroot/kinguser/gg;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/gh;->qs:Lcom/kingroot/kinguser/gg;

    invoke-static {v0}, Lcom/kingroot/kinguser/gg;->c(Lcom/kingroot/kinguser/gg;)V

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/gh;->qs:Lcom/kingroot/kinguser/gg;

    invoke-static {v0}, Lcom/kingroot/kinguser/gg;->d(Lcom/kingroot/kinguser/gg;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/fz;->ak()Lcom/kingroot/kinguser/fz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/gh;->qs:Lcom/kingroot/kinguser/gg;

    invoke-static {v1}, Lcom/kingroot/kinguser/gg;->e(Lcom/kingroot/kinguser/gg;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/kingroot/kinguser/fz;->b(Ljava/lang/Runnable;J)V

    .line 49
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/fz;->ak()Lcom/kingroot/kinguser/fz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/gh;->qs:Lcom/kingroot/kinguser/gg;

    invoke-static {v1}, Lcom/kingroot/kinguser/gg;->e(Lcom/kingroot/kinguser/gg;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/kingroot/kinguser/fz;->b(Ljava/lang/Runnable;J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/kingroot/kinguser/fz;->ak()Lcom/kingroot/kinguser/fz;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/gh;->qs:Lcom/kingroot/kinguser/gg;

    invoke-static {v2}, Lcom/kingroot/kinguser/gg;->e(Lcom/kingroot/kinguser/gg;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Lcom/kingroot/kinguser/fz;->b(Ljava/lang/Runnable;J)V

    throw v0
.end method
