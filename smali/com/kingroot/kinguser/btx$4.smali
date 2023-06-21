.class Lcom/kingroot/kinguser/btx$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/buf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/btx;->a(ILcom/kingroot/kinguser/buc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/buf",
        "<",
        "Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;",
        "Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bOa:Lcom/kingroot/kinguser/btx;

.field private final synthetic bOb:Lcom/kingroot/kinguser/buc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/btx;Lcom/kingroot/kinguser/buc;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/btx$4;->bOa:Lcom/kingroot/kinguser/btx;

    iput-object p2, p0, Lcom/kingroot/kinguser/btx$4;->bOb:Lcom/kingroot/kinguser/buc;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 309
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/kingroot/kinguser/btx$4;->bOb:Lcom/kingroot/kinguser/buc;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2, v3}, Lcom/kingroot/kinguser/buc;->a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/btx$4;->bOb:Lcom/kingroot/kinguser/buc;

    const/4 v1, 0x2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/buc;->a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/btx$4;->a(Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method
