.class public Lcom/kingroot/kinguser/bpj;
.super Ljava/lang/Object;


# instance fields
.field private bHz:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kingroot/kinguser/bpj;->bHz:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpj;->bHz:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bpj;->bHz:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
