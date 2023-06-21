.class Lcom/kingroot/kinguser/bel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bel;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bli:Ljava/lang/Runnable;

.field final synthetic blj:Lcom/kingroot/kinguser/bel;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bel;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/kingroot/kinguser/bel$1;->blj:Lcom/kingroot/kinguser/bel;

    iput-object p2, p0, Lcom/kingroot/kinguser/bel$1;->bli:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bel$1;->blj:Lcom/kingroot/kinguser/bel;

    invoke-static {v0}, Lcom/kingroot/kinguser/bel;->a(Lcom/kingroot/kinguser/bel;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bel$1;->bli:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 38
    return-void

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0
.end method
