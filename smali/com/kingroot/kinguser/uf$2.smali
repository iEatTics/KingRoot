.class final Lcom/kingroot/kinguser/uf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/uf;->kx()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Im:Lcom/kingroot/kinguser/ud;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ud;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/kingroot/kinguser/uf$2;->Im:Lcom/kingroot/kinguser/ud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/uf$2;->Im:Lcom/kingroot/kinguser/ud;

    if-eqz v0, :cond_0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/uf$2;->Im:Lcom/kingroot/kinguser/ud;

    .line 116
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ud;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/framework/task/KTaskSysService;

    .line 118
    invoke-virtual {v0}, Lcom/kingroot/common/framework/task/KTaskSysService;->kp()J

    move-result-wide v2

    const/4 v1, 0x1

    .line 117
    invoke-static {v2, v3, v1}, Lcom/kingroot/kinguser/tw;->a(JZ)V

    .line 119
    invoke-virtual {v0}, Lcom/kingroot/common/framework/task/KTaskSysService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/tw;->kb()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 131
    :goto_1
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 129
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    throw v0

    .line 120
    :catch_1
    move-exception v0

    goto :goto_0
.end method
