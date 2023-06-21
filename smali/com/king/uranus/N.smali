.class public Lcom/king/uranus/N;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/king/uranus/N$a;,
        Lcom/king/uranus/N$b;,
        Lcom/king/uranus/N$c;
    }
.end annotation


# direct methods
.method public static declared-synchronized a(Lcom/king/uranus/k;)V
    .locals 2

    .prologue
    .line 56
    const-class v1, Lcom/king/uranus/N;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/king/uranus/N;->bj()Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {v0}, Lcom/king/uranus/N;->j(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v1

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/j;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/j;

    .line 86
    const-string v2, ""

    .line 88
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v0, Lcom/king/uranus/j;->aG:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/king/uranus/h;

    iget v1, v1, Lcom/king/uranus/h;->ax:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v0, Lcom/king/uranus/j;->aG:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/king/uranus/h;

    iget v1, v1, Lcom/king/uranus/h;->av:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 92
    :goto_1
    if-eqz p1, :cond_1

    const-string v1, "success"

    .line 93
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload { "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " } tipsId [ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/king/uranus/j;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ] res : [ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Lcom/king/uranus/j;->ax:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ] phase : [ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/king/uranus/j;->aH:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ] cmdres : [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 92
    :cond_1
    const-string v1, "failed"

    goto :goto_2

    .line 102
    :cond_2
    return-void

    .line 89
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static b(Lcom/king/uranus/k;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 159
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/king/uranus/k;->aL:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 175
    :cond_0
    return v1

    .line 164
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    .line 165
    iget-object v0, p0, Lcom/king/uranus/k;->aL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 166
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 167
    iget-object v0, p0, Lcom/king/uranus/k;->aL:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/j;

    .line 168
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/king/uranus/j;->aJ:I

    sub-int v0, v3, v0

    const v4, 0x93a80

    if-le v0, v4, :cond_3

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/king/uranus/k;->aL:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    .line 166
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 171
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static bh()Lcom/kingroot/kinguser/ln;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/kingroot/kinguser/ln;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ln;

    return-object v0
.end method

.method public static declared-synchronized bi()V
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/king/uranus/N;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/king/uranus/N;->bj()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/king/uranus/N;->j(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v1

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static bj()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/king/uranus/N;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uranus_clres.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    :try_start_0
    invoke-static {}, Lcom/king/uranus/N;->bh()Lcom/kingroot/kinguser/ln;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/ln;->bd(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    check-cast v0, Ljava/util/List;

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/N$c;

    .line 149
    invoke-virtual {v0}, Lcom/king/uranus/N$c;->bm()Lcom/king/uranus/k;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 155
    :cond_0
    return-object v1
.end method

.method private static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static j(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/k;

    .line 66
    invoke-static {v0}, Lcom/king/uranus/N;->b(Lcom/king/uranus/k;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    invoke-static {}, Lcom/kingroot/kinguser/ih;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/kingroot/kinguser/nd;->eY()Lcom/kingroot/kinguser/nd;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/kingroot/kinguser/jc;->a(Landroid/content/Context;Lcom/king/uranus/k;Lcom/kingroot/kinguser/jb;)I

    move-result v3

    .line 72
    if-eqz v3, :cond_1

    .line 73
    iget-object v3, v0, Lcom/king/uranus/k;->aL:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/king/uranus/N;->a(Ljava/util/List;Z)V

    .line 74
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, v0, Lcom/king/uranus/k;->aL:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/king/uranus/N;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {v1}, Lcom/king/uranus/N;->k(Ljava/util/List;)V

    .line 81
    return-void
.end method

.method private static k(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/king/uranus/N;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uranus_clres.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    const/4 v1, 0x0

    .line 111
    if-eqz p0, :cond_0

    .line 112
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/k;

    .line 113
    invoke-static {v0}, Lcom/king/uranus/N$c;->c(Lcom/king/uranus/k;)Lcom/king/uranus/N$c;

    move-result-object v4

    .line 114
    if-eqz v4, :cond_4

    .line 115
    if-nez v1, :cond_3

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v1, v0

    .line 121
    goto :goto_0

    .line 126
    :cond_0
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_2

    .line 127
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 135
    :goto_3
    return-void

    .line 130
    :cond_2
    invoke-static {}, Lcom/king/uranus/N;->bh()Lcom/kingroot/kinguser/ln;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/kingroot/kinguser/ln;->c(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 132
    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
