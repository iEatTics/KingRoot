.class Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;->a(Lcom/kingroot/kinguser/hk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aqd:Lcom/kingroot/kinguser/hk;

.field final synthetic aqe:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;Lcom/kingroot/kinguser/hk;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1;->aqe:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;

    iput-object p2, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1;->aqd:Lcom/kingroot/kinguser/hk;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 591
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 592
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 593
    iget-object v1, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1;->aqd:Lcom/kingroot/kinguser/hk;

    invoke-interface {v1}, Lcom/kingroot/kinguser/hk;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 595
    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1;->aqe:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$700(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1;->aqd:Lcom/kingroot/kinguser/hk;

    invoke-interface {v1}, Lcom/kingroot/kinguser/hk;->aY()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 605
    new-instance v0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1$1;-><init>(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$1;)V

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
