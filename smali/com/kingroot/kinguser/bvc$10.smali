.class Lcom/kingroot/kinguser/bvc$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bui;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bvc;->a(Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/kingroot/kinguser/bue;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/bui",
        "<",
        "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
        "Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bPc:Lcom/kingroot/kinguser/bvc;

.field private final synthetic bPj:Lcom/kingroot/kinguser/bue;

.field private final synthetic bPk:Z


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bue;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bvc$10;->bPc:Lcom/kingroot/kinguser/bvc;

    iput-object p2, p0, Lcom/kingroot/kinguser/bvc$10;->bPj:Lcom/kingroot/kinguser/bue;

    iput-boolean p3, p0, Lcom/kingroot/kinguser/bvc$10;->bPk:Z

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;Ljava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;",
            ">;",
            "Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;",
            "Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 496
    if-nez p1, :cond_1

    .line 499
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$10;->bPj:Lcom/kingroot/kinguser/bue;

    invoke-interface {v0, p1, p2, p4, p5}, Lcom/kingroot/kinguser/bue;->a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;)V

    .line 500
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bvc$10;->bPk:Z

    if-eqz v0, :cond_0

    .line 501
    iget v0, p4, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchOffset:I

    if-nez v0, :cond_0

    .line 503
    invoke-static {}, Lcom/kingroot/kinguser/bvk;->aiy()Lcom/kingroot/kinguser/bvk;

    move-result-object v0

    iget v1, p4, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryID:I

    .line 504
    const/4 v2, 0x0

    .line 503
    invoke-virtual {v0, p2, v1, v2}, Lcom/kingroot/kinguser/bvk;->a(Ljava/util/List;II)Z

    .line 505
    invoke-static {}, Lcom/kingroot/kinguser/bvg;->aiv()Lcom/kingroot/kinguser/bvg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bvg;->aiw()Lcom/kingroot/kinguser/bvm;

    move-result-object v0

    iget v1, p4, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryID:I

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 505
    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bvm;->l(IJ)V

    .line 507
    invoke-static {}, Lcom/kingroot/kinguser/bvg;->aiv()Lcom/kingroot/kinguser/bvg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bvg;->aiw()Lcom/kingroot/kinguser/bvm;

    move-result-object v0

    iget v1, p4, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryID:I

    .line 508
    iget v2, p4, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchSize:I

    .line 507
    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bvm;->as(II)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$10;->bPj:Lcom/kingroot/kinguser/bue;

    invoke-interface {v0, p1, p2, p4, p5}, Lcom/kingroot/kinguser/bue;->a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;)V

    goto :goto_0
.end method
