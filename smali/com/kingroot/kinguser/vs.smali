.class public abstract Lcom/kingroot/kinguser/vs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/common/network/statics/ActionStatsID;
.implements Lcom/kingroot/kinguser/vr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/kingroot/common/network/statics/ActionStatsID;",
        "Lcom/kingroot/kinguser/vr",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected Lh:Lcom/kingroot/kinguser/vo$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/vo$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vs;->lR()Lcom/kingroot/kinguser/vo;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/kingroot/kinguser/vo;->lO()Lcom/kingroot/kinguser/vo$a;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/vs;->Lh:Lcom/kingroot/kinguser/vo$a;

    .line 31
    :cond_0
    return-void
.end method

.method private E(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ia()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 118
    return-object v0
.end method

.method private lS()Z
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vs;->lP()Lcom/kingroot/kinguser/vr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/vs;->Lh:Lcom/kingroot/kinguser/vo$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected D(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/vs;->Lh:Lcom/kingroot/kinguser/vo$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/vs;->Lh:Lcom/kingroot/kinguser/vo$a;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/vs;->lQ()Lcom/kingroot/kinguser/c;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/vo$a;->a(Ljava/util/List;Lcom/kingroot/kinguser/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/kingroot/kinguser/vs;->lS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0, p3}, Lcom/kingroot/kinguser/vs;->E(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 252
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vs;->lP()Lcom/kingroot/kinguser/vr;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0, p4}, Lcom/kingroot/kinguser/vr;->a(IILjava/util/List;Z)V

    .line 254
    :cond_0
    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/kingroot/kinguser/vs;->lS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/vs;->E(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vs;->lP()Lcom/kingroot/kinguser/vr;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/kingroot/kinguser/vr;->a(ILjava/util/List;)V

    .line 105
    :cond_0
    return-void
.end method

.method public bi(I)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/kingroot/kinguser/vs;->lS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vs;->lP()Lcom/kingroot/kinguser/vr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/vr;->bi(I)V

    .line 80
    :cond_0
    return-void
.end method

.method public lB()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/kingroot/kinguser/vs;->lS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vs;->lP()Lcom/kingroot/kinguser/vr;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/vr;->lB()Ljava/util/List;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public lC()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/kingroot/kinguser/vs;->lS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vs;->lP()Lcom/kingroot/kinguser/vr;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/vr;->lC()Ljava/util/List;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public lD()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/kingroot/kinguser/vs;->lS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vs;->lP()Lcom/kingroot/kinguser/vr;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/vr;->lD()V

    .line 158
    :cond_0
    return-void
.end method

.method public lE()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/kingroot/kinguser/vs;->lS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vs;->lP()Lcom/kingroot/kinguser/vr;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/vr;->lE()V

    .line 165
    :cond_0
    return-void
.end method

.method public lF()V
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/kingroot/kinguser/vs;->lS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vs;->lP()Lcom/kingroot/kinguser/vr;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/vr;->lF()V

    .line 284
    :cond_0
    return-void
.end method

.method public lG()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/kingroot/kinguser/vs;->lS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vs;->lP()Lcom/kingroot/kinguser/vr;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/vr;->lG()Ljava/util/List;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public lH()V
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/kingroot/kinguser/vs;->lS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vs;->lP()Lcom/kingroot/kinguser/vr;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/vr;->lH()V

    .line 216
    :cond_0
    return-void
.end method

.method public lI()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/kingroot/kinguser/vs;->lS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vs;->lP()Lcom/kingroot/kinguser/vr;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/vr;->lI()Ljava/util/List;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public lJ()V
    .locals 1

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/kingroot/kinguser/vs;->lS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vs;->lP()Lcom/kingroot/kinguser/vr;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/vr;->lJ()V

    .line 261
    :cond_0
    return-void
.end method

.method public lK()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/kingroot/kinguser/vs;->lS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vs;->lP()Lcom/kingroot/kinguser/vr;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/vr;->lK()Ljava/util/List;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract lP()Lcom/kingroot/kinguser/vr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kingroot/kinguser/vr",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract lQ()Lcom/kingroot/kinguser/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected lR()Lcom/kingroot/kinguser/vo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kingroot/kinguser/vo",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->if()Lcom/kingroot/kinguser/vo;

    move-result-object v0

    return-object v0
.end method

.method public w(II)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/kingroot/kinguser/vs;->lS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vs;->lP()Lcom/kingroot/kinguser/vr;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/vr;->w(II)V

    .line 97
    :cond_0
    return-void
.end method
