.class final Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->rh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 157
    invoke-static {}, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ri()Lcom/kingroot/kinguser/aao$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ri()Lcom/kingroot/kinguser/aao$a;

    move-result-object v0

    iget v0, v0, Lcom/kingroot/kinguser/aao$a;->retCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 158
    invoke-static {}, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ri()Lcom/kingroot/kinguser/aao$a;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->rj()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/aao$a;->XG:Z

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-static {}, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ri()Lcom/kingroot/kinguser/aao$a;

    move-result-object v1

    iget v1, v1, Lcom/kingroot/kinguser/aao$a;->retCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-static {}, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ri()Lcom/kingroot/kinguser/aao$a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/kingroot/kinguser/aao$a;->XG:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-static {}, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ri()Lcom/kingroot/kinguser/aao$a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/kingroot/kinguser/aao$a;->XG:Z

    if-nez v1, :cond_0

    .line 165
    invoke-static {}, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ri()Lcom/kingroot/kinguser/aao$a;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/aao$a;->XE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {}, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ri()Lcom/kingroot/kinguser/aao$a;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/aao$a;->XF:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/vt;->lT()Lcom/kingroot/kinguser/vt;

    move-result-object v1

    const v2, 0x6157e

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/vt;->a(ILjava/util/List;)V

    .line 173
    :cond_1
    return-void
.end method
