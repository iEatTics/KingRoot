.class public final Lcom/kingroot/kinguser/atu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static OH()Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OH()Ljava/util/List;

    move-result-object v0

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {v2}, Lcom/kingroot/kinguser/atu;->bi(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    return-object v1
.end method

.method private static bi(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    :goto_0
    return-object v0

    .line 59
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 66
    new-instance v3, Lcom/kingroot/kinguser/ats;

    invoke-direct {v3}, Lcom/kingroot/kinguser/ats;-><init>()V

    .line 67
    iput-object v0, v3, Lcom/kingroot/kinguser/ats;->adZ:Ljava/lang/String;

    .line 68
    invoke-static {v0}, Lcom/kingroot/kinguser/atu;->jf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/ats;->mAppName:Ljava/lang/String;

    .line 69
    invoke-static {v0}, Lcom/kingroot/kinguser/atu;->je(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/ats;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/kingroot/kinguser/ats;->aQc:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/kingroot/kinguser/ats;->aQd:Lcom/android/animation/AnimatorSet;

    .line 72
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 75
    goto :goto_0
.end method

.method public static je(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 86
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 91
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static jf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 102
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 107
    const-string v0, ""

    goto :goto_0
.end method

.method private static jg(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/atx;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/atx;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/atx;->jh(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-static {p1}, Lcom/kingroot/kinguser/bgs;->lq(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 126
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 127
    const/high16 v0, 0x10200000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 142
    .line 143
    invoke-static {p1}, Lcom/kingroot/kinguser/bgs;->lq(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    invoke-static {p1}, Lcom/kingroot/kinguser/atu;->jg(Ljava/lang/String;)V

    .line 174
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/atu;->t(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer;->Os()V

    .line 177
    return-void
.end method
