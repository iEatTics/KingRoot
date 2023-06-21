.class public abstract Lcom/kingroot/kinguser/vm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/vr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/vm$a;,
        Lcom/kingroot/kinguser/vm$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/vr",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private Lb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/vm;->Lb:Ljava/util/Set;

    .line 82
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/vm;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method private bn(I)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 995
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/vm;->bp(I)Ljava/util/List;

    move-result-object v3

    .line 996
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 997
    const/16 v0, 0x64

    if-ge v4, v0, :cond_0

    .line 1026
    :goto_0
    return-void

    .line 1004
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/vm;->bm(I)V

    .line 1010
    const/16 v0, 0x14

    move v2, v1

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    .line 1012
    :try_start_0
    const-string v0, "%d_%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1013
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1014
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1015
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->ly()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1010
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 1021
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->ly()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v4, -0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1022
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1017
    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected abstract A(Ljava/util/List;)Ljava/util/List;
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
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract B(Ljava/util/List;)Z
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation
.end method

.method protected abstract a(ILjava/util/ArrayList;)Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)TT;"
        }
    .end annotation
.end method

.method protected a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 832
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 833
    if-nez v1, :cond_1

    .line 847
    :cond_0
    :goto_0
    return-object v0

    .line 837
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 838
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 840
    :try_start_0
    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 841
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 843
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected a(IILjava/lang/String;Z)V
    .locals 3

    .prologue
    .line 955
    invoke-virtual {p0, p2, p3}, Lcom/kingroot/kinguser/vm;->s(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 957
    if-nez p4, :cond_1

    .line 958
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/vm;->bl(I)Ljava/util/List;

    move-result-object v1

    .line 959
    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/vm;->u(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 960
    if-eqz v2, :cond_0

    .line 961
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    :cond_0
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/vm;->B(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 964
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/vm;->bm(I)V

    .line 978
    :goto_0
    return-void

    .line 974
    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/vm;->bn(I)V

    .line 976
    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/vm;->t(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(IILjava/util/List;Z)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

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
    .line 950
    invoke-static {p3}, Lcom/kingroot/kinguser/sw;->t(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/kingroot/kinguser/vm;->a(IILjava/lang/String;Z)V

    .line 951
    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 0
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
    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/vm;->b(ILjava/util/List;)V

    .line 186
    return-void
.end method

.method protected a(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/vp;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lu()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {p0, v0, p3}, Lcom/kingroot/kinguser/vm;->j(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 366
    :cond_0
    return-void
.end method

.method protected a(Ljava/util/List;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/vp;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lv()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-virtual {p0, v0, p3}, Lcom/kingroot/kinguser/vm;->j(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 718
    if-eqz v0, :cond_0

    .line 719
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 720
    :cond_0
    return-void
.end method

.method protected b(ILjava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 318
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lu()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {p0, v0, p1}, Lcom/kingroot/kinguser/vm;->j(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 322
    invoke-static {v3}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/vp;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/vp;

    iget v1, v1, Lcom/kingroot/kinguser/vp;->Lf:I

    add-int/2addr v1, p3

    iput v1, v0, Lcom/kingroot/kinguser/vp;->Lf:I

    .line 324
    const/4 v0, 0x1

    .line 326
    :goto_0
    if-nez v0, :cond_0

    .line 327
    new-instance v0, Lcom/kingroot/kinguser/vp;

    invoke-direct {v0}, Lcom/kingroot/kinguser/vp;-><init>()V

    .line 328
    iput p1, v0, Lcom/kingroot/kinguser/vp;->gN:I

    .line 329
    iput-wide v4, v0, Lcom/kingroot/kinguser/vp;->Lg:J

    .line 330
    iput p3, v0, Lcom/kingroot/kinguser/vp;->Lf:I

    .line 331
    iput v2, v0, Lcom/kingroot/kinguser/vp;->errorCode:I

    .line 332
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_0
    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/vm;->z(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lu()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method protected b(ILjava/util/List;)V
    .locals 6
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
    .line 189
    if-nez p2, :cond_0

    .line 190
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lx()Lcom/kingroot/kinguser/su;

    move-result-object v0

    .line 194
    invoke-static {p2}, Lcom/kingroot/kinguser/sw;->u(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    .line 195
    new-instance v2, Lcom/kingroot/kinguser/sx;

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, p1, v4, v5, v1}, Lcom/kingroot/kinguser/sx;-><init>(IJ[Ljava/lang/String;)V

    .line 199
    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/su;->a(Lcom/kingroot/kinguser/sx;)V

    .line 200
    return-void
.end method

.method public bi(I)V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/vm;->p(ILjava/lang/String;)V

    .line 139
    return-void
.end method

.method public bj(I)V
    .locals 2

    .prologue
    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/vm;->q(ILjava/lang/String;)V

    .line 550
    return-void
.end method

.method public bk(I)V
    .locals 2

    .prologue
    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/vm;->r(ILjava/lang/String;)V

    .line 560
    return-void
.end method

.method public bl(I)Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 922
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 923
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/vm;->bp(I)Ljava/util/List;

    move-result-object v0

    .line 924
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 925
    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/vm;->u(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 926
    if-eqz v0, :cond_0

    .line 927
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 932
    :cond_1
    return-object v1
.end method

.method protected bm(I)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 981
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->ly()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move v0, v1

    .line 982
    :goto_0
    if-gt v0, v2, :cond_0

    .line 983
    const-string v3, "%d_%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 984
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->ly()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 982
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 986
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->ly()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 987
    return-void
.end method

.method protected bo(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lw()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/vm;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/vm;->a(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bp(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1041
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->ly()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    move v2, v1

    move v0, v3

    .line 1046
    :goto_0
    if-gt v2, v5, :cond_1

    .line 1048
    const-string v6, "%d_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1049
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->ly()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v7, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1050
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1051
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 1046
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1056
    :cond_1
    if-eqz v0, :cond_3

    .line 1057
    iget-object v0, p0, Lcom/kingroot/kinguser/vm;->Lb:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 1058
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/vm;->Lb:Ljava/util/Set;

    .line 1060
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/vm;->Lb:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1064
    :cond_3
    return-object v4
.end method

.method protected abstract bq(I)Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract getChannel()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract getProductId()I
.end method

.method protected j(Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/vp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    if-nez p1, :cond_1

    .line 513
    :cond_0
    return-object v0

    .line 507
    :catch_0
    move-exception v1

    .line 443
    :cond_1
    :goto_0
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 444
    if-eq v2, v8, :cond_0

    .line 445
    new-instance v3, Lcom/kingroot/kinguser/vp;

    invoke-direct {v3}, Lcom/kingroot/kinguser/vp;-><init>()V

    .line 446
    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 447
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_3

    .line 448
    iput p2, v3, Lcom/kingroot/kinguser/vp;->gN:I

    .line 450
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "&"

    .line 451
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 450
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/kingroot/kinguser/vp;->Lg:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 454
    :goto_1
    iget-wide v4, v3, Lcom/kingroot/kinguser/vp;->Lg:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/kingroot/kinguser/vp;->Lg:J

    .line 459
    :cond_2
    :try_start_1
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    .line 482
    :goto_2
    :try_start_2
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_4

    .line 483
    const/4 v4, 0x0

    const-string v5, "&"

    .line 485
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 484
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/kingroot/kinguser/vp;->Lf:I

    .line 487
    const-string v4, "&"

    .line 489
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 488
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/kingroot/kinguser/vp;->errorCode:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 499
    :goto_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 506
    add-int/lit8 v1, v2, 0x1

    :try_start_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object p1

    goto :goto_0

    .line 492
    :cond_4
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/kingroot/kinguser/vp;->Lf:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 494
    :catch_1
    move-exception v4

    .line 495
    iput-object v1, v3, Lcom/kingroot/kinguser/vp;->desc:Ljava/lang/String;

    goto :goto_3

    .line 496
    :catch_2
    move-exception v1

    goto :goto_3

    .line 460
    :catch_3
    move-exception v4

    goto :goto_2

    .line 452
    :catch_4
    move-exception v4

    goto :goto_1
.end method

.method protected abstract lA()Ljava/lang/String;
.end method

.method public lB()Ljava/util/List;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lL()[I

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5, v4}, Lcom/kingroot/kinguser/vm;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/vm;->A(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lC()Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 391
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 392
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lM()[I

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget v4, v2, v0

    .line 393
    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/vm;->bq(I)Ljava/util/List;

    move-result-object v4

    .line 394
    invoke-static {v4}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 395
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 392
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_1
    return-object v1
.end method

.method public lD()V
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lx()Lcom/kingroot/kinguser/su;

    move-result-object v0

    .line 408
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lM()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/su;->c([I)V

    .line 409
    return-void
.end method

.method public lE()V
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lu()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 417
    return-void
.end method

.method public lF()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method public lG()Ljava/util/List;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 700
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 702
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lL()[I

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 703
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5, v4}, Lcom/kingroot/kinguser/vm;->a(Ljava/util/List;Ljava/lang/String;I)V

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    :cond_0
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/vm;->A(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 707
    if-nez v0, :cond_1

    .line 708
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 710
    :cond_1
    return-object v0
.end method

.method public lH()V
    .locals 1

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lw()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 739
    return-void
.end method

.method public lI()Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 748
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 749
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lL()[I

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget v4, v2, v0

    .line 750
    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/vm;->bo(I)Ljava/lang/Object;

    move-result-object v4

    .line 751
    if-eqz v4, :cond_0

    .line 752
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 755
    :cond_1
    return-object v1
.end method

.method public lJ()V
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/kingroot/kinguser/vm;->Lb:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/vm;->Lb:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/kingroot/kinguser/vm;->Lb:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 882
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/vm;->bm(I)V

    goto :goto_0

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vm;->Lb:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 886
    :cond_1
    return-void
.end method

.method public lK()Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 897
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lN()[I

    move-result-object v2

    .line 899
    if-eqz v2, :cond_0

    array-length v1, v2

    if-nez v1, :cond_2

    .line 900
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 910
    :cond_1
    return-object v0

    .line 903
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/vm;->Lb:Ljava/util/Set;

    if-eqz v1, :cond_3

    .line 904
    iget-object v1, p0, Lcom/kingroot/kinguser/vm;->Lb:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 907
    :cond_3
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v4, v2, v1

    .line 908
    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/vm;->bl(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 907
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected abstract lL()[I
.end method

.method protected abstract lM()[I
.end method

.method protected abstract lN()[I
.end method

.method protected lu()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lcom/kingroot/kinguser/vm$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/vm;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "actionStats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/vm$b;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method protected lv()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Lcom/kingroot/kinguser/vm$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/vm;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "switchStats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v1, v2}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/vm$b;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method protected lw()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Lcom/kingroot/kinguser/vm$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/vm;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mulDataStats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v1, v2}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/vm$b;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method protected lx()Lcom/kingroot/kinguser/su;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/kingroot/kinguser/rv;->jc()Lcom/kingroot/kinguser/su;

    move-result-object v0

    return-object v0
.end method

.method protected ly()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 115
    new-instance v0, Lcom/kingroot/kinguser/vm$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/vm;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ImmediaDataStats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v1, v2}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/vm$b;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method protected lz()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Lcom/kingroot/kinguser/vm$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/vm;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IncreaseDataStats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v1, v2}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/vm$b;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method protected p(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 205
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lu()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {p0, v0, p1}, Lcom/kingroot/kinguser/vm;->j(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 209
    invoke-static {v3}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/vp;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/vp;

    iget v1, v1, Lcom/kingroot/kinguser/vp;->Lf:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/kingroot/kinguser/vp;->Lf:I

    move v0, v2

    .line 213
    :goto_0
    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/kingroot/kinguser/vp;

    invoke-direct {v0}, Lcom/kingroot/kinguser/vp;-><init>()V

    .line 215
    iput p1, v0, Lcom/kingroot/kinguser/vp;->gN:I

    .line 216
    iput-wide v4, v0, Lcom/kingroot/kinguser/vp;->Lg:J

    .line 217
    iput v2, v0, Lcom/kingroot/kinguser/vp;->Lf:I

    .line 218
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/vm;->z(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lu()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected q(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/vm;->r(ILjava/lang/String;)V

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 568
    new-instance v1, Lcom/kingroot/kinguser/vp;

    invoke-direct {v1}, Lcom/kingroot/kinguser/vp;-><init>()V

    .line 569
    iput p1, v1, Lcom/kingroot/kinguser/vp;->gN:I

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/kingroot/kinguser/vp;->Lg:J

    .line 571
    const/4 v2, 0x1

    iput v2, v1, Lcom/kingroot/kinguser/vp;->Lf:I

    .line 572
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/vm;->z(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lv()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 576
    return-void
.end method

.method protected r(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->lv()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 580
    return-void
.end method

.method protected s(ILjava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 854
    const-string v1, ""

    .line 856
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 859
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->getProductId()I

    move-result v1

    const-string v5, ""

    .line 860
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->getChannel()Ljava/lang/String;

    move-result-object v6

    move v2, v0

    move v3, p1

    move v4, v0

    .line 857
    invoke-static/range {v0 .. v6}, Lcom/kingroot/kinguser/sw;->a(IIIIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 864
    const-string v1, "|"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 869
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v7, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 871
    return-object v1
.end method

.method protected declared-synchronized t(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 1074
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    :goto_0
    monitor-exit p0

    return-void

    .line 1079
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->ly()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1080
    const-string v1, "%d_%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1081
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->ly()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1082
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vm;->ly()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1083
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1074
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract u(ILjava/lang/String;)Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public w(II)V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/kingroot/kinguser/vm;->b(ILjava/lang/String;I)V

    .line 173
    return-void
.end method

.method protected z(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/vp;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 521
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 523
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 524
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/vp;

    iget-wide v4, v0, Lcom/kingroot/kinguser/vp;->Lg:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 525
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/vp;

    iget-object v0, v0, Lcom/kingroot/kinguser/vp;->desc:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 527
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/vp;

    iget-object v0, v0, Lcom/kingroot/kinguser/vp;->desc:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/vp;

    iget v0, v0, Lcom/kingroot/kinguser/vp;->errorCode:I

    if-eqz v0, :cond_0

    .line 532
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/vp;

    iget v0, v0, Lcom/kingroot/kinguser/vp;->errorCode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 535
    :cond_0
    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 529
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/vp;

    iget v0, v0, Lcom/kingroot/kinguser/vp;->Lf:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 538
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
