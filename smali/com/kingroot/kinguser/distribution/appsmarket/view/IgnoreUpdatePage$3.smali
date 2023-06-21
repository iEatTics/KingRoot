.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/IgnoreUpdatePage$3;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aob;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aob;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/IgnoreUpdatePage$3;->this$0:Lcom/kingroot/kinguser/aob;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchDiffResult(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 183
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/IgnoreUpdatePage$3;->this$0:Lcom/kingroot/kinguser/aob;

    iget-object v0, v0, Lcom/kingroot/kinguser/aob;->aBC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 188
    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 190
    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->pkgName:Ljava/lang/String;

    iget-object v5, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->c(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/IgnoreUpdatePage$3;->this$0:Lcom/kingroot/kinguser/aob;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aob;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 199
    return-void
.end method

.method public onFetchResult(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 179
    return-void
.end method
