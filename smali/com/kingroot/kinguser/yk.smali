.class public abstract Lcom/kingroot/kinguser/yk;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/yq;


# instance fields
.field protected Vc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ym;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/yk;->Vc:Ljava/util/List;

    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/yk;->Vc:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/yk;->L(Ljava/util/List;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected abstract L(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ym;",
            ">;)V"
        }
    .end annotation
.end method

.method protected oF()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->oF()V

    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/yk;->Vc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ym;

    .line 28
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ym;->oF()V

    .line 29
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/ym;->a(Lcom/kingroot/kinguser/yq;)V

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method
