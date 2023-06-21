.class public Lcom/kingroot/kinguser/bbf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bbf$a;
    }
.end annotation


# static fields
.field public static final beO:Ljava/lang/String;

.field public static final beP:Ljava/lang/String;

.field public static final beQ:Ljava/lang/String;

.field public static final beR:Ljava/lang/String;

.field private static volatile beS:Lcom/kingroot/kinguser/bbf;


# instance fields
.field private beT:Lcom/kingroot/kinguser/bbf$a;

.field private beU:Z

.field private beV:J

.field private final beW:Ljava/lang/Object;

.field beX:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/model/SuRequestCmdModel;",
            ">;"
        }
    .end annotation
.end field

.field private final beY:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "s1"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bbf;->beO:Ljava/lang/String;

    .line 56
    const-string v0, "s2"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bbf;->beP:Ljava/lang/String;

    .line 57
    const-string v0, "s3"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bbf;->beQ:Ljava/lang/String;

    .line 58
    const-string v0, "s4"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bbf;->beR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bbf;->beU:Z

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bbf;->beV:J

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bbf;->beW:Ljava/lang/Object;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bbf;->beX:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bbf;->beY:Ljava/util/LinkedList;

    .line 132
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bbf;->mContext:Landroid/content/Context;

    .line 133
    new-instance v0, Lcom/kingroot/kinguser/bbf$a;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bbf$a;-><init>(Lcom/kingroot/kinguser/bbf;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bbf;->beT:Lcom/kingroot/kinguser/bbf$a;

    .line 134
    return-void
.end method

.method public static K(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 554
    packed-switch v1, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    .line 632
    :cond_1
    :goto_0
    return v0

    .line 557
    :pswitch_1
    const-string v2, "com.qq.AppService"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 563
    :pswitch_2
    const-string v2, "pj.ishuaji"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 569
    :pswitch_3
    const-string v2, "cn.opda.a.phonoalbumshoushou"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 577
    :pswitch_4
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/bbf;->L(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 581
    const-string v2, "com.shuame.sprite"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.android.ss"

    .line 582
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.shuame.romupdate"

    .line 583
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.shuame.mobile"

    .line 584
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.shuame.mobile.tv"

    .line 585
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.shuame.rootgenius"

    .line 586
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.shuame.rootgenius.tv"

    .line 587
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 595
    :pswitch_5
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/bbf;->L(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 599
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 607
    :pswitch_6
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/bbf;->L(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 611
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ""

    .line 612
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ""

    .line 613
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 619
    :pswitch_7
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/bbf;->L(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 625
    :pswitch_8
    const-string v2, "com.xxAssistant"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 554
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private static L(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 662
    const/16 v1, 0x7d0

    if-ne p1, v1, :cond_0

    .line 663
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    .line 664
    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Ci()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 665
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070274

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 666
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v2, p0, v4, v5}, Lcom/kingroot/kinguser/bbt;->addAllowRule(Ljava/lang/String;Ljava/lang/String;J)V

    .line 667
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->bj(Z)V

    .line 668
    const/4 v0, 0x1

    .line 671
    :cond_0
    return v0
.end method

.method private We()V
    .locals 1

    .prologue
    .line 773
    invoke-static {}, Lcom/kingroot/kinguser/aih;->xI()Lcom/kingroot/kinguser/aih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aih;->xJ()V

    .line 774
    return-void
.end method

.method public static Wl()Lcom/kingroot/kinguser/bbf;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/kingroot/kinguser/bbf;->beS:Lcom/kingroot/kinguser/bbf;

    if-nez v0, :cond_1

    .line 122
    const-class v1, Lcom/kingroot/kinguser/bbf;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bbf;->beS:Lcom/kingroot/kinguser/bbf;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/kingroot/kinguser/bbf;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bbf;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bbf;->beS:Lcom/kingroot/kinguser/bbf;

    .line 126
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bbf;->beS:Lcom/kingroot/kinguser/bbf;

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static Wn()V
    .locals 7

    .prologue
    .line 532
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 533
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 535
    if-nez v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    :try_start_0
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 541
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 542
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_2

    const-string v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 543
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 546
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/kingroot/kinguser/aks;)V
    .locals 1

    .prologue
    .line 778
    invoke-static {}, Lcom/kingroot/kinguser/avm;->RK()Lcom/kingroot/kinguser/avm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/avm;->RP()V

    .line 780
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aks;->BW()Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    :goto_0
    return-void

    .line 785
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/avv;->Sj()Lcom/kingroot/kinguser/avv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/avv;->uv()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bbf;Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bbf;->e(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    return-void
.end method

.method private a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZZLjava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 720
    iget-object v6, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    .line 721
    iget-object v7, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mAppName:Ljava/lang/String;

    .line 724
    sget-object v0, Lcom/kingroot/kinguser/bbf;->beP:Ljava/lang/String;

    .line 725
    if-eqz p2, :cond_0

    :goto_0
    invoke-static {p1, v1, v0}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V

    .line 728
    if-eqz p3, :cond_1

    .line 753
    :goto_1
    return-void

    .line 725
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bbf;->beQ:Ljava/lang/String;

    goto :goto_0

    .line 733
    :cond_1
    iget v2, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    if-eqz p2, :cond_3

    move v0, v1

    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/kingroot/kinguser/bbf;->ab(II)Z

    move-result v0

    .line 734
    if-nez v0, :cond_2

    .line 735
    if-eqz p4, :cond_4

    .line 737
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, p4, v1}, Lcom/kingroot/kinguser/bbt;->rootMgrToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_2
    :goto_3
    if-eqz p2, :cond_6

    const/4 v9, 0x2

    .line 751
    :goto_4
    new-instance v1, Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v8, 0x64

    invoke-direct/range {v1 .. v9}, Lcom/kingroot/kinguser/model/RootMgrLogInfo;-><init>(JJLjava/lang/String;Ljava/lang/String;II)V

    .line 752
    invoke-static {}, Lcom/kingroot/kinguser/bbo;->Wv()Lcom/kingroot/kinguser/bbo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbo;->addLog(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V

    goto :goto_1

    .line 733
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 740
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0703b3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703b4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 742
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07027c

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v2

    if-eqz p2, :cond_5

    :goto_5
    iget-object v1, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/bbt;->rootMgrToast(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_5

    .line 750
    :cond_6
    const/4 v9, 0x3

    goto/16 :goto_4
.end method

.method private ab(II)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 758
    iget-object v1, p0, Lcom/kingroot/kinguser/bbf;->beT:Lcom/kingroot/kinguser/bbf$a;

    iget-wide v4, v1, Lcom/kingroot/kinguser/bbf$a;->mTime:J

    sub-long v4, v2, v4

    .line 759
    iget-object v1, p0, Lcom/kingroot/kinguser/bbf;->beT:Lcom/kingroot/kinguser/bbf$a;

    iget v1, v1, Lcom/kingroot/kinguser/bbf$a;->mUid:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/bbf;->beT:Lcom/kingroot/kinguser/bbf$a;

    iget v1, v1, Lcom/kingroot/kinguser/bbf$a;->bfa:I

    if-ne v1, p2, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    const-wide/16 v6, 0xfa0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_0

    .line 760
    iget-object v1, p0, Lcom/kingroot/kinguser/bbf;->beT:Lcom/kingroot/kinguser/bbf$a;

    iget v4, v1, Lcom/kingroot/kinguser/bbf$a;->mCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/kingroot/kinguser/bbf$a;->mCount:I

    .line 761
    iget-object v1, p0, Lcom/kingroot/kinguser/bbf;->beT:Lcom/kingroot/kinguser/bbf$a;

    iput-wide v2, v1, Lcom/kingroot/kinguser/bbf$a;->mTime:J

    .line 768
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bbf;->beT:Lcom/kingroot/kinguser/bbf$a;

    iget v1, v1, Lcom/kingroot/kinguser/bbf$a;->mCount:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    :goto_1
    return v0

    .line 763
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bbf;->beT:Lcom/kingroot/kinguser/bbf$a;

    iput p1, v1, Lcom/kingroot/kinguser/bbf$a;->mUid:I

    .line 764
    iget-object v1, p0, Lcom/kingroot/kinguser/bbf;->beT:Lcom/kingroot/kinguser/bbf$a;

    iput p2, v1, Lcom/kingroot/kinguser/bbf$a;->bfa:I

    .line 765
    iget-object v1, p0, Lcom/kingroot/kinguser/bbf;->beT:Lcom/kingroot/kinguser/bbf$a;

    iput v0, v1, Lcom/kingroot/kinguser/bbf$a;->mCount:I

    .line 766
    iget-object v1, p0, Lcom/kingroot/kinguser/bbf;->beT:Lcom/kingroot/kinguser/bbf$a;

    iput-wide v2, v1, Lcom/kingroot/kinguser/bbf$a;->mTime:J

    goto :goto_0

    .line 768
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bbf;Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bbf;->f(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    return-void
.end method

.method private c(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/akh;->Au()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    sget-object v1, Lcom/kingroot/kinguser/bbf;->beQ:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bbf;->beY:Ljava/util/LinkedList;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bbf;->beX:Landroid/util/SparseArray;

    iget v2, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 86
    if-eqz v0, :cond_2

    .line 87
    :goto_1
    iget-object v2, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRt:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    if-eqz v2, :cond_1

    .line 88
    iget-object v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRt:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    goto :goto_1

    .line 90
    :cond_1
    iput-object p1, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRt:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 95
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 92
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bbf;->beX:Landroid/util/SparseArray;

    iget v2, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/bbf;->beY:Ljava/util/LinkedList;

    iget v2, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private e(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 201
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v4

    .line 204
    iget-object v0, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/bbf;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/kingroot/kinguser/bbf;->beO:Ljava/lang/String;

    invoke-static {p1, v3, v0}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V

    .line 206
    invoke-static {v1}, Lcom/kingroot/kinguser/wb;->U(Z)V

    .line 390
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/auw;->jn(Ljava/lang/String;)I

    move-result v0

    .line 212
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v2

    iget-object v5, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/kingroot/kinguser/bbt;->getRuleType(Ljava/lang/String;)I

    move-result v2

    .line 215
    new-instance v5, Ljava/util/HashSet;

    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingroot/kinguser/arv;->getUndeniedRiskApps()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 216
    invoke-static {}, Lcom/kingroot/kinguser/awb;->Sy()Lcom/kingroot/kinguser/awb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingroot/kinguser/awb;->Se()Ljava/util/Set;

    move-result-object v6

    .line 217
    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 219
    iget-object v6, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 220
    if-eqz v0, :cond_3

    .line 221
    invoke-static {v1, v0}, Lcom/kingroot/kinguser/auw;->U(II)I

    move-result v5

    if-lez v5, :cond_1

    move v0, v1

    .line 231
    :cond_1
    :goto_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 232
    iget-object v6, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v7}, Lcom/kingroot/kinguser/arv;->markDeniedRiskApps(Ljava/util/List;)V

    .line 234
    invoke-static {}, Lcom/kingroot/kinguser/awb;->Sy()Lcom/kingroot/kinguser/awb;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/kingroot/kinguser/awb;->d(Ljava/util/Set;)V

    .line 238
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/avp;->RQ()Lcom/kingroot/kinguser/avp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingroot/kinguser/avp;->RR()I

    move-result v5

    if-ne v5, v1, :cond_4

    .line 240
    iget-object v5, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    iget v6, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    invoke-static {v5, v6}, Lcom/kingroot/kinguser/bbf;->L(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 241
    sget-object v0, Lcom/kingroot/kinguser/bbf;->beO:Ljava/lang/String;

    invoke-static {p1, v3, v0}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 227
    goto :goto_1

    .line 247
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/auv;->QV()Lcom/kingroot/kinguser/auv;

    move-result-object v5

    iget-object v6, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/auv;->jl(Ljava/lang/String;)I

    move-result v5

    .line 250
    const/4 v6, 0x4

    if-ne v0, v6, :cond_5

    .line 251
    const-string v0, "S_DENY"

    invoke-static {p1, v3, v0}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :cond_5
    if-ne v5, v1, :cond_6

    .line 257
    const-string v0, "S_DENY"

    invoke-static {p1, v3, v0}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 262
    :cond_6
    const/4 v6, 0x6

    if-ne v0, v6, :cond_7

    .line 263
    sget-object v0, Lcom/kingroot/kinguser/bbf;->beO:Ljava/lang/String;

    invoke-static {p1, v3, v0}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :cond_7
    iget-object v6, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    iget v7, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    invoke-static {v6, v7}, Lcom/kingroot/kinguser/bbf;->K(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 269
    sget-object v0, Lcom/kingroot/kinguser/bbf;->beO:Ljava/lang/String;

    invoke-static {p1, v3, v0}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 274
    :cond_8
    invoke-virtual {v4}, Lcom/kingroot/kinguser/aks;->BQ()Z

    move-result v6

    if-nez v6, :cond_9

    .line 275
    sget-object v0, Lcom/kingroot/kinguser/bbf;->beQ:Ljava/lang/String;

    invoke-static {p1, v3, v0}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :cond_9
    const/4 v6, -0x1

    if-eq v2, v6, :cond_a

    .line 285
    packed-switch v2, :pswitch_data_0

    :cond_a
    move v2, v3

    .line 320
    :goto_2
    if-nez v2, :cond_b

    if-eqz v0, :cond_b

    .line 322
    packed-switch v0, :pswitch_data_1

    :cond_b
    move v0, v2

    .line 354
    :goto_3
    if-nez v0, :cond_c

    .line 356
    iget-object v2, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/bbf;->ko(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 357
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bbf;->h(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    .line 359
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    iget-object v2, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mAppName:Ljava/lang/String;

    iget-object v6, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v2, v6, v8, v9}, Lcom/kingroot/kinguser/bbt;->addAllowRule(Ljava/lang/String;Ljava/lang/String;J)V

    move v0, v1

    .line 365
    :cond_c
    if-nez v0, :cond_10

    invoke-static {}, Lcom/kingroot/kinguser/aig;->xC()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 366
    const/16 v0, 0x63

    if-ne v5, v0, :cond_f

    .line 368
    invoke-direct {p0, p1, v1, v1, v10}, Lcom/kingroot/kinguser/bbf;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZZLjava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    iget-object v2, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mAppName:Ljava/lang/String;

    iget-object v3, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v8, v9}, Lcom/kingroot/kinguser/bbt;->addAllowRule(Ljava/lang/String;Ljava/lang/String;J)V

    .line 379
    :goto_4
    if-nez v1, :cond_d

    .line 381
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bbf;->c(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    .line 382
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbt;->triggerSuRequestPrompt()V

    .line 386
    :cond_d
    invoke-direct {p0, v4}, Lcom/kingroot/kinguser/bbf;->a(Lcom/kingroot/kinguser/aks;)V

    .line 389
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbf;->We()V

    goto/16 :goto_0

    .line 288
    :pswitch_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    .line 290
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bbf;->g(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    :goto_5
    move v2, v1

    .line 296
    goto :goto_2

    .line 292
    :cond_e
    invoke-direct {p0, p1, v1, v3, v10}, Lcom/kingroot/kinguser/bbf;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZZLjava/lang/String;)V

    goto :goto_5

    .line 299
    :pswitch_1
    invoke-direct {p0, p1, v3, v3, v10}, Lcom/kingroot/kinguser/bbf;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZZLjava/lang/String;)V

    move v2, v1

    .line 302
    goto :goto_2

    .line 307
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bbf;->c(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    .line 308
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bbt;->triggerSuRequestPrompt()V

    move v2, v1

    .line 312
    goto :goto_2

    .line 324
    :pswitch_3
    invoke-virtual {v4}, Lcom/kingroot/kinguser/aks;->BW()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 325
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bbf;->h(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    .line 327
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    iget-object v2, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mAppName:Ljava/lang/String;

    iget-object v6, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v2, v6, v8, v9}, Lcom/kingroot/kinguser/bbt;->addAllowRule(Ljava/lang/String;Ljava/lang/String;J)V

    move v0, v1

    .line 328
    goto :goto_3

    .line 334
    :pswitch_4
    invoke-virtual {v4}, Lcom/kingroot/kinguser/aks;->BW()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 335
    invoke-direct {p0, p1, v3, v1, v10}, Lcom/kingroot/kinguser/bbf;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZZLjava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    iget-object v2, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mAppName:Ljava/lang/String;

    iget-object v6, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v2, v6, v8, v9}, Lcom/kingroot/kinguser/bbt;->addDenyRule(Ljava/lang/String;Ljava/lang/String;J)V

    move v0, v1

    .line 338
    goto/16 :goto_3

    .line 344
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bbf;->g(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    .line 346
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    iget-object v2, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mAppName:Ljava/lang/String;

    iget-object v6, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v2, v6, v8, v9}, Lcom/kingroot/kinguser/bbt;->addAllowRule(Ljava/lang/String;Ljava/lang/String;J)V

    move v0, v1

    .line 348
    goto/16 :goto_3

    .line 372
    :cond_f
    invoke-direct {p0, p1, v3, v1, v10}, Lcom/kingroot/kinguser/bbf;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZZLjava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    iget-object v2, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mAppName:Ljava/lang/String;

    iget-object v3, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v8, v9}, Lcom/kingroot/kinguser/bbt;->addDenyRule(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_4

    :cond_10
    move v1, v0

    goto :goto_4

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 322
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private declared-synchronized f(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 487
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BQ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x0

    sget-object v1, Lcom/kingroot/kinguser/bbf;->beQ:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :goto_0
    monitor-exit p0

    return-void

    .line 496
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/auw;->jn(Ljava/lang/String;)I

    move-result v0

    .line 497
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 498
    const/4 v0, 0x0

    const-string v1, "S_DENY"

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 502
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/auv;->QV()Lcom/kingroot/kinguser/auv;

    move-result-object v1

    iget-object v2, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/auv;->jl(Ljava/lang/String;)I

    move-result v1

    .line 503
    if-ne v1, v3, :cond_2

    .line 504
    const/4 v0, 0x0

    const-string v1, "S_DENY"

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 510
    const/4 v0, 0x0

    sget-object v1, Lcom/kingroot/kinguser/bbf;->beR:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v1

    iget-object v2, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bbt;->inDenyRuleList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 516
    const/4 v0, 0x0

    sget-object v1, Lcom/kingroot/kinguser/bbf;->beQ:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V

    goto :goto_0

    .line 520
    :cond_4
    if-ne v0, v3, :cond_5

    .line 522
    const/4 v0, 0x0

    sget-object v1, Lcom/kingroot/kinguser/bbf;->beQ:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V

    goto :goto_0

    .line 527
    :cond_5
    sget-object v0, Lcom/kingroot/kinguser/bbf;->beP:Ljava/lang/String;

    .line 528
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private g(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
    .locals 10

    .prologue
    .line 679
    iget-object v6, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    .line 680
    iget-object v7, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mAppName:Ljava/lang/String;

    .line 683
    const/4 v0, 0x0

    sget-object v1, Lcom/kingroot/kinguser/bbf;->beR:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V

    .line 686
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0703b3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 687
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07027c

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v1

    iget-object v2, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/bbt;->rootMgrToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    new-instance v1, Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v8, 0x64

    const/4 v9, 0x2

    invoke-direct/range {v1 .. v9}, Lcom/kingroot/kinguser/model/RootMgrLogInfo;-><init>(JJLjava/lang/String;Ljava/lang/String;II)V

    .line 693
    invoke-static {}, Lcom/kingroot/kinguser/bbo;->Wv()Lcom/kingroot/kinguser/bbo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbo;->addLog(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V

    .line 694
    return-void
.end method

.method private h(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 697
    iget-object v6, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    .line 698
    iget-object v7, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mAppName:Ljava/lang/String;

    .line 701
    sget-object v0, Lcom/kingroot/kinguser/bbf;->beO:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/kingroot/kinguser/bbd;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;ZLjava/lang/String;)V

    .line 704
    iget v0, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/bbf;->ab(II)Z

    move-result v0

    .line 705
    if-nez v0, :cond_0

    .line 707
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0703b3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 708
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07027c

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v1

    iget-object v2, p1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/bbt;->rootMgrToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v8, 0x64

    const/4 v9, 0x2

    invoke-direct/range {v1 .. v9}, Lcom/kingroot/kinguser/model/RootMgrLogInfo;-><init>(JJLjava/lang/String;Ljava/lang/String;II)V

    .line 715
    invoke-static {}, Lcom/kingroot/kinguser/bbo;->Wv()Lcom/kingroot/kinguser/bbo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbo;->addLog(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V

    .line 716
    return-void
.end method

.method public static ko(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 639
    packed-switch v0, :pswitch_data_0

    .line 657
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 644
    :pswitch_1
    const-string v1, "com.apkol.root"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.apkol.tool"

    .line 645
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.apkol.powermaster"

    .line 646
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "cn.netdroid.shengdiandashi"

    .line 647
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.wangzhuo.onekeyrom"

    .line 648
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.jike.root"

    .line 649
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 639
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized Wm()V
    .locals 11

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bbf;->beU:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/kingroot/kinguser/bbf;->beV:J

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 403
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/aks;->BR()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    .line 400
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bbf;->beU:Z

    .line 408
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bbf;->beU:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 477
    :goto_0
    monitor-exit p0

    return-void

    .line 412
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/kingroot/kinguser/bbf;->beY:Ljava/util/LinkedList;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 413
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bbf;->beY:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 415
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 416
    invoke-static {}, Lcom/kingroot/kinguser/awc;->SB()Lcom/kingroot/kinguser/awc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/awc;->hn(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 417
    iget-object v2, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 400
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 419
    :cond_2
    :goto_2
    :try_start_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 420
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 421
    iget-object v0, p0, Lcom/kingroot/kinguser/bbf;->beX:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 422
    if-nez v0, :cond_3

    .line 423
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_3
    move-object v6, v0

    .line 430
    iget-wide v0, v6, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mCreateTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x61a8

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_4

    .line 432
    iget-object v0, v6, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRp:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bbd;->km(Ljava/lang/String;)Landroid/net/LocalSocket;

    move-result-object v0

    iput-object v0, v6, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRs:Landroid/net/LocalSocket;

    .line 433
    iget-object v0, v6, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRs:Landroid/net/LocalSocket;

    if-eqz v0, :cond_4

    move-object v1, v6

    .line 442
    :goto_3
    if-nez v1, :cond_5

    .line 443
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 444
    iget-object v0, p0, Lcom/kingroot/kinguser/bbf;->beX:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 438
    :cond_4
    iget-object v0, v6, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRt:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 439
    if-nez v0, :cond_3

    move-object v1, v0

    goto :goto_3

    .line 449
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v0

    iget-object v2, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/arv;->getRiskType(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->riskType:I

    .line 450
    iget v0, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->riskType:I

    invoke-static {v0}, Lcom/kingroot/kinguser/avu;->hj(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 451
    iget-object v0, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 452
    if-eqz v0, :cond_6

    .line 453
    const/4 v2, 0x6

    iput v2, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->riskType:I

    .line 454
    const-string v2, "zh_CN"

    invoke-static {}, Lcom/kingroot/kinguser/zb;->pi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 455
    iget-object v0, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->riskDescription:Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRu:Ljava/lang/String;

    .line 465
    :cond_6
    :goto_4
    invoke-static {}, Lcom/kingroot/kinguser/awd;->SG()Lcom/kingroot/kinguser/awd;

    move-result-object v0

    iget-object v2, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/awd;->jG(Ljava/lang/String;)Lcom/kingroot/kinguser/awd$a;

    move-result-object v0

    .line 466
    if-eqz v0, :cond_7

    .line 467
    iget-wide v2, v0, Lcom/kingroot/kinguser/awd$a;->aRv:J

    iput-wide v2, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRv:J

    .line 468
    iget-wide v2, v0, Lcom/kingroot/kinguser/awd$a;->aRw:J

    iput-wide v2, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRw:J

    .line 469
    iget-wide v2, v0, Lcom/kingroot/kinguser/awd$a;->aRx:J

    iput-wide v2, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRx:J

    .line 473
    :cond_7
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    .line 476
    :cond_8
    monitor-exit v7

    goto/16 :goto_0

    .line 457
    :cond_9
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f070266

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRu:Ljava/lang/String;

    goto :goto_4

    .line 461
    :cond_a
    iget v0, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->riskType:I

    invoke-static {v0}, Lcom/kingroot/kinguser/avu;->hi(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRu:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method public d(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
    .locals 4

    .prologue
    .line 137
    iget-object v1, p0, Lcom/kingroot/kinguser/bbf;->beW:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/bbf$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bbf$1;-><init>(Lcom/kingroot/kinguser/bbf;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    monitor-exit v1

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hL(I)Lcom/kingroot/kinguser/model/SuRequestCmdModel;
    .locals 4

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 100
    iget-object v2, p0, Lcom/kingroot/kinguser/bbf;->beY:Ljava/util/LinkedList;

    monitor-enter v2

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bbf;->beY:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 102
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 104
    if-ne v0, p1, :cond_0

    .line 105
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/bbf;->beX:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 107
    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p0, Lcom/kingroot/kinguser/bbf;->beX:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 113
    :cond_1
    :goto_0
    monitor-exit v2

    .line 114
    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public declared-synchronized setSuRequestPromptLive(Z)V
    .locals 2

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bbf;->beV:J

    .line 394
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bbf;->beU:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    monitor-exit p0

    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
