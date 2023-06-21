.class public Lcom/kingroot/kinguser/ti;
.super Lcom/kingroot/kinguser/tp;
.source "SourceFile"


# static fields
.field private static Hg:Landroid/os/IBinder;


# instance fields
.field private Hf:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/kingroot/kinguser/tp;-><init>()V

    return-void
.end method

.method public static synthetic c(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 10
    sput-object p0, Lcom/kingroot/kinguser/ti;->Hg:Landroid/os/IBinder;

    return-object p0
.end method

.method public static jE()Lcom/kingroot/common/framework/broadcast/IBroadCastServiceCallback;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/kingroot/kinguser/ti;->Hg:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/ti;->Hg:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/ti;->Hg:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/common/framework/broadcast/IBroadCastServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/common/framework/broadcast/IBroadCastServiceCallback;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected I(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/tp;->I(Landroid/content/Context;)V

    .line 19
    new-instance v0, Lcom/kingroot/common/framework/broadcast/KBroadCastService$1;

    invoke-direct {v0, p0}, Lcom/kingroot/common/framework/broadcast/KBroadCastService$1;-><init>(Lcom/kingroot/kinguser/ti;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ti;->Hf:Landroid/os/IBinder;

    .line 26
    return-void
.end method

.method protected onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/ti;->Hf:Landroid/os/IBinder;

    return-object v0
.end method
