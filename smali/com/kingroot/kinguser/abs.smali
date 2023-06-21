.class public abstract Lcom/kingroot/kinguser/abs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/abz;


# instance fields
.field protected ZK:Lcom/kingroot/kinguser/abw$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/abs;->ZK:Lcom/kingroot/kinguser/abw$a;

    .line 21
    new-instance v0, Lcom/kingroot/kinguser/abw$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/abw$a;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/abs;->ZK:Lcom/kingroot/kinguser/abw$a;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/abw$a;)V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/kingroot/kinguser/abw$a;->rs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput-object p1, p0, Lcom/kingroot/kinguser/abs;->ZK:Lcom/kingroot/kinguser/abw$a;

    .line 67
    :cond_0
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/aci$a;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public declared-synchronized rr()Lcom/kingroot/kinguser/abm;
    .locals 2

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abs;->onStart()V

    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/abs;->ZK:Lcom/kingroot/kinguser/abw$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abw$a;->rs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/abs;->ZK:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :goto_0
    monitor-exit p0

    return-object v0

    .line 36
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abs;->rt()Lcom/kingroot/kinguser/aci;

    move-result-object v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    new-instance v0, Lcom/kingroot/kinguser/aci;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aci;-><init>()V

    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aci;->rE()Lcom/kingroot/kinguser/abw;

    move-result-object v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/abs;->ZK:Lcom/kingroot/kinguser/abw$a;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/abw;->a(Lcom/kingroot/kinguser/abz;)Lcom/kingroot/kinguser/abm;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;

    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/abs;->ZK:Lcom/kingroot/kinguser/abw$a;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abs;->b(Lcom/kingroot/kinguser/abw$a;)V

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/abs;->ZK:Lcom/kingroot/kinguser/abw$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/abw$a;->aaa:Lcom/kingroot/kinguser/abm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected rs()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/abs;->ZK:Lcom/kingroot/kinguser/abw$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abw$a;->rs()Z

    move-result v0

    return v0
.end method

.method protected abstract rt()Lcom/kingroot/kinguser/aci;
.end method
