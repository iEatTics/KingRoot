.class Lcom/kingroot/kinguser/awc$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awc;->SE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aUL:Lcom/kingroot/kinguser/awc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awc;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/kingroot/kinguser/awc$2;->aUL:Lcom/kingroot/kinguser/awc;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 222
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 223
    iget-object v0, p0, Lcom/kingroot/kinguser/awc$2;->aUL:Lcom/kingroot/kinguser/awc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Lcom/kingroot/kinguser/awc;->v(IZ)Ljava/util/List;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/kingroot/kinguser/awc$2;->aUL:Lcom/kingroot/kinguser/awc;

    invoke-virtual {v1, v4, v4}, Lcom/kingroot/kinguser/awc;->v(IZ)Ljava/util/List;

    move-result-object v1

    .line 225
    iget-object v2, p0, Lcom/kingroot/kinguser/awc$2;->aUL:Lcom/kingroot/kinguser/awc;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Lcom/kingroot/kinguser/awc;->v(IZ)Ljava/util/List;

    move-result-object v2

    .line 230
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 231
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 232
    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 233
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 235
    invoke-static {}, Lcom/kingroot/kinguser/awb;->Sy()Lcom/kingroot/kinguser/awb;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/awb;->f(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 236
    invoke-static {}, Lcom/kingroot/kinguser/awb;->Sy()Lcom/kingroot/kinguser/awb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/awb;->banRiskAppsAutoStart(Ljava/util/Set;)V

    .line 237
    invoke-static {}, Lcom/kingroot/kinguser/awb;->Sy()Lcom/kingroot/kinguser/awb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/awb;->banRiskAppsRoot(Ljava/util/Set;)V

    .line 238
    invoke-static {}, Lcom/kingroot/kinguser/awb;->Sy()Lcom/kingroot/kinguser/awb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/awb;->e(Ljava/util/Set;)V

    .line 239
    return-void
.end method
