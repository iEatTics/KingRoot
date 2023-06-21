.class public Lcom/kingroot/kinguser/bip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/tps/client/kr/ISharkForXMod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public syncReport(ILjava/lang/String;Ljava/lang/String;ILjava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tps/client/kr/XModFeature;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-static {p5}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tps/client/kr/XModFeature;

    .line 25
    new-instance v3, Lcom/kingroot/kinguser/b;

    invoke-direct {v3}, Lcom/kingroot/kinguser/b;-><init>()V

    .line 26
    iget v4, v0, Lcom/tencent/tps/client/kr/XModFeature;->featureId:I

    iput v4, v3, Lcom/kingroot/kinguser/b;->featureId:I

    .line 27
    iget v4, v0, Lcom/tencent/tps/client/kr/XModFeature;->timestamp:I

    iput v4, v3, Lcom/kingroot/kinguser/b;->timestamp:I

    .line 28
    iget v4, v0, Lcom/tencent/tps/client/kr/XModFeature;->count:I

    iput v4, v3, Lcom/kingroot/kinguser/b;->count:I

    .line 29
    iget-object v4, v0, Lcom/tencent/tps/client/kr/XModFeature;->intValues:Ljava/util/ArrayList;

    iput-object v4, v3, Lcom/kingroot/kinguser/b;->intValues:Ljava/util/ArrayList;

    .line 30
    iget-object v0, v0, Lcom/tencent/tps/client/kr/XModFeature;->strValues:Ljava/util/ArrayList;

    iput-object v0, v3, Lcom/kingroot/kinguser/b;->strValues:Ljava/util/ArrayList;

    .line 31
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/c;

    invoke-direct {v0}, Lcom/kingroot/kinguser/c;-><init>()V

    .line 34
    iput p4, v0, Lcom/kingroot/kinguser/c;->dR:I

    .line 35
    iput-object p3, v0, Lcom/kingroot/kinguser/c;->lc:Ljava/lang/String;

    .line 36
    iput-object p2, v0, Lcom/kingroot/kinguser/c;->dT:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/kingroot/kinguser/c;->version:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/kingroot/kinguser/awn;->Ta()Lcom/kingroot/kinguser/awn;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/kingroot/kinguser/awn;->b(Ljava/util/List;Lcom/kingroot/kinguser/c;)Z

    move-result v0

    return v0
.end method
