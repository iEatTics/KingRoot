.class public Lcom/kingroot/kinguser/bag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bdK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bag;->bdK:Ljava/lang/Object;

    return-void
.end method

.method public static Vq()V
    .locals 4

    .prologue
    .line 289
    sget-object v1, Lcom/kingroot/kinguser/bag;->bdK:Ljava/lang/Object;

    monitor-enter v1

    .line 291
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/ei;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ei;-><init>()V

    .line 292
    invoke-static {}, Lcom/kingroot/kinguser/bvz;->il()I

    move-result v2

    iput v2, v0, Lcom/kingroot/kinguser/ei;->mw:I

    .line 293
    invoke-static {}, Lcom/kingroot/kinguser/bvz;->aiG()I

    move-result v2

    iput v2, v0, Lcom/kingroot/kinguser/ei;->nO:I

    .line 294
    invoke-static {}, Lcom/kingroot/kinguser/bal;->Vz()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/kingroot/kinguser/ei;->pg:Ljava/util/ArrayList;

    .line 295
    iget-object v2, v0, Lcom/kingroot/kinguser/ei;->pg:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/kingroot/kinguser/zc;->f(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    monitor-exit v1

    .line 307
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/kingroot/kinguser/aju;->a(Landroid/content/Context;Lcom/kingroot/kinguser/ei;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-nez v2, :cond_1

    .line 301
    iget-object v0, v0, Lcom/kingroot/kinguser/ei;->pg:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/bal;->bK(Ljava/util/List;)V

    .line 306
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static varargs a(II[Lcom/kingroot/kinguser/ek;)Lcom/kingroot/kinguser/ei;
    .locals 4

    .prologue
    .line 65
    new-instance v1, Lcom/kingroot/kinguser/ei;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ei;-><init>()V

    .line 66
    invoke-static {}, Lcom/kingroot/kinguser/bvz;->il()I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/ei;->mw:I

    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/bvz;->aiG()I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/ei;->nO:I

    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/bal;->Vz()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/ei;->pg:Ljava/util/ArrayList;

    .line 69
    iget-object v0, v1, Lcom/kingroot/kinguser/ei;->pg:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/zc;->f(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/kingroot/kinguser/ei;->pg:Ljava/util/ArrayList;

    .line 74
    :cond_0
    iget-object v0, v1, Lcom/kingroot/kinguser/ei;->pg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/el;

    .line 75
    iget v3, v0, Lcom/kingroot/kinguser/el;->id:I

    if-ne v3, p0, :cond_1

    iget v3, v0, Lcom/kingroot/kinguser/el;->version:I

    if-ne v3, p1, :cond_1

    .line 76
    iget-object v0, v0, Lcom/kingroot/kinguser/el;->pm:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    .line 91
    :goto_0
    return-object v0

    .line 82
    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/el;

    invoke-direct {v0}, Lcom/kingroot/kinguser/el;-><init>()V

    .line 83
    iput p0, v0, Lcom/kingroot/kinguser/el;->id:I

    .line 84
    iput p1, v0, Lcom/kingroot/kinguser/el;->version:I

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/kingroot/kinguser/el;->pm:Ljava/util/ArrayList;

    .line 86
    iget-object v2, v0, Lcom/kingroot/kinguser/el;->pm:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 89
    iget-object v2, v1, Lcom/kingroot/kinguser/ei;->pg:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 91
    goto :goto_0
.end method

.method private static a(IILjava/lang/String;Ljava/lang/String;J)Lcom/kingroot/kinguser/ek;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/kingroot/kinguser/ek;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ek;-><init>()V

    .line 43
    iput p0, v0, Lcom/kingroot/kinguser/ek;->id:I

    .line 44
    iput p1, v0, Lcom/kingroot/kinguser/ek;->gv:I

    .line 45
    iput-object p2, v0, Lcom/kingroot/kinguser/ek;->pi:Ljava/lang/String;

    .line 46
    iput-object p3, v0, Lcom/kingroot/kinguser/ek;->pj:Ljava/lang/String;

    .line 47
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-eqz v1, :cond_0

    .line 48
    invoke-static {p4, p5}, Lcom/kingroot/kinguser/bag;->cq(J)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/ek;->pk:Ljava/util/ArrayList;

    .line 50
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/kingroot/kinguser/ek;->count:I

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/ek;->time:J

    .line 53
    return-object v0
.end method

.method public static declared-synchronized a(Lcom/kingroot/kinguser/ed;ILjava/lang/String;Z)V
    .locals 7

    .prologue
    .line 102
    const-class v6, Lcom/kingroot/kinguser/bag;

    monitor-enter v6

    const v0, 0xc418

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    iget-wide v4, p0, Lcom/kingroot/kinguser/ed;->ox:J

    :goto_0
    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bag;->a(IILjava/lang/String;Ljava/lang/String;J)Lcom/kingroot/kinguser/ek;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/bvz;->il()I

    move-result v1

    .line 106
    invoke-static {}, Lcom/kingroot/kinguser/bvz;->aiG()I

    move-result v2

    .line 108
    if-nez p3, :cond_1

    .line 109
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/kingroot/kinguser/ek;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/bag;->a(II[Lcom/kingroot/kinguser/ek;)Lcom/kingroot/kinguser/ei;

    move-result-object v3

    .line 110
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/kingroot/kinguser/aju;->a(Landroid/content/Context;Lcom/kingroot/kinguser/ei;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v4

    if-nez v4, :cond_1

    .line 111
    iget-object v0, v3, Lcom/kingroot/kinguser/ei;->pg:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/bal;->bK(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :goto_1
    monitor-exit v6

    return-void

    .line 102
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 119
    :cond_1
    :try_start_1
    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bal;->a(IILcom/kingroot/kinguser/ek;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;IZ)V
    .locals 7

    .prologue
    .line 145
    const-class v6, Lcom/kingroot/kinguser/bag;

    monitor-enter v6

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->Vt()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xc3cc

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-static {p1}, Lcom/kingroot/kinguser/bag;->hG(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    .line 145
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bag;->a(IILjava/lang/String;Ljava/lang/String;J)Lcom/kingroot/kinguser/ek;

    move-result-object v0

    .line 152
    if-nez p2, :cond_1

    .line 153
    iget v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    iget v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/kingroot/kinguser/ek;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/bag;->a(II[Lcom/kingroot/kinguser/ek;)Lcom/kingroot/kinguser/ei;

    move-result-object v1

    .line 154
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/kingroot/kinguser/aju;->a(Landroid/content/Context;Lcom/kingroot/kinguser/ei;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-nez v2, :cond_1

    .line 155
    iget-object v0, v1, Lcom/kingroot/kinguser/ei;->pg:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/bal;->bK(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :goto_1
    monitor-exit v6

    return-void

    .line 146
    :cond_0
    const v0, 0xc3b8

    goto :goto_0

    .line 163
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    iget v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bal;->a(IILcom/kingroot/kinguser/ek;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;ZIIZ)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 261
    const-class v6, Lcom/kingroot/kinguser/bag;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->Vt()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const v0, 0xc3ca

    .line 265
    :goto_0
    if-eqz p1, :cond_3

    :goto_1
    const/4 v2, 0x0

    .line 267
    invoke-static {p3}, Lcom/kingroot/kinguser/bag;->hG(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    .line 265
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bag;->a(IILjava/lang/String;Ljava/lang/String;J)Lcom/kingroot/kinguser/ek;

    move-result-object v0

    .line 269
    if-nez p4, :cond_4

    .line 270
    iget v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    iget v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/kingroot/kinguser/ek;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/bag;->a(II[Lcom/kingroot/kinguser/ek;)Lcom/kingroot/kinguser/ei;

    move-result-object v1

    .line 271
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/kingroot/kinguser/aju;->a(Landroid/content/Context;Lcom/kingroot/kinguser/ei;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-nez v2, :cond_4

    .line 272
    iget-object v0, v1, Lcom/kingroot/kinguser/ei;->pg:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/bal;->bK(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :goto_2
    monitor-exit v6

    return-void

    .line 261
    :cond_0
    const v0, 0xc3cb

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const v0, 0xc3b6

    goto :goto_0

    :cond_2
    const v0, 0xc3b7

    goto :goto_0

    :cond_3
    move v1, p2

    .line 265
    goto :goto_1

    .line 280
    :cond_4
    :try_start_1
    iget v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    iget v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bal;->a(IILcom/kingroot/kinguser/ek;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized b(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;IZ)V
    .locals 7

    .prologue
    .line 236
    const-class v6, Lcom/kingroot/kinguser/bag;

    monitor-enter v6

    .line 237
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->Vt()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xc3cd

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 238
    invoke-static {p1}, Lcom/kingroot/kinguser/bag;->hG(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    .line 236
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bag;->a(IILjava/lang/String;Ljava/lang/String;J)Lcom/kingroot/kinguser/ek;

    move-result-object v0

    .line 240
    if-nez p2, :cond_1

    .line 241
    iget v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    iget v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/kingroot/kinguser/ek;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/bag;->a(II[Lcom/kingroot/kinguser/ek;)Lcom/kingroot/kinguser/ei;

    move-result-object v1

    .line 242
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/kingroot/kinguser/aju;->a(Landroid/content/Context;Lcom/kingroot/kinguser/ei;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-nez v2, :cond_1

    .line 243
    iget-object v0, v1, Lcom/kingroot/kinguser/ei;->pg:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/bal;->bK(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :goto_1
    monitor-exit v6

    return-void

    .line 237
    :cond_0
    const v0, 0xc3b9

    goto :goto_0

    .line 251
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    iget v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bal;->a(IILcom/kingroot/kinguser/ek;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized b(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;ZIZ)V
    .locals 9

    .prologue
    const v0, 0xc356

    const/4 v6, 0x0

    .line 172
    const-class v7, Lcom/kingroot/kinguser/bag;

    monitor-enter v7

    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->Vt()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    const v0, 0xc3d0

    .line 176
    :cond_0
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 177
    invoke-static {p2}, Lcom/kingroot/kinguser/bag;->hG(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    .line 176
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bag;->a(IILjava/lang/String;Ljava/lang/String;J)Lcom/kingroot/kinguser/ek;

    move-result-object v8

    .line 182
    if-eqz p1, :cond_5

    .line 183
    const v0, 0xc354

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 185
    invoke-static {p2}, Lcom/kingroot/kinguser/bag;->hG(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    .line 183
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bag;->a(IILjava/lang/String;Ljava/lang/String;J)Lcom/kingroot/kinguser/ek;

    move-result-object v0

    move-object v1, v0

    .line 188
    :goto_1
    if-nez p3, :cond_4

    .line 189
    if-nez v1, :cond_3

    iget v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    iget v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/kingroot/kinguser/ek;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    .line 190
    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/bag;->a(II[Lcom/kingroot/kinguser/ek;)Lcom/kingroot/kinguser/ei;

    move-result-object v0

    .line 192
    :goto_2
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/kingroot/kinguser/aju;->a(Landroid/content/Context;Lcom/kingroot/kinguser/ei;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-nez v2, :cond_4

    .line 193
    iget-object v0, v0, Lcom/kingroot/kinguser/ei;->pg:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/bal;->bK(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_1
    :goto_3
    monitor-exit v7

    return-void

    .line 172
    :cond_2
    if-eqz p1, :cond_0

    const v0, 0xc3bc

    goto :goto_0

    .line 190
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    iget v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/kingroot/kinguser/ek;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 191
    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/bag;->a(II[Lcom/kingroot/kinguser/ek;)Lcom/kingroot/kinguser/ei;

    move-result-object v0

    goto :goto_2

    .line 201
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    iget v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    invoke-static {v0, v2, v8}, Lcom/kingroot/kinguser/bal;->a(IILcom/kingroot/kinguser/ek;)V

    .line 202
    if-eqz v1, :cond_1

    .line 203
    iget v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    iget v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    invoke-static {v0, v2, v1}, Lcom/kingroot/kinguser/bal;->a(IILcom/kingroot/kinguser/ek;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_5
    move-object v1, v6

    goto :goto_1
.end method

.method private static cq(J)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-object v0
.end method

.method private static hG(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
