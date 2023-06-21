.class Lcom/kingroot/kinguser/bvd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/btz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bvd;->b(Ljava/util/List;Lcom/kingroot/kinguser/btz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bPr:Lcom/kingroot/kinguser/bvd;

.field private final synthetic bPs:Lcom/kingroot/kinguser/btz;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bvd;Lcom/kingroot/kinguser/btz;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bvd$1;->bPr:Lcom/kingroot/kinguser/bvd;

    iput-object p2, p0, Lcom/kingroot/kinguser/bvd$1;->bPs:Lcom/kingroot/kinguser/btz;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchDiffResult(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 54
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 55
    :cond_0
    const-string v0, "SoftUpdateEngine"

    const-string v1, "onFetchDiffResult--fetch--result-failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/bvd$1;->bPs:Lcom/kingroot/kinguser/btz;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/btz;->onFetchDiffResult(Ljava/util/List;Z)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bvd$1;->bPs:Lcom/kingroot/kinguser/btz;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/btz;->onFetchDiffResult(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public onFetchResult(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 43
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bvd$1;->bPs:Lcom/kingroot/kinguser/btz;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/btz;->onFetchResult(Ljava/util/List;Z)V

    .line 45
    const-string v0, "SoftUpdateEngine"

    const-string v1, "loadAvailUpdateEntity--fetch--result-failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bvd$1;->bPs:Lcom/kingroot/kinguser/btz;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/btz;->onFetchResult(Ljava/util/List;Z)V

    goto :goto_0
.end method
