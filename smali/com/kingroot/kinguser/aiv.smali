.class public Lcom/kingroot/kinguser/aiv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aiv$a;
    }
.end annotation


# static fields
.field private static volatile ass:Lcom/kingroot/kinguser/aiv;


# instance fields
.field private ast:Lcom/kingroot/kinguser/abm;

.field private final asu:Ljava/lang/Object;

.field private asv:Lcom/kingroot/kinguser/bed;

.field private asw:Lcom/kingroot/kinguser/bed;

.field private asx:Lcom/kingroot/kinguser/bed;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aiv;->asu:Ljava/lang/Object;

    .line 205
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aiv$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aiv$1;-><init>(Lcom/kingroot/kinguser/aiv;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aiv;->asv:Lcom/kingroot/kinguser/bed;

    .line 813
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aiv$4;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aiv$4;-><init>(Lcom/kingroot/kinguser/aiv;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aiv;->asw:Lcom/kingroot/kinguser/bed;

    .line 858
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aiv$5;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aiv$5;-><init>(Lcom/kingroot/kinguser/aiv;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aiv;->asx:Lcom/kingroot/kinguser/bed;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aiv;Ljava/io/File;I)I
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/aiv;->d(Ljava/io/File;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aiv;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/kingroot/kinguser/aiv;->yy()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aiv;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aiv;->dE(I)V

    return-void
.end method

.method private ap(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 597
    const/4 v0, 0x0

    .line 598
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    :cond_0
    :goto_0
    return v0

    .line 602
    :cond_1
    invoke-static {p1}, Lcom/kingroot/kinguser/ait;->ao(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 605
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 606
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    .line 607
    if-eqz v0, :cond_0

    .line 612
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/common/utils/system/ProcessUtils;->m(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/io/File;)I
    .locals 2

    .prologue
    .line 235
    const/4 v0, -0x1

    .line 250
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/aiv;->c(Landroid/content/Context;Ljava/io/File;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 258
    :goto_0
    return v0

    .line 254
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 5

    .prologue
    .line 439
    iget-object v0, p0, Lcom/kingroot/kinguser/aiv;->ast:Lcom/kingroot/kinguser/abm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/aiv;->ast:Lcom/kingroot/kinguser/abm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm;->qR()Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aiv;->ast:Lcom/kingroot/kinguser/abm;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/abm;->b(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 447
    :goto_0
    return-object v0

    .line 442
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 443
    new-instance v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    iget-object v2, p1, Lcom/kingroot/common/utils/system/VTCommand;->mCmdFlag:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ""

    .line 444
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/kingroot/common/utils/system/VTCmdResult;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/abc;->a(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Ljava/io/File;I)I
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 163
    const/4 v6, -0x1

    .line 164
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v7

    .line 166
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/aiv;->C(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/abi;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    .line 170
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 176
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18752

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 177
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    move v1, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ady;->b(IIIII)V

    .line 180
    invoke-direct {p0}, Lcom/kingroot/kinguser/aiv;->yx()V

    .line 182
    invoke-direct {p0, v7, p1}, Lcom/kingroot/kinguser/aiv;->b(Landroid/content/Context;Ljava/io/File;)I

    move-result v0

    .line 189
    :goto_0
    return v0

    .line 184
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18754

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    move v1, p2

    move v4, v3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ady;->b(IIIII)V

    move v0, v6

    goto :goto_0
.end method

.method private declared-synchronized dE(I)V
    .locals 3

    .prologue
    .line 894
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Dt()I

    move-result v0

    .line 895
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Dv()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 898
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->es(I)V

    .line 899
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aiv;->aN(Z)I

    move-result v0

    .line 900
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 902
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/ady;->G(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 906
    :cond_1
    if-nez v0, :cond_2

    .line 908
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/aks;->bF(Z)V

    .line 910
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/aks;->bG(Z)V

    .line 911
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/aks;->bH(Z)V

    .line 913
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/kingroot/kinguser/ady;->G(II)V

    .line 915
    if-nez v0, :cond_0

    .line 917
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bF(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 894
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 4

    .prologue
    .line 427
    iget-object v0, p0, Lcom/kingroot/kinguser/aiv;->ast:Lcom/kingroot/kinguser/abm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/aiv;->ast:Lcom/kingroot/kinguser/abm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm;->qR()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aiv;->ast:Lcom/kingroot/kinguser/abm;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/abm;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 435
    :goto_0
    return-object v0

    .line 430
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 431
    new-instance v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    .line 432
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/kingroot/common/utils/system/VTCmdResult;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    goto :goto_0
.end method

.method private static gj(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 351
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "echo"

    .line 356
    :goto_0
    return-object v0

    .line 353
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aip;->ya()Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "echo"

    goto :goto_0

    .line 356
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pm install -r "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private yA()Z
    .locals 2

    .prologue
    .line 804
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 805
    const-string v1, "com.qihoo360.mobilesafe"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.qihoo.antivirus"

    .line 806
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    :cond_0
    const/4 v0, 0x1

    .line 810
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static yB()Ljava/lang/String;
    .locals 3

    .prologue
    .line 825
    const-string v0, "/system/app"

    .line 826
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Kinguser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Kinguser.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private yC()Ljava/io/File;
    .locals 3

    .prologue
    .line 976
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/zh;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 977
    if-eqz v1, :cond_0

    .line 978
    new-instance v0, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :goto_0
    return-object v0

    .line 980
    :catch_0
    move-exception v0

    .line 983
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static yw()Lcom/kingroot/kinguser/aiv;
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/kingroot/kinguser/aiv;->ass:Lcom/kingroot/kinguser/aiv;

    if-nez v0, :cond_1

    .line 98
    const-class v1, Lcom/kingroot/kinguser/aiv;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aiv;->ass:Lcom/kingroot/kinguser/aiv;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/kingroot/kinguser/aiv;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aiv;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aiv;->ass:Lcom/kingroot/kinguser/aiv;

    .line 102
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/aiv;->ass:Lcom/kingroot/kinguser/aiv;

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private yx()V
    .locals 4

    .prologue
    .line 196
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ii()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x280

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->gZ(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hZ()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->er(I)V

    .line 199
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aeg;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_0

    .line 201
    iget-wide v2, v1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mTaskId:J

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bb(J)V

    .line 203
    :cond_0
    return-void
.end method

.method private yy()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 557
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CY()I

    move-result v0

    .line 558
    if-lt v0, v6, :cond_0

    .line 562
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aei;->uo()Ljava/io/File;

    move-result-object v1

    .line 563
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 564
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aks;->ep(I)V

    .line 568
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/aiv;->C(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/aks;->bz(Z)V

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/local/tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kill -9 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    const-string v3, "cat %s > %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pm install -r "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-direct {p0}, Lcom/kingroot/kinguser/aiv;->yx()V

    .line 582
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aeg;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aeh;->b(Lcom/kingroot/kingmaster/network/updata/CheckResult;I)V

    .line 583
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/aiv;->ap(Ljava/util/List;)Z

    .line 589
    :cond_1
    return-void
.end method


# virtual methods
.method public C(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 1009
    const-string v0, "191240FCB048127DB9110D1B30537FDE"

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/kingroot/kinguser/aiv;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected Z(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 288
    const/4 v1, -0x1

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 347
    :cond_1
    :goto_0
    return v0

    .line 293
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 294
    sget-object v3, Lcom/kingroot/kinguser/aas;->XR:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    .line 298
    if-eqz v3, :cond_3

    .line 299
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_6

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service call activity 79 s16 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_3
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_4

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-r "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/system/app"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Kinguser.apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/system/app"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Kinguser"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XW:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v5, "chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_4
    const-string v4, "cat %s > %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    aput-object p2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 0644 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    if-eqz v3, :cond_5

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pm install -r "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_5
    invoke-static {v2}, Lcom/kingroot/kinguser/ait;->ao(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 338
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 303
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kill -9 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method public a(Ljava/io/File;Z)Lcom/kingroot/kinguser/aiv$a;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    .line 118
    new-instance v0, Lcom/kingroot/kinguser/aiv$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aiv$a;-><init>()V

    .line 119
    const/4 v2, -0x1

    iput v2, v0, Lcom/kingroot/kinguser/aiv$a;->retCode:I

    .line 120
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/aiv;->aa(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/aiv$a;

    move-result-object v0

    .line 123
    if-eqz p2, :cond_0

    iget v2, v0, Lcom/kingroot/kinguser/aiv$a;->retCode:I

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {p0, v1, p1}, Lcom/kingroot/kinguser/aiv;->c(Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/aiv$a;->retCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-object v0

    .line 130
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1013
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return v0

    .line 1018
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/aiv;->gk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1019
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1024
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/aaz;->ea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1025
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1026
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1033
    :cond_2
    invoke-static {p1}, Lcom/kingroot/kinguser/ajh;->E(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1037
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected declared-synchronized aN(Z)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 500
    monitor-enter p0

    .line 501
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/aiv;->yC()Ljava/io/File;

    move-result-object v2

    .line 502
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v1

    .line 538
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 507
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 508
    new-instance v3, Lcom/kingroot/kinguser/aiu;

    invoke-direct {v3}, Lcom/kingroot/kinguser/aiu;-><init>()V

    .line 509
    invoke-virtual {v3}, Lcom/kingroot/kinguser/aiu;->yu()Ljava/util/List;

    move-result-object v3

    .line 510
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v0, :cond_1

    .line 512
    :cond_3
    if-eqz p1, :cond_4

    .line 513
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yB()Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-virtual {p0, v2, v0}, Lcom/kingroot/kinguser/aiv;->Z(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public aO(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 627
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    .line 628
    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Dg()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Df()Z

    move-result v2

    if-nez v2, :cond_1

    .line 679
    :cond_0
    :goto_0
    return v0

    .line 634
    :cond_1
    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->CF()Z

    move-result v2

    .line 635
    if-eqz p1, :cond_4

    .line 636
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/common/utils/system/ProcessUtils;->an(Landroid/content/Context;)Z

    move-result v3

    .line 637
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 650
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aeg;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v2

    .line 651
    if-eqz v2, :cond_3

    iget-boolean v2, v2, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mIsSilentDownload:Z

    if-eqz v2, :cond_0

    .line 657
    :cond_3
    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->EN()Z

    move-result v2

    if-nez v2, :cond_0

    .line 662
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 667
    invoke-direct {p0}, Lcom/kingroot/kinguser/aiv;->yA()Z

    move-result v2

    if-nez v2, :cond_0

    .line 673
    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->CY()I

    move-result v1

    .line 674
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 679
    const/4 v0, 0x1

    goto :goto_0

    .line 643
    :cond_4
    if-nez v2, :cond_2

    goto :goto_0
.end method

.method protected aa(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/aiv$a;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 368
    new-instance v0, Lcom/kingroot/kinguser/aiv$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aiv$a;-><init>()V

    .line 369
    iput v3, v0, Lcom/kingroot/kinguser/aiv$a;->retCode:I

    .line 370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-object v0

    .line 376
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/kingroot/kinguser/aiv;->asu:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/aiv;->ast:Lcom/kingroot/kinguser/abm;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/aiv;->ast:Lcom/kingroot/kinguser/abm;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/abm;->qR()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 378
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/aco;->rS()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/abj;->eq(Ljava/lang/String;)Lcom/kingroot/kinguser/abm;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/aiv;->ast:Lcom/kingroot/kinguser/abm;

    .line 380
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    :try_start_2
    iget-object v1, p0, Lcom/kingroot/kinguser/aiv;->ast:Lcom/kingroot/kinguser/abm;

    if-nez v1, :cond_4

    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/aiv;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 388
    invoke-static {p1}, Lcom/kingroot/kinguser/aiv;->gj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    new-instance v4, Lcom/kingroot/common/utils/system/VTCommand;

    const-wide/32 v6, 0x2bf20

    invoke-direct {v4, v1, v1, v6, v7}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 390
    invoke-direct {p0, v4}, Lcom/kingroot/kinguser/aiv;->b(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/aip;->a(Lcom/kingroot/common/utils/system/VTCmdResult;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    .line 392
    iget-object v4, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    const-string v5, "Failure"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 394
    iget-object v4, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    const-string v5, "INSTALL_FAILED_VERSION_DOWNGRADE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 395
    const/4 v2, -0x3

    iput v2, v0, Lcom/kingroot/kinguser/aiv$a;->retCode:I

    .line 415
    :goto_1
    iget-object v2, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/kingroot/kinguser/aiv$a;->asD:Ljava/lang/String;

    .line 416
    iget-object v1, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/aiv$a;->asC:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 419
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 380
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 396
    :cond_5
    iget-object v4, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    const-string v5, "INSTALL_FAILED_INVALID_APK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/local/tmp"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/kingroot/kinguser/aiv;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 400
    invoke-static {v1}, Lcom/kingroot/kinguser/aiv;->gj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/aiv;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    .line 401
    iget-object v4, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "failure"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 402
    const/4 v2, -0x2

    iput v2, v0, Lcom/kingroot/kinguser/aiv$a;->retCode:I

    goto :goto_1

    .line 404
    :cond_6
    invoke-virtual {v1}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_2
    iput v2, v0, Lcom/kingroot/kinguser/aiv$a;->retCode:I

    goto/16 :goto_1

    :cond_7
    move v2, v3

    goto :goto_2

    .line 408
    :cond_8
    const/4 v2, -0x2

    iput v2, v0, Lcom/kingroot/kinguser/aiv$a;->retCode:I

    goto/16 :goto_1

    .line 411
    :cond_9
    invoke-virtual {v1}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_3
    iput v2, v0, Lcom/kingroot/kinguser/aiv$a;->retCode:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :cond_a
    move v2, v3

    goto :goto_3
.end method

.method protected c(Landroid/content/Context;Ljava/io/File;)I
    .locals 4

    .prologue
    .line 266
    const/4 v0, -0x1

    .line 268
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 270
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    const/4 v0, 0x1

    .line 277
    :goto_0
    return v0

    .line 274
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public dC(I)V
    .locals 2

    .prologue
    .line 545
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aiv;->aO(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aiv;->asw:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/aiv;->dD(I)V

    goto :goto_0
.end method

.method public dD(I)V
    .locals 3

    .prologue
    .line 838
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Dw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 841
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bH(Z)V

    .line 850
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Dv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 852
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/aiv;->asx:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    .line 856
    :cond_1
    return-void
.end method

.method protected dF(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 936
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Dt()I

    move-result v1

    .line 937
    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 968
    :cond_0
    :goto_0
    return v0

    .line 942
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Dv()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    if-eqz p1, :cond_2

    .line 948
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/common/utils/system/ProcessUtils;->an(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 949
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.kingroot.master"

    invoke-static {v1, v2}, Lcom/kingroot/common/utils/system/ProcessUtils;->q(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 950
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.kingstudio.purify"

    invoke-static {v1, v2}, Lcom/kingroot/common/utils/system/ProcessUtils;->q(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 956
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    .line 957
    invoke-virtual {v1}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 962
    invoke-static {v1}, Lcom/kingroot/kinguser/aio;->d(Lcom/kingroot/kinguser/abc;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 964
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->bG(Z)V

    goto :goto_0

    .line 968
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method gk(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1041
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    const-string v0, ""

    .line 1054
    :goto_0
    return-object v0

    .line 1046
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/zh;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1047
    if-eqz v0, :cond_1

    .line 1048
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1050
    :catch_0
    move-exception v0

    .line 1054
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public l(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V
    .locals 7

    .prologue
    .line 785
    invoke-static {p1}, Lcom/kingroot/kinguser/aei;->b(Lcom/kingroot/kingmaster/network/updata/CheckResult;)Ljava/io/File;

    move-result-object v0

    .line 786
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x0

    new-instance v6, Lcom/kingroot/kinguser/aiv$3;

    invoke-direct {v6, p0, v0}, Lcom/kingroot/kinguser/aiv$3;-><init>(Lcom/kingroot/kinguser/aiv;Ljava/io/File;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 799
    :cond_0
    return-void
.end method

.method public s(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/aiv;->asv:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    goto :goto_0
.end method

.method public yD()V
    .locals 6

    .prologue
    .line 990
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/aiv$6;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/aiv$6;-><init>(Lcom/kingroot/kinguser/aiv;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 1003
    return-void
.end method

.method public declared-synchronized yz()Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 688
    monitor-enter p0

    .line 689
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CY()I

    move-result v3

    .line 690
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Di()I

    move-result v4

    .line 691
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hZ()I

    move-result v5

    .line 693
    const-wide/16 v0, 0x0

    .line 694
    if-ge v4, v5, :cond_0

    .line 697
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Dj()J

    move-result-wide v0

    move-wide v8, v0

    move v6, v2

    .line 703
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Dc()Z

    move-result v0

    if-nez v0, :cond_5

    .line 705
    if-nez v6, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CZ()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    .line 781
    :goto_1
    monitor-exit p0

    return v0

    .line 700
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v4

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hZ()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/aks;->er(I)V

    move-wide v8, v0

    goto :goto_0

    .line 710
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Da()I

    move-result v0

    .line 711
    if-eqz v6, :cond_4

    .line 714
    invoke-static {v8, v9, v0}, Lcom/kingroot/kinguser/aeh;->f(JI)V

    .line 721
    :goto_2
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->by(Z)V

    .line 722
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->eq(I)V

    .line 750
    :cond_2
    :goto_3
    if-eqz v6, :cond_3

    .line 752
    invoke-direct {p0}, Lcom/kingroot/kinguser/aiv;->yx()V

    .line 753
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bp(Z)V

    .line 755
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adm;->su()V

    .line 758
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/kingroot/kinguser/aeg;->ab(J)V

    .line 761
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/aiv$2;

    invoke-direct {v5, p0, v8, v9}, Lcom/kingroot/kinguser/aiv$2;-><init>(Lcom/kingroot/kinguser/aiv;J)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 776
    invoke-static {}, Lcom/kingroot/kinguser/ain;->xW()Lcom/kingroot/kinguser/ain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ain;->xX()V

    .line 779
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->ei(I)V

    :cond_3
    move v0, v6

    .line 781
    goto :goto_1

    .line 717
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aeg;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/aeh;->c(Lcom/kingroot/kingmaster/network/updata/CheckResult;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 725
    :cond_5
    if-lt v3, v2, :cond_2

    .line 727
    if-eqz v6, :cond_7

    .line 731
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ady;->b(IIIII)V

    .line 732
    const/4 v0, 0x5

    invoke-static {v8, v9, v0}, Lcom/kingroot/kinguser/aeh;->f(JI)V

    .line 735
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->ep(I)V

    .line 746
    :cond_6
    :goto_4
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bz(Z)V

    goto :goto_3

    .line 738
    :cond_7
    const/4 v0, 0x3

    if-gt v3, v0, :cond_6

    .line 739
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Dg()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 740
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Df()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 741
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ady;->b(IIIII)V

    .line 742
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aeg;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aeh;->c(Lcom/kingroot/kingmaster/network/updata/CheckResult;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method
