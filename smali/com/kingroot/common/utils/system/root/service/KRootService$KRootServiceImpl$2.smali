.class final Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl$2;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl$2;->rH()Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method protected rH()Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/common/utils/system/root/service/KRootService$KRootServiceImpl;-><init>(Lcom/kingroot/common/utils/system/root/service/KRootService$1;)V

    return-object v0
.end method
