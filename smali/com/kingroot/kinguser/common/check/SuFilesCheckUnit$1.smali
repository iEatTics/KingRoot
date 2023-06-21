.class Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->yQ()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/zk$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic auf:Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$1;->auf:Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 274
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    .line 275
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    invoke-static {v0}, Lcom/kingroot/kinguser/aio;->d(Lcom/kingroot/kinguser/abc;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    sget-object v2, Lcom/kingroot/kinguser/aas;->XR:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_0
    sget-object v2, Lcom/kingroot/kinguser/aas;->XT:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-static {}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/kingroot/kinguser/aar;->r(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/kingroot/kinguser/aar;->r(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-static {}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->pC()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/kingroot/kinguser/aar;->r(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->pC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    .line 291
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
