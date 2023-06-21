.class public Lcom/kingroot/common/utils/system/root/service/KRootService;
.super Lcom/kingroot/kinguser/tp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingroot/kinguser/tp;-><init>()V

    return-void
.end method

.method public static rG()Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;->getInstance()Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected I(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/tp;->I(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/tp;->a(Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;->getInstance()Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;

    move-result-object v0

    return-object v0
.end method
