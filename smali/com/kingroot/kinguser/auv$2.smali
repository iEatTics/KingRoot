.class Lcom/kingroot/kinguser/auv$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/auv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aTe:Lcom/kingroot/kinguser/auv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/auv;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/kingroot/kinguser/auv$2;->aTe:Lcom/kingroot/kinguser/auv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckEvent(I)V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public onCheckFinished(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 355
    iget-object v0, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    .line 356
    iget-object v1, p0, Lcom/kingroot/kinguser/auv$2;->aTe:Lcom/kingroot/kinguser/auv;

    iget-object v0, v0, Lcom/kingroot/common/network/download/UpdateInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/auv;->jm(Ljava/lang/String;)V

    .line 358
    :cond_0
    return-void
.end method

.method public onCheckStarted()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method
