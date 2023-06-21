.class Lcom/kingroot/common/report/performance/mgr/AlarmBroadcast$1;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/report/performance/mgr/AlarmBroadcast;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Mp:Lcom/kingroot/common/report/performance/mgr/AlarmBroadcast;


# direct methods
.method constructor <init>(Lcom/kingroot/common/report/performance/mgr/AlarmBroadcast;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/kingroot/common/report/performance/mgr/AlarmBroadcast$1;->Mp:Lcom/kingroot/common/report/performance/mgr/AlarmBroadcast;

    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/wo$a;)V
    .locals 4
    .param p1    # Lcom/kingroot/kinguser/wo$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->nF()Ljava/util/List;

    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 55
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 58
    :cond_2
    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/kingroot/common/utils/system/ProcessUtils;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":task"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Lcom/kingroot/common/utils/system/ProcessUtils;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/tw;->kc()V

    .line 76
    :cond_3
    sget-wide v0, Lcom/kingroot/common/report/performance/mgr/AlarmBroadcast;->Mo:J

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/tw;->u(J)V

    .line 78
    iget-object v0, p0, Lcom/kingroot/common/report/performance/mgr/AlarmBroadcast$1;->Mp:Lcom/kingroot/common/report/performance/mgr/AlarmBroadcast;

    invoke-virtual {v0}, Lcom/kingroot/common/report/performance/mgr/AlarmBroadcast;->mP()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/common/utils/system/ProcessUtils;->O(Ljava/util/List;)I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/common/report/performance/mgr/AlarmBroadcast;->bB(I)I

    .line 79
    invoke-static {}, Lcom/kingroot/common/report/performance/mgr/AlarmBroadcast;->access$000()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/tw;->v(J)V

    .line 83
    invoke-static {}, Lcom/kingroot/kinguser/wo;->nz()I

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/kingroot/kinguser/wo;->nz()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/tw;->aU(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method
