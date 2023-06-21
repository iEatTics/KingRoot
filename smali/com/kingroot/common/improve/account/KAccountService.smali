.class public Lcom/kingroot/common/improve/account/KAccountService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static It:Lcom/kingroot/kinguser/wo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/kingroot/common/improve/account/KAccountService$1;

    invoke-direct {v0}, Lcom/kingroot/common/improve/account/KAccountService$1;-><init>()V

    sput-object v0, Lcom/kingroot/common/improve/account/KAccountService;->It:Lcom/kingroot/kinguser/wo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/kingroot/common/improve/account/KAccountService;->It:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wo;->ny()Z

    .line 26
    return-void
.end method
