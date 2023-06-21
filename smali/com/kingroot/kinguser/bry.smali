.class public Lcom/kingroot/kinguser/bry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/brh;


# instance fields
.field final TAG:Ljava/lang/String;

.field bLg:Lcom/kingroot/kinguser/brh;

.field bLh:Lcom/kingroot/kinguser/brh;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "H5ManagerProxy"

    iput-object v0, p0, Lcom/kingroot/kinguser/bry;->TAG:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bry;->context:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZILandroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/bry;->bLg:Lcom/kingroot/kinguser/brh;

    .line 31
    if-nez v0, :cond_2

    .line 32
    const-string v0, "H5ManagerProxy"

    const-string v1, "null == mIH5Browser"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/bry;->bLh:Lcom/kingroot/kinguser/brh;

    if-nez v0, :cond_1

    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bry;->bLh:Lcom/kingroot/kinguser/brh;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/kingroot/kinguser/brx;

    iget-object v1, p0, Lcom/kingroot/kinguser/bry;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/brx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bry;->bLh:Lcom/kingroot/kinguser/brh;

    .line 34
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bry;->bLh:Lcom/kingroot/kinguser/brh;

    .line 42
    :cond_2
    const-string v1, "H5ManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " report="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " staticpoint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/brh;->a(Ljava/lang/String;ZILandroid/os/Bundle;)V

    .line 44
    return-void

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lcom/kingroot/kinguser/brh;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/kingroot/kinguser/bry;->bLg:Lcom/kingroot/kinguser/brh;

    .line 26
    return-void
.end method
