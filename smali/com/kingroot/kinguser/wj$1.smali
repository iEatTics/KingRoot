.class Lcom/kingroot/kinguser/wj$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/wj;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic MJ:Lcom/kingroot/kinguser/wj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/wj;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/kingroot/kinguser/wj$1;->MJ:Lcom/kingroot/kinguser/wj;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 35
    invoke-super {p0}, Ljava/lang/Thread;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ih()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Lcom/kingroot/kinguser/wj$a;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/wj$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
