.class public Lcom/kingroot/kinguser/common/check/KCheckExecutorService;
.super Lcom/kingroot/kinguser/tp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/common/check/KCheckExecutorService$CheckExecutorStub;
    }
.end annotation


# static fields
.field private static volatile atJ:Lcom/kingroot/kinguser/common/check/KCheckExecutorService$CheckExecutorStub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/common/check/KCheckExecutorService;->atJ:Lcom/kingroot/kinguser/common/check/KCheckExecutorService$CheckExecutorStub;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kingroot/kinguser/tp;-><init>()V

    return-void
.end method

.method public static zk()Lcom/kingroot/kinguser/common/check/ICheckExecuteService;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/kingroot/kinguser/common/check/KCheckExecutorService;->atJ:Lcom/kingroot/kinguser/common/check/KCheckExecutorService$CheckExecutorStub;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/kingroot/kinguser/common/check/KCheckExecutorService$CheckExecutorStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/common/check/KCheckExecutorService$CheckExecutorStub;-><init>(Lcom/kingroot/kinguser/common/check/KCheckExecutorService$1;)V

    sput-object v0, Lcom/kingroot/kinguser/common/check/KCheckExecutorService;->atJ:Lcom/kingroot/kinguser/common/check/KCheckExecutorService$CheckExecutorStub;

    .line 34
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/common/check/KCheckExecutorService;->atJ:Lcom/kingroot/kinguser/common/check/KCheckExecutorService$CheckExecutorStub;

    return-object v0
.end method


# virtual methods
.method protected I(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/tp;->I(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lcom/kingroot/kinguser/common/check/KCheckExecutorService$CheckExecutorStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/common/check/KCheckExecutorService$CheckExecutorStub;-><init>(Lcom/kingroot/kinguser/common/check/KCheckExecutorService$1;)V

    sput-object v0, Lcom/kingroot/kinguser/common/check/KCheckExecutorService;->atJ:Lcom/kingroot/kinguser/common/check/KCheckExecutorService$CheckExecutorStub;

    .line 23
    return-void
.end method

.method protected onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/kingroot/kinguser/common/check/KCheckExecutorService;->atJ:Lcom/kingroot/kinguser/common/check/KCheckExecutorService$CheckExecutorStub;

    return-object v0
.end method
