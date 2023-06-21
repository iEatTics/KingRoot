.class final Lcom/kingroot/kinguser/aeu$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aeu;->uF()Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IWodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic afA:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/kingroot/kinguser/aeu$1;->afA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/kinguser/tj;->ge()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    new-instance v1, Lcom/kingroot/kinguser/aeu$1$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/aeu$1$1;-><init>(Lcom/kingroot/kinguser/aeu$1;)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/tj;->a(Landroid/content/Intent;Landroid/content/ServiceConnection;)V

    .line 83
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
