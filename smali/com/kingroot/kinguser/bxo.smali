.class public Lcom/kingroot/kinguser/bxo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ajH()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 38
    :try_start_0
    const-string v2, "PATH"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 42
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 43
    new-instance v6, Ljava/io/File;

    const-string v7, "su"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    :cond_0
    :goto_1
    return v0

    .line 42
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/bin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/xbin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    :goto_2
    move v0, v1

    .line 65
    goto :goto_1

    .line 60
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static ajI()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-static {}, Lcom/kingroot/kinguser/bxv;->qJ()Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/kingroot/kinguser/bxr;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 99
    :goto_0
    return v0

    .line 77
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    new-instance v1, Lcom/kingroot/kinguser/bxq;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bxq;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {}, Lcom/kingroot/kinguser/bxx;->ajL()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bxv$a;

    .line 87
    if-eqz v0, :cond_2

    .line 89
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/bxn;

    .line 90
    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/bxn;->a(Lcom/kingroot/kinguser/bxv$a;)V

    goto :goto_1

    .line 95
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bxn;

    .line 96
    invoke-interface {v0}, Lcom/kingroot/kinguser/bxn;->ajG()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    .line 99
    goto :goto_0
.end method
