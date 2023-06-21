.class public Lcom/kingroot/kinguser/aeh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(IIIIJLjava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIJ",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Db()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-object v0
.end method

.method private static a(IIIILcom/kingroot/kingmaster/network/updata/CheckResult;)Ljava/util/List;
    .locals 8
    .param p4    # Lcom/kingroot/kingmaster/network/updata/CheckResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/kingroot/kingmaster/network/updata/CheckResult;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 126
    const/4 v0, 0x0

    .line 127
    iget-object v1, p4, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iget-object v0, p4, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    .line 130
    :cond_0
    if-nez v0, :cond_1

    .line 131
    iget-wide v4, p4, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mTaskId:J

    const-string v6, ""

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/kingroot/kinguser/aeh;->a(IIIIJLjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_1
    iget-wide v4, p4, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mTaskId:J

    iget-object v6, v0, Lcom/kingroot/common/network/download/UpdateInfo;->version:Ljava/lang/String;

    iget v7, v0, Lcom/kingroot/common/network/download/UpdateInfo;->buildNum:I

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/kingroot/kinguser/aeh;->a(IIIIJLjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V
    .locals 5
    .param p0    # Lcom/kingroot/kingmaster/network/updata/CheckResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-static {v4, v4, v3, v3, p0}, Lcom/kingroot/kinguser/aeh;->a(IIIILcom/kingroot/kingmaster/network/updata/CheckResult;)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x1883a

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 75
    return-void
.end method

.method public static a(Lcom/kingroot/kingmaster/network/updata/CheckResult;II)V
    .locals 5
    .param p0    # Lcom/kingroot/kingmaster/network/updata/CheckResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 79
    const/4 v0, 0x2

    invoke-static {v0, v4, p1, p2, p0}, Lcom/kingroot/kinguser/aeh;->a(IIIILcom/kingroot/kingmaster/network/updata/CheckResult;)Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x1883a

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 81
    return-void
.end method

.method public static a(Lcom/kingroot/kingmaster/network/updata/CheckResult;III)V
    .locals 5
    .param p0    # Lcom/kingroot/kingmaster/network/updata/CheckResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    const/4 v0, 0x3

    invoke-static {v0, p1, p2, p3, p0}, Lcom/kingroot/kinguser/aeh;->a(IIIILcom/kingroot/kingmaster/network/updata/CheckResult;)Ljava/util/List;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x1883a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 87
    return-void
.end method

.method public static b(Lcom/kingroot/kingmaster/network/updata/CheckResult;I)V
    .locals 5
    .param p0    # Lcom/kingroot/kingmaster/network/updata/CheckResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EO()I

    move-result v0

    .line 92
    const/4 v1, 0x4

    invoke-static {v1, v4, p1, v0, p0}, Lcom/kingroot/kinguser/aeh;->a(IIIILcom/kingroot/kingmaster/network/updata/CheckResult;)Ljava/util/List;

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x1883a

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 94
    return-void
.end method

.method public static c(Lcom/kingroot/kingmaster/network/updata/CheckResult;I)V
    .locals 5
    .param p0    # Lcom/kingroot/kingmaster/network/updata/CheckResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EO()I

    move-result v0

    .line 116
    const/4 v1, 0x5

    const/4 v2, 0x2

    invoke-static {v1, v2, p1, v0, p0}, Lcom/kingroot/kinguser/aeh;->a(IIIILcom/kingroot/kingmaster/network/updata/CheckResult;)Ljava/util/List;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x1883a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 118
    return-void
.end method

.method public static f(JI)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EO()I

    move-result v3

    .line 104
    const/4 v0, 0x5

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ii()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hZ()I

    move-result v7

    move v2, p2

    move-wide v4, p0

    invoke-static/range {v0 .. v7}, Lcom/kingroot/kinguser/aeh;->a(IIIIJLjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v2

    const v3, 0x1883a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 106
    return-void
.end method

.method public static un()I
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    .line 48
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
