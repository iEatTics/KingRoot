.class Lcom/kingroot/kinguser/btx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/btx;->a(Ljava/lang/String;IIILcom/kingroot/kinguser/buc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bOa:Lcom/kingroot/kinguser/btx;

.field private final synthetic bOb:Lcom/kingroot/kinguser/buc;

.field private final synthetic bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/btx;Lcom/kingroot/kinguser/buc;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/btx$1;->bOa:Lcom/kingroot/kinguser/btx;

    iput-object p2, p0, Lcom/kingroot/kinguser/btx$1;->bOb:Lcom/kingroot/kinguser/buc;

    iput-object p3, p0, Lcom/kingroot/kinguser/btx$1;->bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;Lcom/kingroot/kinguser/buy;)V
    .locals 4

    .prologue
    .line 127
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-virtual {p2}, Lcom/kingroot/kinguser/buy;->air()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-static {v0}, Lcom/kingroot/kinguser/buo;->B(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/kingroot/kinguser/btx$1;->bOb:Lcom/kingroot/kinguser/buc;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingroot/kinguser/btx$1;->bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    invoke-interface {v1, v2, v0, v3}, Lcom/kingroot/kinguser/buc;->a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/btx$1;->bOb:Lcom/kingroot/kinguser/buc;

    const/4 v1, 0x2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/kingroot/kinguser/btx$1;->bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/buc;->a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V

    goto :goto_0
.end method
