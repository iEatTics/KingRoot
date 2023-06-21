.class public Lcom/kingroot/kinguser/asu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static iO(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x187c3

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/ady;->a(ILjava/util/List;)V

    .line 51
    return-void
.end method

.method public static iP(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x187c0

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/ady;->a(ILjava/util/List;)V

    .line 61
    return-void
.end method
