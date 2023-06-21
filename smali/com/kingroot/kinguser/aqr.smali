.class public Lcom/kingroot/kinguser/aqr;
.super Lcom/kingroot/kinguser/aqs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aqr$a;
    }
.end annotation


# instance fields
.field private final aLo:Lcom/kingroot/kinguser/aqr$a;

.field aLp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqs;",
            ">;"
        }
    .end annotation
.end field

.field private aLq:J

.field private final aLr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqy",
            "<+",
            "Lcom/kingroot/kinguser/arl;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/kingroot/kinguser/aqr$a;)V
    .locals 8
    .param p2    # Lcom/kingroot/kinguser/aqr$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqs;",
            ">;",
            "Lcom/kingroot/kinguser/aqr$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqs;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqr;->aLp:Ljava/util/List;

    .line 28
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/kingroot/kinguser/aqr;->aLq:J

    .line 36
    iput-object p2, p0, Lcom/kingroot/kinguser/aqr;->aLo:Lcom/kingroot/kinguser/aqr$a;

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/aqr;->aLp:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqr;->aLr:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lcom/kingroot/kinguser/aqr;->aLp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 41
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->MV()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/aqy;

    .line 42
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aqr;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/kingroot/kinguser/aqy;->im(Ljava/lang/String;)V

    .line 43
    instance-of v5, v1, Lcom/kingroot/kinguser/are;

    if-eqz v5, :cond_0

    .line 44
    check-cast v1, Lcom/kingroot/kinguser/are;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/are;->Nk()I

    move-result v2

    goto :goto_1

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/aqr;->aLr:Ljava/util/List;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->MV()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v1, v2

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/aqr;->aLr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqy;

    .line 51
    instance-of v3, v0, Lcom/kingroot/kinguser/are;

    if-eqz v3, :cond_3

    .line 52
    iget-wide v4, p0, Lcom/kingroot/kinguser/aqr;->aLq:J

    int-to-long v6, v1

    mul-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/kingroot/kinguser/aqy;->bV(J)V

    goto :goto_2

    .line 54
    :cond_3
    iget-wide v4, p0, Lcom/kingroot/kinguser/aqr;->aLq:J

    invoke-virtual {v0, v4, v5}, Lcom/kingroot/kinguser/aqy;->bV(J)V

    goto :goto_2

    .line 57
    :cond_4
    return-void
.end method


# virtual methods
.method public LY()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/aqr;->aLp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 128
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->LY()V

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public ME()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 72
    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/aqr;->aLp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 74
    iget v0, v0, Lcom/kingroot/kinguser/aqs;->aLy:I

    add-int/2addr v0, v1

    move v1, v0

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v3, 0x7f090002

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v1, v4}, Lcom/kingroot/kinguser/zi;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MF()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 81
    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/aqr;->aLp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 83
    iget v0, v0, Lcom/kingroot/kinguser/aqs;->aLx:I

    add-int/2addr v0, v1

    move v1, v0

    .line 84
    goto :goto_0

    .line 86
    :cond_0
    const-class v0, Lcom/kingroot/kinguser/aro;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/arq;->a(Ljava/lang/Class;Z)Lcom/kingroot/kinguser/aqb;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/kingroot/kinguser/aro;

    if-eqz v3, :cond_1

    .line 88
    invoke-interface {v0}, Lcom/kingroot/kinguser/aqb;->My()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v3, 0x7f0700f0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    .line 89
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_1
    return-object v0

    .line 95
    :cond_1
    if-nez v1, :cond_2

    .line 96
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700f3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 98
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v3, 0x7f0700f2

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public declared-synchronized MJ()Z
    .locals 4

    .prologue
    .line 114
    monitor-enter p0

    const/4 v1, 0x1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aqr;->aLp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 116
    iget-object v3, p0, Lcom/kingroot/kinguser/aqr;->aLo:Lcom/kingroot/kinguser/aqr$a;

    invoke-interface {v3, v0}, Lcom/kingroot/kinguser/aqr$a;->e(Lcom/kingroot/kinguser/aqs;)V

    .line 117
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->MJ()Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    const/4 v1, 0x0

    .line 120
    :cond_0
    iget-object v3, p0, Lcom/kingroot/kinguser/aqr;->aLo:Lcom/kingroot/kinguser/aqr$a;

    invoke-interface {v3, v0}, Lcom/kingroot/kinguser/aqr$a;->f(Lcom/kingroot/kinguser/aqs;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 122
    :cond_1
    monitor-exit p0

    return v1
.end method

.method public MR()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/aqr;->aLp:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public MS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700e6

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MT()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700ea

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MU()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700ee

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MV()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqy",
            "<+",
            "Lcom/kingroot/kinguser/arl;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/aqr;->aLr:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public MW()I
    .locals 3

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lcom/kingroot/kinguser/aqr;->aLp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 164
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->MW()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 165
    goto :goto_0

    .line 166
    :cond_0
    return v1
.end method

.method protected MX()I
    .locals 3

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lcom/kingroot/kinguser/aqr;->aLp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 173
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->MX()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 174
    goto :goto_0

    .line 175
    :cond_0
    return v1
.end method

.method public declared-synchronized My()Z
    .locals 3

    .prologue
    .line 134
    monitor-enter p0

    const/4 v1, 0x1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aqr;->aLp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 136
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->My()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 137
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 139
    goto :goto_0

    .line 140
    :cond_0
    monitor-exit p0

    return v1

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a(Lcom/kingroot/kinguser/aqs$a;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/kingroot/kinguser/aqr;->aLp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 151
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/aqs;->a(Lcom/kingroot/kinguser/aqs$a;)V

    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0201cb

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
