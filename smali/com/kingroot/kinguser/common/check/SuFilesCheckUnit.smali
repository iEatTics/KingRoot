.class public Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;
.super Lcom/kingroot/kinguser/common/check/BaseSuCheckUnit;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final auc:Ljava/lang/String;

.field private static final aud:Ljava/lang/String;

.field private static final aue:Ljava/lang/String;


# instance fields
.field private atZ:Z

.field private atu:Z

.field private aua:Z

.field private aub:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "p8"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->auc:Ljava/lang/String;

    .line 67
    const-string v0, "p9"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->aud:Ljava/lang/String;

    .line 68
    const-string v0, "p10"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->aue:Ljava/lang/String;

    .line 456
    new-instance v0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$4;

    invoke-direct {v0}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$4;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/common/check/BaseSuCheckUnit;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->atu:Z

    .line 62
    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->atZ:Z

    .line 63
    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->aua:Z

    .line 64
    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->aub:Z

    return-void
.end method

.method private static a(Lcom/kingroot/kinguser/abc;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 391
    sget-object v1, Lcom/kingroot/kinguser/aas;->XR:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-static {p2, v2}, Lcom/kingroot/kinguser/aar;->r(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    const-string v1, "cat %s > %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kingroot/kinguser/aas;->XW:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    const-string v1, "chmod 0%o %s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p2, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-static {p2, v3}, Lcom/kingroot/kinguser/aar;->r(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 398
    sget-object v1, Lcom/kingroot/kinguser/aas;->XS:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 402
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_0

    move v1, v2

    .line 404
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 405
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    .line 408
    sget-object v5, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/kingroot/kinguser/aas;->XQ:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 409
    invoke-static {}, Lcom/kingroot/kinguser/aar;->pQ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    :cond_0
    :goto_1
    return v2

    .line 404
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private static a(Lcom/kingroot/kinguser/abc;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    const/16 v4, 0x1ed

    .line 424
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cw()I

    move-result v1

    .line 425
    invoke-static {p0, p1, p2, v1}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->a(Lcom/kingroot/kinguser/abc;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 426
    if-eqz v0, :cond_0

    const/16 v2, 0xded

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    .line 428
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/aks;->ek(I)V

    .line 435
    invoke-static {p0, p1, p2, v4}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->a(Lcom/kingroot/kinguser/abc;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 440
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/kingroot/kinguser/abj;->er(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 429
    :catch_0
    move-exception v1

    .line 430
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 440
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->auc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->aud:Ljava/lang/String;

    return-object v0
.end method

.method private ag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static f(Lcom/kingroot/kinguser/abc;)V
    .locals 3

    .prologue
    .line 378
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
    sget-object v1, Lcom/kingroot/kinguser/aas;->XR:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    const-string v1, "/system/xbin/ku.sud.tmp"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/aar;->r(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/xbin/ku.sud.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    .line 384
    return-void
.end method

.method private f(ZZ)Z
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 72
    invoke-static {}, Lcom/kingroot/kinguser/ajj;->zl()Ljava/lang/String;

    move-result-object v2

    .line 75
    sget-object v3, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/zn;->H(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 78
    if-nez v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 v3, -0x3

    if-eq v2, v3, :cond_0

    const/4 v3, -0x4

    if-eq v2, v3, :cond_0

    .line 88
    if-nez p2, :cond_3

    move v0, v1

    .line 90
    goto :goto_0

    .line 93
    :cond_3
    sget-object v2, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/bdl;->kR(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 97
    sget-object v0, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bdl;->kS(Ljava/lang/String;)Lcom/kingroot/kinguser/bdl$a;

    move-result-object v0

    .line 98
    if-nez v0, :cond_4

    move v0, v1

    .line 99
    goto :goto_0

    .line 103
    :cond_4
    const-string v2, "kinguser"

    iget-object v3, v0, Lcom/kingroot/kinguser/bdl$a;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 104
    goto :goto_0

    .line 108
    :cond_5
    sget-object v2, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/bdl;->kT(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 109
    goto :goto_0

    .line 113
    :cond_6
    iget v2, v0, Lcom/kingroot/kinguser/bdl$a;->priority:I

    if-ge v4, v2, :cond_7

    .line 114
    new-instance v0, Lcom/kingroot/kinguser/ajd;

    const-string v1, "Lower priority, exit"

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ajd;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_7
    iget v0, v0, Lcom/kingroot/kinguser/bdl$a;->priority:I

    if-ne v4, v0, :cond_8

    .line 118
    new-instance v0, Lcom/kingroot/kinguser/ajd;

    const-string v1, "Not silent check and same priority"

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ajd;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v0, v1

    .line 120
    goto :goto_0

    .line 125
    :cond_9
    sget-object v2, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/abj;->en(Ljava/lang/String;)Z

    move-result v2

    .line 126
    if-nez v2, :cond_a

    move v0, v1

    .line 128
    goto :goto_0

    .line 132
    :cond_a
    invoke-static {}, Lcom/kingroot/kinguser/akf;->An()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.kingroot.kinguser"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    .line 133
    goto :goto_0

    .line 137
    :cond_b
    const/4 v2, 0x0

    .line 139
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v3

    const-string v4, "com.kingroot.kinguser"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/kingroot/kinguser/zh;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 141
    :goto_1
    if-eqz v2, :cond_c

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_0

    :cond_c
    move v0, v1

    .line 143
    goto :goto_0

    .line 140
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static declared-synchronized gp(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 337
    const-class v1, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$3;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static gq(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 359
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    .line 360
    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 374
    :goto_0
    return v1

    .line 365
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/aks;->Cj()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 366
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/kingroot/kinguser/aks;->bk(Z)V

    .line 370
    :cond_1
    const-string v3, "/system/xbin/ku.sud.tmp"

    invoke-static {v2, p0, v3, v0}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->a(Lcom/kingroot/kinguser/abc;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 371
    invoke-static {v2}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->f(Lcom/kingroot/kinguser/abc;)V

    .line 374
    if-eqz v3, :cond_2

    sget-object v3, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-static {v2, p0, v3, v1}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->a(Lcom/kingroot/kinguser/abc;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic gr(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 59
    invoke-static {p0}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->gq(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic pC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->aue:Ljava/lang/String;

    return-object v0
.end method

.method private zm()Z
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    sget-object v1, Lcom/kingroot/kinguser/bha;->bpu:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->ag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    sget-object v1, Lcom/kingroot/kinguser/bha;->bpv:Ljava/lang/String;

    .line 166
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->ag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    sget-object v1, Lcom/kingroot/kinguser/bha;->bpx:Ljava/lang/String;

    .line 167
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->ag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    .line 167
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zn()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    sget-object v3, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    sget-object v4, Lcom/kingroot/kinguser/bha;->bpu:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->ag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    sget-object v3, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    sget-object v4, Lcom/kingroot/kinguser/bha;->bpu:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/aja;->ab(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    :cond_0
    sget-object v3, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    sget-object v4, Lcom/kingroot/kinguser/bha;->bpv:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->ag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 206
    sget-object v3, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    sget-object v4, Lcom/kingroot/kinguser/bha;->bpv:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/aja;->ab(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_1
    sget-object v3, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    sget-object v4, Lcom/kingroot/kinguser/bha;->bpx:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->ag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 210
    sget-object v3, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    sget-object v4, Lcom/kingroot/kinguser/bha;->bpx:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/aja;->ab(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 220
    :cond_3
    :goto_0
    return v0

    .line 216
    :cond_4
    sget-object v3, Lcom/kingroot/kinguser/aas;->XR:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 219
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    .line 220
    invoke-direct {p0}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->zm()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public d(ZZ)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->f(ZZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->atZ:Z

    .line 173
    iput-boolean v2, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->atu:Z

    .line 175
    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->atZ:Z

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/kingroot/kinguser/zn$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/zn$a;-><init>()V

    .line 178
    iput v2, v0, Lcom/kingroot/kinguser/zn$a;->WN:I

    .line 179
    iput v2, v0, Lcom/kingroot/kinguser/zn$a;->WO:I

    .line 180
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/aks;->Cw()I

    move-result v3

    iput v3, v0, Lcom/kingroot/kinguser/zn$a;->mode:I

    .line 181
    const-string v3, "u:object_r:system_file:s0"

    iput-object v3, v0, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    .line 182
    sget-object v3, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    .line 183
    invoke-static {v3, v0}, Lcom/kingroot/kinguser/zn;->a(Ljava/lang/String;Lcom/kingroot/kinguser/zn$a;)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->atu:Z

    .line 187
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->auc:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->aud:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->aue:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->aua:Z

    .line 191
    invoke-direct {p0}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->zm()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->aub:Z

    .line 196
    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->atZ:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->aua:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->atu:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->aub:Z

    if-nez v0, :cond_4

    :goto_2
    return v1

    :cond_2
    move v0, v2

    .line 183
    goto :goto_0

    :cond_3
    move v0, v2

    .line 188
    goto :goto_1

    :cond_4
    move v1, v2

    .line 196
    goto :goto_2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public yQ()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 226
    .line 228
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cs()I

    move-result v4

    .line 232
    sget v0, Lcom/kingroot/kinguser/ajb;->atB:I

    if-ge v4, v0, :cond_0

    .line 233
    invoke-static {v2}, Lcom/kingroot/kinguser/aif;->dx(I)Lcom/kingroot/kinguser/cd;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v5, 0x186bf

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 240
    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->atZ:Z

    if-eqz v0, :cond_4

    .line 243
    invoke-static {}, Lcom/kingroot/kinguser/ajj;->zl()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->gp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 257
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v5, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->aub:Z

    if-eqz v5, :cond_1

    .line 258
    invoke-direct {p0}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->zn()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v1

    .line 267
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v5, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->aua:Z

    if-eqz v5, :cond_2

    .line 270
    new-instance v5, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$1;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$1;-><init>(Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;)V

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_2
    if-eqz v0, :cond_6

    .line 299
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Fb()V

    .line 302
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v5, 0x186c0

    invoke-virtual {v1, v5}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 305
    invoke-static {v2}, Lcom/kingroot/kinguser/wb;->U(Z)V

    .line 312
    :goto_1
    sget v1, Lcom/kingroot/kinguser/ajb;->atB:I

    if-ge v4, v1, :cond_3

    .line 313
    invoke-static {v7}, Lcom/kingroot/kinguser/aif;->dx(I)Lcom/kingroot/kinguser/cd;

    move-result-object v1

    .line 314
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-static {}, Lcom/kingroot/kinguser/wm;->nu()Lcom/kingroot/kinguser/wm;

    move-result-object v2

    new-instance v4, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$2;

    invoke-direct {v4, p0, v3, v1}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$2;-><init>(Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;Ljava/util/ArrayList;Lcom/kingroot/kinguser/cd;)V

    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/wm;->post(Ljava/lang/Runnable;)Z

    .line 328
    :cond_3
    return v0

    .line 247
    :cond_4
    iget-boolean v0, p0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;->atu:Z

    if-eqz v0, :cond_5

    .line 249
    new-instance v0, Lcom/kingroot/kinguser/zn$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/zn$a;-><init>()V

    .line 250
    iput v1, v0, Lcom/kingroot/kinguser/zn$a;->WN:I

    .line 251
    iput v1, v0, Lcom/kingroot/kinguser/zn$a;->WO:I

    .line 252
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingroot/kinguser/aks;->Cw()I

    move-result v5

    iput v5, v0, Lcom/kingroot/kinguser/zn$a;->mode:I

    .line 253
    const-string v5, "u:object_r:system_file:s0"

    iput-object v5, v0, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    .line 254
    sget-object v5, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/kingroot/kinguser/zn;->b(Ljava/lang/String;Lcom/kingroot/kinguser/zn$a;)V

    :cond_5
    move v0, v2

    goto :goto_0

    .line 308
    :cond_6
    invoke-static {v1}, Lcom/kingroot/kinguser/wb;->U(Z)V

    goto :goto_1
.end method

.method public ze()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x1

    return v0
.end method
