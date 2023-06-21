.class Lcom/kingroot/loader/p$a;
.super Lcom/kingroot/loader/multi/IKlConnectionManagerBridge$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/loader/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/kingroot/loader/sdk/service/IKlConnectionManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingroot/loader/multi/IKlConnectionManagerBridge$a;-><init>()V

    .line 27
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    iput-object v0, p0, Lcom/kingroot/loader/p$a;->a:Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/loader/p$1;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingroot/loader/p$a;-><init>()V

    return-void
.end method


# virtual methods
.method public getService(ILandroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kingroot/loader/p$a;->a:Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;->getService(ILandroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
