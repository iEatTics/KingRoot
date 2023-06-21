.class public Lcom/kingroot/kinguser/bkl;
.super Lcom/kingroot/kinguser/tu;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/loader/sdk/service/IKlConnectionManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/tu",
        "<",
        "Lcom/kingroot/loader/multi/IKlConnectionManagerBridge;",
        ">;",
        "Lcom/kingroot/loader/sdk/service/IKlConnectionManager;"
    }
.end annotation


# instance fields
.field private final a:Lcom/kingroot/loader/sdk/service/IKlConnectionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kingroot/kinguser/tu;-><init>()V

    .line 26
    new-instance v0, Lcom/kingroot/kinguser/bjv;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bjv;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bkl;->a:Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Lcom/kingroot/loader/multi/IKlConnectionManagerBridge;
    .locals 1

    .prologue
    .line 40
    invoke-static {p1}, Lcom/kingroot/loader/multi/IKlConnectionManagerBridge$a;->a(Landroid/os/IBinder;)Lcom/kingroot/loader/multi/IKlConnectionManagerBridge;

    move-result-object v0

    return-object v0
.end method

.method protected aeN()Lcom/kingroot/loader/multi/IKlConnectionManagerBridge;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/kingroot/loader/p;->aeN()Lcom/kingroot/loader/multi/IKlConnectionManagerBridge;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bkl;->a(Landroid/os/IBinder;)Lcom/kingroot/loader/multi/IKlConnectionManagerBridge;

    move-result-object v0

    return-object v0
.end method

.method public delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/bkl;->a:Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;->delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getService(ILandroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bkl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/multi/IKlConnectionManagerBridge;

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p1, p2}, Lcom/kingroot/loader/multi/IKlConnectionManagerBridge;->getService(ILandroid/content/Intent;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-static {v0}, Lcom/kingroot/kinguser/zg;->d(Ljava/lang/Throwable;)V

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(ILandroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/bkl;->a:Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;->getType(ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/bkl;->a:Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;->insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected jU()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x2

    return v0
.end method

.method protected synthetic jV()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bkl;->aeN()Lcom/kingroot/loader/multi/IKlConnectionManagerBridge;

    move-result-object v0

    return-object v0
.end method

.method protected jW()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/loader/p;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/bkl;->a:Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public talkWithHost(Lcom/kingroot/loader/sdk/KlContext;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1    # Lcom/kingroot/loader/sdk/KlContext;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/bkl;->a:Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;->talkWithHost(Lcom/kingroot/loader/sdk/KlContext;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public talkWithPlugin(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/bkl;->a:Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;->talkWithPlugin(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/bkl;->a:Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;->update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
