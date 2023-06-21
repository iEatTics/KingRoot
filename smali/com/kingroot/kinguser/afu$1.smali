.class Lcom/kingroot/kinguser/afu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/brd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/afu;->a(ZLcom/kingroot/kinguser/afu$a;)V
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
    .line 95
    iput-object p1, p0, Lcom/kingroot/kinguser/afu$1;->ajo:Lcom/kingroot/kinguser/afu;

    iput-object p2, p0, Lcom/kingroot/kinguser/afu$1;->ajn:Lcom/kingroot/kinguser/afu$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/brc;)V
    .locals 5

    .prologue
    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    check-cast p1, Lcom/kingroot/kinguser/brk;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/brk;->ahD()Ljava/util/List;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 105
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/discovery/AdDisplayModel;

    .line 107
    if-eqz v0, :cond_0

    .line 111
    iget-object v0, v0, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJv:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 119
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/apv;->ia(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 120
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/afu$1;->ajo:Lcom/kingroot/kinguser/afu;

    invoke-static {v0}, Lcom/kingroot/kinguser/afu;->a(Lcom/kingroot/kinguser/afu;)Lcom/kingroot/kinguser/afv;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/afv;->ad(Ljava/util/List;)V

    .line 128
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bJ(J)V

    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/afu$1;->ajn:Lcom/kingroot/kinguser/afu$a;

    if-eqz v0, :cond_5

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/afu$1;->ajn:Lcom/kingroot/kinguser/afu$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/afu$a;->a(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V

    .line 133
    :cond_5
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/brc;I)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/afu$1;->ajn:Lcom/kingroot/kinguser/afu$a;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/afu$1;->ajn:Lcom/kingroot/kinguser/afu$a;

    invoke-interface {v0, p2}, Lcom/kingroot/kinguser/afu$a;->cT(I)V

    .line 156
    :cond_0
    return-void
.end method

.method public c(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/aea;->g(III)V

    .line 138
    return-void
.end method

.method public d(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method
