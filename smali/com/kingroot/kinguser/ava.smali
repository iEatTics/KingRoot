.class public final Lcom/kingroot/kinguser/ava;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aeI:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 61
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/ava$1;

    invoke-direct {v4}, Lcom/kingroot/kinguser/ava$1;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/ava;->aeI:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method public static Rg()V
    .locals 7

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 48
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BX()J

    move-result-wide v0

    .line 49
    invoke-static {}, Lcom/kingroot/kinguser/aiz;->yN()J

    move-result-wide v4

    .line 50
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/kingroot/kinguser/vb;->R(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 51
    invoke-static {}, Lcom/kingroot/kinguser/aiz;->yO()J

    move-result-wide v4

    .line 54
    :cond_0
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/ava;->aeI:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method public static Rh()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 76
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v4

    .line 82
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :try_start_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    .line 97
    :goto_2
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 99
    new-instance v8, Lcom/kingroot/kinguser/df;

    invoke-direct {v8}, Lcom/kingroot/kinguser/df;-><init>()V

    .line 100
    invoke-static {v7}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/kingroot/kinguser/df;->H(Ljava/lang/String;)V

    .line 101
    iget-object v9, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v9}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/kingroot/kinguser/df;->J(Ljava/lang/String;)V

    .line 102
    iget-object v9, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/kingroot/kinguser/df;->I(Ljava/lang/String;)V

    .line 103
    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/kingroot/kinguser/df;->setName(Ljava/lang/String;)V

    .line 104
    iget v9, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9}, Lcom/kingroot/kinguser/df;->f(I)V

    .line 105
    invoke-static {v7}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/kingroot/kinguser/df;->L(Ljava/lang/String;)V

    .line 106
    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v8, v1}, Lcom/kingroot/kinguser/df;->p(I)V

    .line 107
    invoke-static {v0}, Lcom/kingroot/kinguser/ava;->g(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v8, v0}, Lcom/kingroot/kinguser/df;->w(I)V

    .line 110
    new-instance v0, Lcom/kingroot/kinguser/dg;

    invoke-direct {v0, v8}, Lcom/kingroot/kinguser/dg;-><init>(Lcom/kingroot/kinguser/df;)V

    .line 111
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    move v1, v3

    .line 92
    goto :goto_2

    :cond_3
    move v1, v3

    .line 106
    goto :goto_3

    .line 116
    :cond_4
    :try_start_2
    new-instance v0, Lcom/kingroot/kinguser/cw;

    invoke-direct {v0, v5}, Lcom/kingroot/kinguser/cw;-><init>(Ljava/util/ArrayList;)V

    .line 119
    invoke-static {v4, v0}, Lcom/kingroot/kinguser/vc;->a(Landroid/content/Context;Lcom/kingroot/kinguser/cw;)I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->aI(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 122
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private static g(Landroid/content/pm/PackageInfo;)J
    .locals 4

    .prologue
    .line 163
    const-wide/16 v0, 0x0

    .line 165
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 171
    :goto_0
    return-wide v0

    .line 167
    :catch_0
    move-exception v2

    goto :goto_0
.end method
