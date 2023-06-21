.class Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;->yQ()Z
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
.field final synthetic atx:Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit$1;->atx:Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)Ljava/lang/Object;
    .locals 7
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 45
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    sget-object v2, Lcom/kingroot/kinguser/aas;->XR:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v2, p0, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit$1;->atx:Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;

    invoke-static {v2}, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;->a(Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/kingroot/kinguser/aar;->r(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingroot/kinguser/aas;->XW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit$1;->atx:Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;

    invoke-static {v3}, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;->a(Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v2, p0, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit$1;->atx:Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;

    invoke-static {v2}, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;->a(Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/kingroot/kinguser/bha;->bpv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->Cw()I

    move-result v2

    .line 57
    const-string v3, "chmod 0%o %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    sget-object v2, Lcom/kingroot/kinguser/bha;->bpv:Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :goto_0
    const-string v2, "chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit$1;->atx:Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;

    invoke-static {v4}, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;->a(Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit$1;->atx:Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;

    invoke-static {v2}, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;->a(Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/kingroot/kinguser/aar;->r(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    sget-object v2, Lcom/kingroot/kinguser/aas;->XS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    .line 70
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit$1;->atx:Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;

    invoke-static {v3}, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;->a(Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
