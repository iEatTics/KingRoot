.class public Lcom/kingroot/kinguser/service/KingRootAppListService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/service/KingRootAppListService$a;,
        Lcom/kingroot/kinguser/service/KingRootAppListService$KingrootAppListMgr;
    }
.end annotation


# instance fields
.field private bjb:Lcom/kingroot/kinguser/service/KingRootAppListService$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/service/KingRootAppListService;->bjb:Lcom/kingroot/kinguser/service/KingRootAppListService$a;

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/service/KingRootAppListService;)Lcom/kingroot/kinguser/service/KingRootAppListService$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KingRootAppListService;->bjb:Lcom/kingroot/kinguser/service/KingRootAppListService$a;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/kingroot/kinguser/service/KingRootAppListService$KingrootAppListMgr;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/service/KingRootAppListService$KingrootAppListMgr;-><init>(Lcom/kingroot/kinguser/service/KingRootAppListService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    new-instance v0, Lcom/kingroot/kinguser/service/KingRootAppListService$a;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/service/KingRootAppListService$a;-><init>(Lcom/kingroot/kinguser/service/KingRootAppListService;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/service/KingRootAppListService;->bjb:Lcom/kingroot/kinguser/service/KingRootAppListService$a;

    .line 31
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 36
    return-void
.end method
