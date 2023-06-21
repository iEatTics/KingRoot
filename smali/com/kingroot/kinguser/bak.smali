.class public Lcom/kingroot/kinguser/bak;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bak$a;
    }
.end annotation


# static fields
.field private static volatile bea:Lcom/kingroot/kinguser/bak;


# instance fields
.field private bdW:Lcom/kingroot/kinguser/bah;

.field private bdX:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final bdY:Ljava/lang/Object;

.field private final bdZ:Ljava/lang/Object;

.field private beb:Lcom/kingroot/kinguser/bed;

.field private final bec:Lcom/kingroot/kinguser/bed;

.field private final bed:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/vh",
            "<",
            "Lcom/kingroot/kinguser/vf;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/kingroot/kinguser/bah;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bah;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bak;->bdW:Lcom/kingroot/kinguser/bah;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bak;->bdX:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bak;->bdY:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bak;->bdZ:Ljava/lang/Object;

    .line 73
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bak$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bak$1;-><init>(Lcom/kingroot/kinguser/bak;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bak;->beb:Lcom/kingroot/kinguser/bed;

    .line 104
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bak$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bak$2;-><init>(Lcom/kingroot/kinguser/bak;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bak;->bec:Lcom/kingroot/kinguser/bed;

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bak;->bed:Landroid/util/SparseArray;

    .line 129
    return-void
.end method

.method public static Vx()Lcom/kingroot/kinguser/bak;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/kingroot/kinguser/bak;->bea:Lcom/kingroot/kinguser/bak;

    if-nez v0, :cond_1

    .line 134
    const-class v1, Lcom/kingroot/kinguser/bak;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bak;->bea:Lcom/kingroot/kinguser/bak;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/kingroot/kinguser/bak;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bak;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bak;->bea:Lcom/kingroot/kinguser/bak;

    .line 138
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bak;->bea:Lcom/kingroot/kinguser/bak;

    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Lcom/kingroot/kinguser/ed;)Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 651
    new-instance v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    invoke-direct {v2}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;-><init>()V

    .line 652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdS:J

    .line 653
    iget v0, p0, Lcom/kingroot/kinguser/ed;->id:I

    iput v0, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    .line 654
    iget v0, p0, Lcom/kingroot/kinguser/ed;->version:I

    iput v0, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    .line 655
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->oi:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->packageMd5:Ljava/lang/String;

    .line 656
    iget v0, p0, Lcom/kingroot/kinguser/ed;->oj:I

    iput v0, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->size:I

    .line 657
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->ok:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->url:Ljava/lang/String;

    .line 658
    iget v0, p0, Lcom/kingroot/kinguser/ed;->oj:I

    iput v0, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->size:I

    .line 659
    iget-wide v4, p0, Lcom/kingroot/kinguser/ed;->ox:J

    iput-wide v4, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    .line 660
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->oq:Lcom/kingroot/kinguser/eb;

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->oq:Lcom/kingroot/kinguser/eb;

    iget-object v0, v0, Lcom/kingroot/kinguser/eb;->od:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 662
    if-lez v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->oq:Lcom/kingroot/kinguser/eb;

    iget-object v0, v0, Lcom/kingroot/kinguser/eb;->od:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "\n|\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 664
    array-length v3, v0

    if-lez v3, :cond_0

    .line 665
    aget-object v3, v0, v7

    iput-object v3, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdP:Ljava/lang/String;

    .line 668
    :cond_0
    array-length v3, v0

    if-le v3, v6, :cond_1

    .line 669
    aget-object v0, v0, v6

    iput-object v0, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdQ:Ljava/lang/String;

    .line 673
    :cond_1
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ed;->om:Z

    if-eqz v0, :cond_5

    .line 674
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->ow:Lcom/kingroot/kinguser/eg;

    if-eqz v0, :cond_3

    .line 676
    const/4 v0, 0x2

    iput v0, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pf:I

    .line 686
    :goto_0
    iget v0, p0, Lcom/kingroot/kinguser/ed;->on:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/kingroot/kinguser/ed;->oj:I

    const/high16 v1, 0x100000

    if-ge v0, v1, :cond_2

    .line 688
    iget v0, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdR:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdR:I

    :cond_2
    :goto_1
    move-object v0, v2

    .line 711
    :goto_2
    return-object v0

    .line 677
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->ov:Lcom/kingroot/kinguser/du;

    if-eqz v0, :cond_4

    .line 679
    const/4 v0, 0x4

    iput v0, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pf:I

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 682
    goto :goto_2

    .line 691
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->ow:Lcom/kingroot/kinguser/eg;

    if-eqz v0, :cond_8

    .line 692
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->ow:Lcom/kingroot/kinguser/eg;

    iget v0, v0, Lcom/kingroot/kinguser/eg;->pf:I

    if-nez v0, :cond_6

    .line 694
    iput v7, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pf:I

    goto :goto_1

    .line 695
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->ow:Lcom/kingroot/kinguser/eg;

    iget v0, v0, Lcom/kingroot/kinguser/eg;->pf:I

    if-ne v0, v6, :cond_7

    .line 697
    iput v6, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pf:I

    goto :goto_1

    :cond_7
    move-object v0, v1

    .line 700
    goto :goto_2

    .line 702
    :cond_8
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->ov:Lcom/kingroot/kinguser/du;

    if-eqz v0, :cond_9

    .line 704
    const/4 v0, 0x3

    iput v0, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pf:I

    goto :goto_1

    :cond_9
    move-object v0, v1

    .line 707
    goto :goto_2
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bak;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/bak;->bdX:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;Lcom/kingroot/kinguser/vk;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;",
            "Lcom/kingroot/kinguser/vk",
            "<",
            "Lcom/kingroot/kinguser/vf;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    iget-object v3, p0, Lcom/kingroot/kinguser/bak;->bed:Landroid/util/SparseArray;

    monitor-enter v3

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bak;->bed:Landroid/util/SparseArray;

    iget v4, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/vh;

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/kingroot/kinguser/vh;->getStatus()I

    move-result v4

    .line 151
    packed-switch v4, :pswitch_data_0

    .line 162
    iget-object v0, p0, Lcom/kingroot/kinguser/bak;->bed:Landroid/util/SparseArray;

    iget v4, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    :cond_0
    iget-object v0, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-static {}, Lcom/kingroot/kinguser/ayg;->UT()Ljava/io/File;

    move-result-object v0

    .line 171
    if-nez v0, :cond_1

    .line 172
    monitor-exit v3

    move v0, v1

    .line 191
    :goto_0
    return v0

    .line 153
    :pswitch_0
    invoke-virtual {v0}, Lcom/kingroot/kinguser/vh;->ln()V

    .line 154
    monitor-exit v3

    move v0, v1

    goto :goto_0

    .line 159
    :pswitch_1
    monitor-exit v3

    move v0, v1

    goto :goto_0

    .line 174
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->packageMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/ayg;->UU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/bak;->bdW:Lcom/kingroot/kinguser/bah;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/bah;->b(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;Z)Z

    .line 177
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    new-instance v1, Lcom/kingroot/kinguser/vf;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->url:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Lcom/kingroot/kinguser/vf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->Vu()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 181
    invoke-virtual {p2, v1}, Lcom/kingroot/kinguser/vk;->b(Lcom/kingroot/kinguser/vj;)V

    .line 182
    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 185
    :cond_3
    new-instance v4, Lcom/kingroot/kinguser/vh;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/kingroot/kinguser/vh;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/vj;)V

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/vh;->dc(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v4, p2}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vk;)V

    .line 188
    invoke-virtual {v4}, Lcom/kingroot/kinguser/vh;->ll()V

    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/bak;->bed:Landroid/util/SparseArray;

    iget v1, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 151
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;I)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v0, 0x0

    .line 262
    invoke-static {}, Lcom/kingroot/kinguser/akv;->Gp()Lcom/kingroot/kinguser/akv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/akv;->Gv()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ayg;->UV()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/kingroot/kinguser/bak;->bdW:Lcom/kingroot/kinguser/bah;

    iget v2, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bah;->getUpgradeInfo(I)Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    move-result-object v1

    .line 274
    if-eqz v1, :cond_0

    .line 277
    iget-wide v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    iget-wide v4, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->Vu()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    if-eq p2, v7, :cond_2

    if-eq p2, v6, :cond_2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 293
    :cond_2
    iget v1, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdU:I

    if-ge v1, v6, :cond_0

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bak;->c(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;I)Z

    move-result v0

    goto :goto_0

    .line 304
    :cond_3
    iget v1, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->downloadCount:I

    if-ge v1, v6, :cond_0

    .line 310
    iget-wide v2, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->lastDownloadTime:J

    const-wide/32 v4, 0xdbba00

    invoke-static {v2, v3, v4, v5}, Lcom/kingroot/kinguser/adk;->g(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v1

    .line 317
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 321
    if-eqz v1, :cond_4

    iget v1, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdR:I

    const/16 v2, 0x10

    .line 322
    invoke-static {v1, v2}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    :cond_4
    new-instance v1, Lcom/kingroot/kinguser/baf;

    invoke-direct {v1, p1}, Lcom/kingroot/kinguser/baf;-><init>(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;)V

    invoke-direct {p0, p1, v1}, Lcom/kingroot/kinguser/bak;->a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;Lcom/kingroot/kinguser/vk;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->lastDownloadTime:J

    .line 332
    iget-object v1, p0, Lcom/kingroot/kinguser/bak;->bdW:Lcom/kingroot/kinguser/bah;

    invoke-virtual {v1, p1, v7}, Lcom/kingroot/kinguser/bah;->b(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;Z)Z

    goto :goto_0
.end method

.method private static bJ(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/loader/sdk/KlInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/dy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 717
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 718
    invoke-static {p0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 728
    :goto_0
    return-object v0

    .line 720
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/KlInfo;

    .line 721
    new-instance v3, Lcom/kingroot/kinguser/dy;

    invoke-direct {v3}, Lcom/kingroot/kinguser/dy;-><init>()V

    .line 722
    iget v4, v0, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    iput v4, v3, Lcom/kingroot/kinguser/dy;->id:I

    .line 723
    const/16 v4, 0xa

    iput v4, v3, Lcom/kingroot/kinguser/dy;->level:I

    .line 724
    iget-object v4, v0, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/kingroot/kinguser/dy;->pkgName:Ljava/lang/String;

    .line 725
    iget v0, v0, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    iput v0, v3, Lcom/kingroot/kinguser/dy;->version:I

    .line 726
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 728
    goto :goto_0
.end method

.method private c(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;I)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 346
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    .line 347
    iget v3, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-interface {v0, v3}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->getInstalledKlPackage(I)Lcom/kingroot/loader/sdk/KlPackage;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    if-eq p2, v3, :cond_0

    .line 352
    invoke-static {}, Lcom/kingroot/kinguser/akv;->Gp()Lcom/kingroot/kinguser/akv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/akv;->cv(Z)V

    move v1, v2

    .line 414
    :goto_0
    return v1

    .line 357
    :cond_0
    invoke-static {p1, v1}, Lcom/kingroot/kinguser/bae;->a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;Z)V

    .line 360
    invoke-static {p1, v1, v1}, Lcom/kingroot/kinguser/bag;->b(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;IZ)V

    .line 364
    iget-object v3, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    invoke-static {v3}, Lcom/kingroot/kinguser/aaz;->ea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 367
    const/16 v0, 0x2328

    .line 388
    :goto_1
    iget v3, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdU:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdU:I

    .line 389
    iget-object v3, p0, Lcom/kingroot/kinguser/bak;->bdW:Lcom/kingroot/kinguser/bah;

    invoke-virtual {v3, p1, v1}, Lcom/kingroot/kinguser/bah;->b(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;Z)Z

    .line 390
    if-ne v0, v1, :cond_5

    .line 394
    invoke-static {p1, v1, v0, v1}, Lcom/kingroot/kinguser/bae;->a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;ZIZ)V

    .line 397
    invoke-static {p1, v1, v0, v1, v1}, Lcom/kingroot/kinguser/bag;->a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;ZIIZ)V

    .line 400
    iget-object v0, p0, Lcom/kingroot/kinguser/bak;->bdW:Lcom/kingroot/kinguser/bah;

    iget v2, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bah;->hH(I)Z

    goto :goto_0

    .line 368
    :cond_1
    const-string v4, "191240FCB048127DB9110D1B30537FDE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 372
    iget v3, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-interface {v0, v3}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->getInstalledKlPackage(I)Lcom/kingroot/loader/sdk/KlPackage;

    move-result-object v3

    .line 373
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/kingroot/loader/sdk/KlPackage;->isRunning()Z

    move-result v3

    if-nez v3, :cond_3

    .line 375
    :cond_2
    iget-object v3, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->installPlugin(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 378
    :cond_3
    iget-object v3, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->postRestartUpdate(Ljava/lang/String;Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;)V

    move v0, v1

    .line 380
    goto :goto_1

    .line 384
    :cond_4
    const/16 v0, 0x2329

    goto :goto_1

    .line 405
    :cond_5
    invoke-static {p1, v2, v0, v1}, Lcom/kingroot/kinguser/bae;->a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;ZIZ)V

    .line 408
    invoke-static {p1, v2, v0, v1, v1}, Lcom/kingroot/kinguser/bag;->a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;ZIIZ)V

    .line 410
    iget v0, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdU:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_6

    :cond_6
    move v1, v2

    .line 414
    goto :goto_0
.end method


# virtual methods
.method public Vy()Lcom/kingroot/kinguser/bah;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/kingroot/kinguser/bak;->bdW:Lcom/kingroot/kinguser/bah;

    return-object v0
.end method

.method a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;I)Z
    .locals 2

    .prologue
    .line 244
    iget-object v1, p0, Lcom/kingroot/kinguser/bak;->bdZ:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    monitor-exit v1

    .line 254
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bak;->b(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;I)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hJ(I)V
    .locals 3

    .prologue
    .line 197
    iget-object v1, p0, Lcom/kingroot/kinguser/bak;->bed:Landroid/util/SparseArray;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bak;->bed:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/vh;

    .line 199
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/kingroot/kinguser/vh;->lo()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bak;->bed:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    monitor-exit v1

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hK(I)V
    .locals 5

    .prologue
    .line 240
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bak;->bec:Lcom/kingroot/kinguser/bed;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public processLocalOrderSync(I)I
    .locals 6

    .prologue
    .line 211
    iget-object v2, p0, Lcom/kingroot/kinguser/bak;->bdZ:Ljava/lang/Object;

    monitor-enter v2

    .line 212
    const/4 v1, 0x0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bak;->bdW:Lcom/kingroot/kinguser/bah;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bah;->getUpgradeInfoList()Ljava/util/List;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    .line 216
    iget v4, v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    const/16 v5, 0x138c

    if-ne v4, v5, :cond_1

    .line 217
    invoke-static {}, Lcom/kingroot/kinguser/akw;->Gx()Lcom/kingroot/kinguser/akw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/akw;->GA()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 223
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0, p1}, Lcom/kingroot/kinguser/bak;->a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 230
    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 232
    :cond_2
    :try_start_2
    monitor-exit v2

    return v1

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public pullPluginOrderAsync(Z)V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/kingroot/kinguser/bak;->bdX:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 427
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bak;->beb:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 428
    return-void
.end method

.method public pullPluginOrderSync(Z)I
    .locals 14

    .prologue
    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 436
    iget-object v9, p0, Lcom/kingroot/kinguser/bak;->bdY:Ljava/lang/Object;

    monitor-enter v9

    .line 440
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/akv;->Gp()Lcom/kingroot/kinguser/akv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akv;->Gv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    monitor-exit v9

    move v0, v7

    .line 645
    :goto_0
    return v0

    .line 446
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ayg;->UV()Z

    move-result v0

    if-nez v0, :cond_1

    .line 448
    monitor-exit v9

    move v0, v7

    goto :goto_0

    .line 451
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 452
    if-nez p1, :cond_2

    .line 454
    invoke-static {}, Lcom/kingroot/kinguser/akv;->Gp()Lcom/kingroot/kinguser/akv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akv;->Gq()J

    move-result-wide v0

    .line 455
    const-wide/32 v4, 0x5265c00

    .line 456
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 458
    const/4 v0, -0x2

    monitor-exit v9

    goto :goto_0

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 467
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    if-ne v7, v0, :cond_3

    .line 469
    monitor-exit v9

    move v0, v7

    goto :goto_0

    .line 473
    :cond_3
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    .line 475
    invoke-interface {v0}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->getInstalledKlInfos()Ljava/util/List;

    move-result-object v0

    .line 474
    invoke-static {v0}, Lcom/kingroot/kinguser/bak;->bJ(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 476
    invoke-static {}, Lcom/kingroot/kinguser/bwa;->aiI()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 478
    monitor-exit v9

    move v0, v7

    goto :goto_0

    .line 482
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/dy;

    .line 484
    iget v5, v0, Lcom/kingroot/kinguser/dy;->id:I

    iget v0, v0, Lcom/kingroot/kinguser/dy;->version:I

    const/4 v10, 0x0

    invoke-static {v5, v0, v10}, Lcom/kingroot/kinguser/bae;->c(IIZ)V

    goto :goto_1

    .line 491
    :cond_5
    new-instance v0, Lcom/kingroot/kinguser/dv;

    invoke-direct {v0}, Lcom/kingroot/kinguser/dv;-><init>()V

    .line 492
    invoke-static {}, Lcom/kingroot/kinguser/bvz;->il()I

    move-result v4

    iput v4, v0, Lcom/kingroot/kinguser/dv;->mw:I

    .line 493
    invoke-static {}, Lcom/kingroot/kinguser/bvz;->aiG()I

    move-result v4

    iput v4, v0, Lcom/kingroot/kinguser/dv;->nO:I

    .line 494
    iput-object v1, v0, Lcom/kingroot/kinguser/dv;->nP:Ljava/util/ArrayList;

    .line 495
    invoke-static {}, Lcom/kingroot/kinguser/akv;->Gp()Lcom/kingroot/kinguser/akv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/akv;->Gr()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/kingroot/kinguser/dv;->nQ:J

    .line 498
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 499
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/kingroot/kinguser/aju;->a(Landroid/content/Context;Lcom/kingroot/kinguser/dv;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    .line 500
    if-eqz v0, :cond_6

    .line 502
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/kingroot/kinguser/bae;->a(Lcom/kingroot/kinguser/ed;IIZ)V

    .line 505
    monitor-exit v9

    move v0, v7

    goto/16 :goto_0

    .line 508
    :cond_6
    if-nez p1, :cond_7

    .line 510
    invoke-static {}, Lcom/kingroot/kinguser/akv;->Gp()Lcom/kingroot/kinguser/akv;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/akv;->bM(J)V

    .line 514
    :cond_7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ef;

    .line 515
    if-nez v0, :cond_8

    .line 517
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bae;->a(Lcom/kingroot/kinguser/ed;IIZ)V

    .line 520
    monitor-exit v9

    move v0, v7

    goto/16 :goto_0

    .line 532
    :cond_8
    iget v1, v0, Lcom/kingroot/kinguser/ef;->oM:I

    if-eqz v1, :cond_9

    .line 534
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, v0, Lcom/kingroot/kinguser/ef;->oM:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/kingroot/kinguser/bae;->a(Lcom/kingroot/kinguser/ed;IIZ)V

    .line 537
    const/4 v1, 0x0

    const/16 v2, 0x8fe

    iget v0, v0, Lcom/kingroot/kinguser/ef;->oM:I

    .line 539
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 537
    invoke-static {v1, v2, v0, v3}, Lcom/kingroot/kinguser/bag;->a(Lcom/kingroot/kinguser/ed;ILjava/lang/String;Z)V

    .line 542
    monitor-exit v9

    move v0, v7

    goto/16 :goto_0

    .line 547
    :cond_9
    invoke-static {}, Lcom/kingroot/kinguser/akv;->Gp()Lcom/kingroot/kinguser/akv;

    move-result-object v1

    iget-wide v2, v0, Lcom/kingroot/kinguser/ef;->oU:J

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/akv;->bN(J)V

    .line 550
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 551
    iget-object v1, v0, Lcom/kingroot/kinguser/ef;->oP:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/kingroot/kinguser/ef;->oN:Ljava/util/ArrayList;

    .line 552
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 554
    :cond_a
    iget-object v1, v0, Lcom/kingroot/kinguser/ef;->oP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/ed;

    .line 555
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/kingroot/kinguser/ed;->ov:Lcom/kingroot/kinguser/du;

    goto :goto_2

    .line 558
    :cond_b
    iget-object v1, v0, Lcom/kingroot/kinguser/ef;->oN:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/ed;

    .line 559
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/kingroot/kinguser/ed;->ow:Lcom/kingroot/kinguser/eg;

    goto :goto_3

    .line 563
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/kingroot/kinguser/ef;->oP:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 564
    iget-object v0, v0, Lcom/kingroot/kinguser/ef;->oN:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 566
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ed;

    .line 568
    iget v2, v0, Lcom/kingroot/kinguser/ed;->id:I

    const/16 v4, 0x138b

    if-eq v2, v4, :cond_e

    iget v2, v0, Lcom/kingroot/kinguser/ed;->id:I

    const/16 v4, 0x138c

    if-ne v2, v4, :cond_d

    .line 573
    :cond_e
    iget v2, v0, Lcom/kingroot/kinguser/ed;->id:I

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 576
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Lcom/kingroot/kinguser/bae;->a(Lcom/kingroot/kinguser/ed;IIZ)V

    .line 582
    const/16 v2, 0x8fc

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Lcom/kingroot/kinguser/bag;->a(Lcom/kingroot/kinguser/ed;ILjava/lang/String;Z)V

    goto :goto_4

    .line 594
    :cond_f
    iget-object v0, p0, Lcom/kingroot/kinguser/bak;->bdW:Lcom/kingroot/kinguser/bah;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bah;->getUpgradeInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v8

    :cond_10
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    .line 595
    iget v1, v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/ed;

    .line 596
    if-nez v1, :cond_11

    .line 597
    invoke-virtual {v0}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->Vt()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 600
    iget-object v1, p0, Lcom/kingroot/kinguser/bak;->bdW:Lcom/kingroot/kinguser/bah;

    iget v5, v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {v1, v5}, Lcom/kingroot/kinguser/bah;->hH(I)Z

    .line 601
    iget v0, v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bak;->hJ(I)V

    move v0, v2

    :goto_6
    move v2, v0

    .line 626
    goto :goto_5

    .line 604
    :cond_11
    iget-wide v10, v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    iget-wide v12, v1, Lcom/kingroot/kinguser/ed;->ox:J

    cmp-long v5, v10, v12

    if-nez v5, :cond_12

    .line 606
    iget v0, v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->delete(I)V

    move v0, v2

    goto :goto_6

    .line 608
    :cond_12
    invoke-static {v1}, Lcom/kingroot/kinguser/bak;->a(Lcom/kingroot/kinguser/ed;)Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    move-result-object v1

    .line 609
    if-eqz v1, :cond_10

    .line 620
    iget-object v2, p0, Lcom/kingroot/kinguser/bak;->bdW:Lcom/kingroot/kinguser/bah;

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v5}, Lcom/kingroot/kinguser/bah;->b(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;Z)Z

    .line 621
    iget v0, v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->delete(I)V

    move v0, v6

    .line 623
    goto :goto_6

    .line 629
    :cond_13
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v1, v2

    move v2, v8

    :goto_7
    if-ge v2, v4, :cond_15

    .line 630
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ed;

    invoke-static {v0}, Lcom/kingroot/kinguser/bak;->a(Lcom/kingroot/kinguser/ed;)Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    move-result-object v0

    .line 631
    if-nez v0, :cond_14

    move v0, v1

    .line 629
    :goto_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_7

    .line 641
    :cond_14
    iget-object v1, p0, Lcom/kingroot/kinguser/bak;->bdW:Lcom/kingroot/kinguser/bah;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bah;->a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;)Z

    move v0, v6

    .line 642
    goto :goto_8

    .line 645
    :cond_15
    if-eqz v1, :cond_16

    move v0, v6

    :goto_9
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_16
    move v0, v8

    goto :goto_9

    :cond_17
    move v0, v2

    goto :goto_6
.end method

.method public startDownload(ILcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;)Z
    .locals 5

    .prologue
    .line 732
    iget-object v0, p0, Lcom/kingroot/kinguser/bak;->bdW:Lcom/kingroot/kinguser/bah;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bah;->getUpgradeInfo(I)Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    move-result-object v1

    .line 733
    if-nez v1, :cond_0

    .line 735
    const/4 v0, 0x0

    const/4 v1, -0x6

    :try_start_0
    invoke-interface {p2, v0, v1}, Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;->onFailed(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :goto_0
    const/4 v0, 0x0

    .line 753
    :goto_1
    return v0

    .line 742
    :cond_0
    new-instance v2, Lcom/kingroot/kinguser/bak$a;

    invoke-direct {v2, p2}, Lcom/kingroot/kinguser/bak$a;-><init>(Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;)V

    .line 745
    iget-object v3, p0, Lcom/kingroot/kinguser/bak;->bed:Landroid/util/SparseArray;

    monitor-enter v3

    .line 746
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bak;->bed:Landroid/util/SparseArray;

    iget v4, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/vh;

    .line 747
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vh;->getStatus()I

    move-result v4

    if-nez v4, :cond_1

    .line 748
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vk;)V

    .line 749
    const/4 v0, 0x1

    monitor-exit v3

    goto :goto_1

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 753
    invoke-direct {p0, v1, v2}, Lcom/kingroot/kinguser/bak;->a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;Lcom/kingroot/kinguser/vk;)Z

    move-result v0

    goto :goto_1

    .line 736
    :catch_0
    move-exception v0

    goto :goto_0
.end method
