.class Lcom/kingroot/kinguser/btx$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bua;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/btx;->a(JIILcom/kingroot/kinguser/buc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bOa:Lcom/kingroot/kinguser/btx;

.field private final synthetic bOd:Lcom/kingroot/kinguser/buc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/btx;Lcom/kingroot/kinguser/buc;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/btx$2;->bOa:Lcom/kingroot/kinguser/btx;

    iput-object p2, p0, Lcom/kingroot/kinguser/btx$2;->bOd:Lcom/kingroot/kinguser/buc;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordResInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 163
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    if-nez v0, :cond_4

    .line 164
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordResInfo;->hotwords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 165
    :goto_0
    iget-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordResInfo;->hotwords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/btx$2;->bOd:Lcom/kingroot/kinguser/buc;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/btx$2;->bOd:Lcom/kingroot/kinguser/buc;

    invoke-interface {v0, v2, v3, v4}, Lcom/kingroot/kinguser/buc;->a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V

    .line 182
    :cond_1
    :goto_1
    return-void

    .line 166
    :cond_2
    iget-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordResInfo;->hotwords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotwordInfo;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotwordInfo;->hotword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 167
    iget-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordResInfo;->hotwords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotwordInfo;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotwordInfo;->hotword:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/btx$2;->bOd:Lcom/kingroot/kinguser/buc;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/kingroot/kinguser/btx$2;->bOd:Lcom/kingroot/kinguser/buc;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v3, v4}, Lcom/kingroot/kinguser/buc;->a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V

    goto :goto_1
.end method
