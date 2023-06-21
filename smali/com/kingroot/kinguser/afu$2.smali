.class Lcom/kingroot/kinguser/afu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/brd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/afu;->a(Lcom/kingroot/kinguser/afu$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ajn:Lcom/kingroot/kinguser/afu$a;

.field final synthetic ajo:Lcom/kingroot/kinguser/afu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/afu;Lcom/kingroot/kinguser/afu$a;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/kingroot/kinguser/afu$2;->ajo:Lcom/kingroot/kinguser/afu;

    iput-object p2, p0, Lcom/kingroot/kinguser/afu$2;->ajn:Lcom/kingroot/kinguser/afu$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/brc;)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/afu$2;->ajo:Lcom/kingroot/kinguser/afu;

    check-cast p1, Lcom/kingroot/kinguser/brk;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/brk;->ahD()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/afu;->a(Lcom/kingroot/kinguser/afu;Ljava/util/List;)Ljava/util/List;

    .line 184
    iget-object v0, p0, Lcom/kingroot/kinguser/afu$2;->ajo:Lcom/kingroot/kinguser/afu;

    invoke-static {v0}, Lcom/kingroot/kinguser/afu;->b(Lcom/kingroot/kinguser/afu;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/kingroot/kinguser/afu$2;->ajo:Lcom/kingroot/kinguser/afu;

    invoke-static {v0}, Lcom/kingroot/kinguser/afu;->c(Lcom/kingroot/kinguser/afu;)Lcom/tencent/qqpim/discovery/AdDisplayModel;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_1

    .line 187
    iget-object v1, p0, Lcom/kingroot/kinguser/afu$2;->ajn:Lcom/kingroot/kinguser/afu$a;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/kingroot/kinguser/afu$2;->ajn:Lcom/kingroot/kinguser/afu$a;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/afu$a;->a(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/afu$2;->ajn:Lcom/kingroot/kinguser/afu$a;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/afu$2;->ajn:Lcom/kingroot/kinguser/afu$a;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/afu$a;->cT(I)V

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/brc;I)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/kingroot/kinguser/afu$2;->ajn:Lcom/kingroot/kinguser/afu$a;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/kingroot/kinguser/afu$2;->ajn:Lcom/kingroot/kinguser/afu$a;

    invoke-interface {v0, p2}, Lcom/kingroot/kinguser/afu$a;->cT(I)V

    .line 216
    :cond_0
    return-void
.end method

.method public c(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V
    .locals 3

    .prologue
    .line 198
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/aea;->g(III)V

    .line 199
    return-void
.end method

.method public d(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V
    .locals 0

    .prologue
    .line 209
    return-void
.end method
