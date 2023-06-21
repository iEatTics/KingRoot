.class public abstract Lcom/kingroot/kinguser/vn;
.super Lcom/kingroot/kinguser/vm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/vm",
        "<",
        "Lcom/kingroot/kinguser/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kingroot/kinguser/vm;-><init>()V

    return-void
.end method

.method private C(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/sx;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/sx;

    .line 99
    new-instance v3, Lcom/kingroot/kinguser/b;

    invoke-direct {v3}, Lcom/kingroot/kinguser/b;-><init>()V

    .line 100
    iget v4, v0, Lcom/kingroot/kinguser/sx;->GM:I

    iput v4, v3, Lcom/kingroot/kinguser/b;->featureId:I

    .line 101
    iget-object v4, v0, Lcom/kingroot/kinguser/sx;->Bk:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/kingroot/kinguser/b;->count:I

    .line 102
    iget-wide v4, v0, Lcom/kingroot/kinguser/sx;->mTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/kingroot/kinguser/b;->timestamp:I

    .line 103
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/kingroot/kinguser/b;->strValues:Ljava/util/ArrayList;

    .line 104
    iget-object v0, v0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/vn;->getProductId()I

    move-result v4

    invoke-virtual {p0}, Lcom/kingroot/kinguser/vn;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/kingroot/kinguser/sw;->a([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v4, v3, Lcom/kingroot/kinguser/b;->strValues:Ljava/util/ArrayList;

    invoke-static {v4, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 106
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected A(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/vp;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/vp;

    .line 30
    if-eqz v0, :cond_0

    .line 33
    iget v3, v0, Lcom/kingroot/kinguser/vp;->Lf:I

    if-gtz v3, :cond_1

    iget-object v3, v0, Lcom/kingroot/kinguser/vp;->desc:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 34
    :cond_1
    new-instance v3, Lcom/kingroot/kinguser/b;

    invoke-direct {v3}, Lcom/kingroot/kinguser/b;-><init>()V

    .line 35
    iget v4, v0, Lcom/kingroot/kinguser/vp;->gN:I

    iput v4, v3, Lcom/kingroot/kinguser/b;->featureId:I

    .line 38
    iget-object v4, v0, Lcom/kingroot/kinguser/vp;->desc:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 40
    :try_start_0
    iget-object v4, v0, Lcom/kingroot/kinguser/vp;->desc:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/kingroot/kinguser/b;->count:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_1
    iget-wide v4, v0, Lcom/kingroot/kinguser/vp;->Lg:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/kingroot/kinguser/b;->timestamp:I

    .line 48
    iget v4, v0, Lcom/kingroot/kinguser/vp;->errorCode:I

    if-eqz v4, :cond_2

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/kingroot/kinguser/b;->intValues:Ljava/util/ArrayList;

    .line 50
    iget-object v4, v3, Lcom/kingroot/kinguser/b;->intValues:Ljava/util/ArrayList;

    iget v0, v0, Lcom/kingroot/kinguser/vp;->errorCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_3
    iget v4, v0, Lcom/kingroot/kinguser/vp;->Lf:I

    iput v4, v3, Lcom/kingroot/kinguser/b;->count:I

    goto :goto_1

    .line 56
    :cond_4
    return-object v1

    .line 41
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method protected synthetic a(ILjava/util/ArrayList;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/vn;->b(ILjava/util/ArrayList;)Lcom/kingroot/kinguser/b;

    move-result-object v0

    return-object v0
.end method

.method protected b(ILjava/util/ArrayList;)Lcom/kingroot/kinguser/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/kingroot/kinguser/b;"
        }
    .end annotation

    .prologue
    .line 68
    if-nez p2, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    .line 71
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/b;

    invoke-direct {v0}, Lcom/kingroot/kinguser/b;-><init>()V

    .line 72
    iput p1, v0, Lcom/kingroot/kinguser/b;->featureId:I

    .line 73
    iput-object p2, v0, Lcom/kingroot/kinguser/b;->intValues:Ljava/util/ArrayList;

    .line 74
    const/4 v1, 0x1

    iput v1, v0, Lcom/kingroot/kinguser/b;->count:I

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/kingroot/kinguser/b;->timestamp:I

    goto :goto_0
.end method

.method protected bq(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vn;->lx()Lcom/kingroot/kinguser/su;

    move-result-object v0

    .line 62
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/su;->aS(I)Ljava/util/List;

    move-result-object v0

    .line 63
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/vn;->C(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic u(ILjava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/vn;->v(ILjava/lang/String;)Lcom/kingroot/kinguser/b;

    move-result-object v0

    return-object v0
.end method

.method protected v(ILjava/lang/String;)Lcom/kingroot/kinguser/b;
    .locals 6

    .prologue
    .line 82
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/b;

    invoke-direct {v0}, Lcom/kingroot/kinguser/b;-><init>()V

    .line 86
    iput p1, v0, Lcom/kingroot/kinguser/b;->featureId:I

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/kingroot/kinguser/b;->strValues:Ljava/util/ArrayList;

    .line 88
    const-string v1, "\\|"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 89
    iget-object v2, v0, Lcom/kingroot/kinguser/b;->strValues:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 90
    const/4 v1, 0x1

    iput v1, v0, Lcom/kingroot/kinguser/b;->count:I

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/kingroot/kinguser/b;->timestamp:I

    goto :goto_0
.end method
