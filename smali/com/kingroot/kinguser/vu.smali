.class public Lcom/kingroot/kinguser/vu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/vu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LA:Lcom/kingroot/kinguser/wo;

.field private LB:Lcom/kingroot/kinguser/wo;

.field private Lq:Landroid/content/SharedPreferences;

.field private Lr:Landroid/content/SharedPreferences$Editor;

.field private Ls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private Lt:Z

.field private Lu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Lv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Lw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private Lx:Z

.field private final Ly:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingroot/common/report/autostart/BootRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private Lz:Lcom/kingroot/kinguser/wo;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/kingroot/kinguser/vu$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/vu$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/vu;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/vu;->Ls:Ljava/util/List;

    .line 115
    iput-boolean v2, p0, Lcom/kingroot/kinguser/vu;->Lt:Z

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/vu;->Lu:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/vu;->Lv:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/vu;->Lw:Ljava/util/Map;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/vu;->mHandler:Landroid/os/Handler;

    .line 122
    iput-boolean v2, p0, Lcom/kingroot/kinguser/vu;->Lx:Z

    .line 145
    new-instance v0, Lcom/kingroot/kinguser/vu$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/vu$2;-><init>(Lcom/kingroot/kinguser/vu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/vu;->Ly:Lcom/kingroot/kinguser/cce;

    .line 319
    new-instance v0, Lcom/kingroot/kinguser/vu$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/vu$3;-><init>(Lcom/kingroot/kinguser/vu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/vu;->Lz:Lcom/kingroot/kinguser/wo;

    .line 427
    new-instance v0, Lcom/kingroot/kinguser/vu$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/vu$4;-><init>(Lcom/kingroot/kinguser/vu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/vu;->LA:Lcom/kingroot/kinguser/wo;

    .line 496
    new-instance v0, Lcom/kingroot/kinguser/vu$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/vu$5;-><init>(Lcom/kingroot/kinguser/vu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/vu;->LB:Lcom/kingroot/kinguser/wo;

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/vu$1;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;-><init>()V

    return-void
.end method

.method private E(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 936
    invoke-static {p1}, Lcom/kingroot/common/utils/system/ProcessUtils;->ej(Ljava/lang/String;)I

    move-result v1

    .line 940
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cat /proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/maps"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    .line 941
    invoke-virtual {v1}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v2

    if-nez v2, :cond_1

    .line 951
    :cond_0
    :goto_0
    return v0

    .line 944
    :cond_1
    iget-object v1, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 946
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/vu;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kingroot/kinguser/vu;->Lr:Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/vu;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/vu;->Lq:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/vu;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kingroot/kinguser/vu;->Lq:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/vu;JIZ)Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/vu;->b(JIZ)Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/vu;Ljava/lang/String;)Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/vu;->df(Ljava/lang/String;)Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/vu;J)Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/vu;->z(J)Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/vu;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/vu;->br(I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/vu;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/kingroot/kinguser/vu;->Lt:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/vu;->jk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/vu;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/vu;->Lr:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private b(JIZ)Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;
    .locals 5

    .prologue
    .line 667
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 669
    new-instance v1, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;

    invoke-direct {v1}, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;-><init>()V

    .line 670
    iput-wide p1, v1, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mAppBootupTime:J

    .line 671
    iput p3, v1, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mBootupType:I

    .line 672
    iput-boolean p4, v1, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mIsKDEnable:Z

    .line 673
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/vu;->dg(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mProcRanking:I

    .line 674
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mSystemBootupTime:J

    .line 675
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mPkg:Ljava/lang/String;

    .line 676
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/vu;->di(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mVersionName:Ljava/lang/String;

    .line 678
    return-object v1
.end method

.method public static b([[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 5
    .param p0    # [[Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 842
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    .line 843
    new-array v1, v4, [Ljava/lang/String;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ia()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object v1, v0, v3

    .line 844
    array-length v1, p0

    invoke-static {p0, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 846
    return-object v0
.end method

.method private br(I)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    .line 612
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mf()Lcom/kingroot/common/report/autostart/BootRecord;

    move-result-object v5

    .line 613
    if-nez v5, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    invoke-virtual {v5}, Lcom/kingroot/common/report/autostart/BootRecord;->mz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/kingroot/kinguser/vu;->Lv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 623
    iget-object v1, p0, Lcom/kingroot/kinguser/vu;->Lu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 625
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 629
    iget-object v2, p0, Lcom/kingroot/kinguser/vu;->Lw:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 631
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_3

    .line 636
    const/4 v4, 0x0

    .line 637
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 638
    invoke-direct {p0, v0, v2}, Lcom/kingroot/kinguser/vu;->E(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 645
    :goto_2
    invoke-virtual {v5, v1, v0}, Lcom/kingroot/common/report/autostart/BootRecord;->F(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;

    move-result-object v4

    .line 647
    if-nez v4, :cond_7

    .line 648
    new-instance v4, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;

    invoke-direct {v4}, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;-><init>()V

    .line 649
    iput-object v0, v4, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mTargetProc2Inject:Ljava/lang/String;

    .line 650
    iput-object v1, v4, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mPkg:Ljava/lang/String;

    .line 651
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/vu;->di(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mVersionName:Ljava/lang/String;

    move-object v1, v4

    .line 655
    :goto_3
    iget v4, v1, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mInjectRanking:I

    if-nez v4, :cond_5

    if-eqz v2, :cond_5

    .line 656
    iput p1, v1, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mInjectRanking:I

    .line 657
    iput-boolean v3, v1, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mInjectResult:Z

    .line 660
    :cond_5
    invoke-virtual {v5, v1}, Lcom/kingroot/common/report/autostart/BootRecord;->a(Lcom/kingroot/common/report/autostart/BootRecord$BaseRecord;)V

    goto :goto_1

    .line 663
    :cond_6
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->me()V

    goto/16 :goto_0

    :cond_7
    move-object v1, v4

    goto :goto_3

    :cond_8
    move v2, v4

    goto :goto_2
.end method

.method static synthetic c(Lcom/kingroot/kinguser/vu;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mc()V

    return-void
.end method

.method static synthetic d(Lcom/kingroot/kinguser/vu;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/kingroot/kinguser/vu;->Lt:Z

    return v0
.end method

.method private df(Ljava/lang/String;)Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 683
    new-instance v0, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;

    invoke-direct {v0}, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;-><init>()V

    .line 684
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/vu;->dh(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mAppBootupTime:J

    .line 685
    iput v4, v0, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mBootupType:I

    .line 686
    iput-boolean v4, v0, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mIsKDEnable:Z

    .line 687
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/vu;->dg(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mProcRanking:I

    .line 688
    iput-wide v6, v0, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mSystemBootupTime:J

    .line 689
    iput-object p1, v0, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mPkg:Ljava/lang/String;

    .line 690
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/vu;->di(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mVersionName:Ljava/lang/String;

    .line 692
    iget-wide v2, v0, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mAppBootupTime:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 693
    iput v4, v0, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mProcRanking:I

    .line 696
    :cond_0
    return-object v0
.end method

.method private dg(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 960
    const-string v0, "ps"

    invoke-static {v0}, Lcom/kingroot/kinguser/abi;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 961
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v2

    if-nez v2, :cond_1

    .line 962
    const/4 v0, -0x1

    .line 982
    :cond_0
    :goto_0
    return v0

    .line 964
    :cond_1
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 965
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 966
    goto :goto_0

    .line 968
    :cond_2
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 969
    if-nez v3, :cond_3

    move v0, v1

    .line 970
    goto :goto_0

    .line 974
    :cond_3
    array-length v4, v3

    move v2, v1

    move v0, v1

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v5, v3, v2

    .line 975
    if-eqz v5, :cond_4

    const-string v6, "com."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 976
    add-int/lit8 v0, v0, 0x1

    .line 977
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 974
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 982
    goto :goto_0
.end method

.method private dh(Ljava/lang/String;)J
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 991
    .line 992
    invoke-static {}, Lcom/kingroot/kinguser/aap;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 993
    if-nez v0, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return-wide v4

    .line 997
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 998
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 999
    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 1000
    if-eqz v6, :cond_2

    .line 1003
    array-length v7, v6

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_2

    aget-object v8, v6, v1

    .line 1004
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1003
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1007
    :cond_4
    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1011
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1016
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1023
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v1}, Lcom/kingroot/kinguser/acu;->ci(I)J

    move-result-wide v8

    .line 1024
    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    cmp-long v1, v2, v8

    if-lez v1, :cond_8

    .line 1025
    :cond_6
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v0}, Lcom/kingroot/kinguser/acu;->ci(I)J

    move-result-wide v0

    :goto_4
    move-wide v2, v0

    .line 1028
    goto :goto_3

    :cond_7
    move-wide v4, v2

    .line 1029
    goto :goto_0

    :cond_8
    move-wide v0, v2

    goto :goto_4
.end method

.method private di(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1038
    const-string v0, ""

    .line 1040
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/kingroot/kinguser/zh;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1041
    if-eqz v1, :cond_0

    .line 1042
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :cond_0
    :goto_0
    return-object v0

    .line 1044
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/vu;)Z
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mi()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/vu;)Lcom/kingroot/common/report/autostart/BootRecord;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mf()Lcom/kingroot/common/report/autostart/BootRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/vu;)Lcom/kingroot/common/report/autostart/BootRecord;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mg()Lcom/kingroot/common/report/autostart/BootRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/vu;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->me()V

    return-void
.end method

.method static synthetic i(Lcom/kingroot/kinguser/vu;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/vu;->Lu:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/vu;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->ml()V

    return-void
.end method

.method private static jk()Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/tj;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "auto_start_report"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 254
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    const-string v0, ""

    .line 259
    :cond_1
    return-object v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/vu;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/vu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/kingroot/kinguser/vu;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mn()V

    return-void
.end method

.method private static lZ()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    return-object v0
.end method

.method static synthetic m(Lcom/kingroot/kinguser/vu;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mj()V

    return-void
.end method

.method private static ma()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data-lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    return-object v0
.end method

.method private declared-synchronized mc()V
    .locals 3

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/vu;->Lx:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    monitor-exit p0

    return-void

    .line 184
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/kingroot/kinguser/vu;->Lx:Z

    .line 188
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hV()Lcom/kingroot/kinguser/rh;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/kingroot/kinguser/re;

    if-eqz v1, :cond_4

    .line 191
    check-cast v0, Lcom/kingroot/kinguser/re;

    .line 192
    invoke-virtual {v0}, Lcom/kingroot/kinguser/re;->hJ()Lcom/kingroot/kinguser/vv;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_4

    .line 195
    invoke-interface {v0}, Lcom/kingroot/kinguser/vv;->mE()Ljava/util/List;

    move-result-object v1

    .line 196
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    iget-object v2, p0, Lcom/kingroot/kinguser/vu;->Lu:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    :cond_2
    invoke-interface {v0}, Lcom/kingroot/kinguser/vv;->mG()Ljava/util/List;

    move-result-object v1

    .line 201
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 202
    iget-object v2, p0, Lcom/kingroot/kinguser/vu;->Lv:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    :cond_3
    invoke-interface {v0}, Lcom/kingroot/kinguser/vv;->mF()Ljava/util/Map;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 207
    iget-object v1, p0, Lcom/kingroot/kinguser/vu;->Lw:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/vu;->Lu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/vu;->Lv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 220
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/vu;->Lw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    iget-object v2, p0, Lcom/kingroot/kinguser/vu;->Lw:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static md()Lcom/kingroot/kinguser/vu;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/kingroot/kinguser/vu;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/vu;

    return-object v0
.end method

.method private me()V
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lcom/kingroot/kinguser/vu;->jk()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/kingroot/kinguser/rv;->cE(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vu;->mb()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/sk;->b(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method private declared-synchronized mf()Lcom/kingroot/common/report/autostart/BootRecord;
    .locals 3

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mh()J

    move-result-wide v0

    .line 268
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vu;->mb()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/report/autostart/BootRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-object v0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized mg()Lcom/kingroot/common/report/autostart/BootRecord;
    .locals 4

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mh()J

    move-result-wide v2

    .line 279
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vu;->mb()Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/report/autostart/BootRecord;

    .line 280
    if-nez v0, :cond_1

    .line 281
    invoke-static {}, Lcom/kingroot/common/report/autostart/BootRecord;->mt()Lcom/kingroot/common/report/autostart/BootRecord;

    move-result-object v0

    .line 282
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vu;->mb()Ljava/util/Map;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/report/autostart/BootRecord;->T(Z)V

    .line 285
    iget-object v1, p0, Lcom/kingroot/kinguser/vu;->Lr:Landroid/content/SharedPreferences$Editor;

    const-string v2, "SA01"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->me()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_1
    monitor-exit p0

    return-object v0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private mh()J
    .locals 4

    .prologue
    .line 298
    .line 299
    const-string v0, "system_server"

    invoke-static {v0}, Lcom/kingroot/common/utils/system/ProcessUtils;->ej(Ljava/lang/String;)I

    move-result v0

    .line 300
    invoke-static {v0}, Lcom/kingroot/kinguser/acu;->ci(I)J

    move-result-wide v2

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 302
    return-wide v0
.end method

.method private mi()Z
    .locals 3

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mh()J

    move-result-wide v0

    .line 311
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vu;->mb()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/report/autostart/BootRecord;

    .line 313
    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mj()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 576
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mf()Lcom/kingroot/common/report/autostart/BootRecord;

    move-result-object v2

    .line 577
    if-nez v2, :cond_0

    .line 604
    :goto_0
    return-void

    .line 580
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 581
    iget-object v0, p0, Lcom/kingroot/kinguser/vu;->Lv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 582
    invoke-virtual {v2, v3, v0}, Lcom/kingroot/common/report/autostart/BootRecord;->F(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;

    move-result-object v1

    .line 583
    if-nez v1, :cond_1

    .line 584
    new-instance v1, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;

    invoke-direct {v1}, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;-><init>()V

    .line 585
    iput-object v3, v1, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mPkg:Ljava/lang/String;

    .line 586
    const/4 v5, 0x0

    iput v5, v1, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mInjectRanking:I

    .line 587
    iput-object v0, v1, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mTargetProc2Inject:Ljava/lang/String;

    .line 588
    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/vu;->di(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mVersionName:Ljava/lang/String;

    .line 591
    :cond_1
    invoke-virtual {v2}, Lcom/kingroot/common/report/autostart/BootRecord;->mx()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 593
    iput-boolean v6, v1, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mIsKilled:Z

    .line 596
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/vu;->lZ()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/kingroot/kinguser/vu;->E(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 597
    invoke-static {}, Lcom/kingroot/kinguser/vu;->ma()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/kingroot/kinguser/vu;->E(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 598
    :cond_3
    iput-boolean v6, v1, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mInjectResult:Z

    .line 600
    :cond_4
    invoke-virtual {v2, v1}, Lcom/kingroot/common/report/autostart/BootRecord;->a(Lcom/kingroot/common/report/autostart/BootRecord$BaseRecord;)V

    goto :goto_1

    .line 603
    :cond_5
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->me()V

    goto :goto_0
.end method

.method private ml()V
    .locals 1

    .prologue
    .line 888
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mf()Lcom/kingroot/common/report/autostart/BootRecord;

    move-result-object v0

    .line 889
    if-nez v0, :cond_0

    .line 899
    :goto_0
    return-void

    .line 893
    :cond_0
    invoke-virtual {v0}, Lcom/kingroot/common/report/autostart/BootRecord;->ms()V

    .line 895
    invoke-virtual {v0}, Lcom/kingroot/common/report/autostart/BootRecord;->mz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/vu;->Lt:Z

    .line 898
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->me()V

    goto :goto_0
.end method

.method private mm()V
    .locals 1

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mf()Lcom/kingroot/common/report/autostart/BootRecord;

    move-result-object v0

    .line 903
    if-nez v0, :cond_0

    .line 913
    :goto_0
    return-void

    .line 907
    :cond_0
    invoke-virtual {v0}, Lcom/kingroot/common/report/autostart/BootRecord;->mr()V

    .line 909
    invoke-virtual {v0}, Lcom/kingroot/common/report/autostart/BootRecord;->mz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/vu;->Lt:Z

    .line 912
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->me()V

    goto :goto_0
.end method

.method private mn()V
    .locals 1

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mf()Lcom/kingroot/common/report/autostart/BootRecord;

    move-result-object v0

    .line 917
    if-nez v0, :cond_0

    .line 927
    :goto_0
    return-void

    .line 921
    :cond_0
    invoke-virtual {v0}, Lcom/kingroot/common/report/autostart/BootRecord;->mq()V

    .line 923
    invoke-virtual {v0}, Lcom/kingroot/common/report/autostart/BootRecord;->mz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/vu;->Lt:Z

    .line 926
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->me()V

    goto :goto_0
.end method

.method private mo()Z
    .locals 3

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/kingroot/kinguser/vu;->Lq:Landroid/content/SharedPreferences;

    const-string v1, "SA01"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic n(Lcom/kingroot/kinguser/vu;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mm()V

    return-void
.end method

.method private z(J)Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;
    .locals 3

    .prologue
    .line 700
    new-instance v0, Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;

    invoke-direct {v0}, Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;-><init>()V

    .line 701
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;->mPkg:Ljava/lang/String;

    .line 702
    iput-wide p1, v0, Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;->mInjectStartTime:J

    .line 704
    return-object v0
.end method


# virtual methods
.method public R(Z)V
    .locals 2

    .prologue
    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v1, p0, Lcom/kingroot/kinguser/vu;->LA:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/wo;->I(Ljava/util/List;)Z

    .line 494
    return-void
.end method

.method public declared-synchronized S(Z)V
    .locals 8

    .prologue
    .line 850
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vu;->mb()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    :goto_0
    monitor-exit p0

    return-void

    .line 855
    :cond_0
    if-eqz p1, :cond_4

    .line 856
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/vu;->Ls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 857
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vu;->mb()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/common/report/autostart/BootRecord;

    .line 859
    if-eqz v1, :cond_2

    .line 860
    invoke-virtual {v1}, Lcom/kingroot/common/report/autostart/BootRecord;->mv()V

    .line 863
    :cond_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mh()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 864
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vu;->mb()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 868
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->me()V

    goto :goto_0

    .line 871
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/vu;->Ls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public c(ZI)V
    .locals 2

    .prologue
    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    iget-object v1, p0, Lcom/kingroot/kinguser/vu;->LB:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/wo;->I(Ljava/util/List;)Z

    .line 569
    return-void
.end method

.method public k(IZ)V
    .locals 2

    .prologue
    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v1, p0, Lcom/kingroot/kinguser/vu;->Lz:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/wo;->I(Ljava/util/List;)Z

    .line 425
    return-void
.end method

.method public mb()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/kingroot/common/report/autostart/BootRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/vu;->Ly:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public declared-synchronized mk()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/da;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 713
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vu;->mb()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 836
    :goto_0
    monitor-exit p0

    return-object v0

    .line 716
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/vu;->Ls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 721
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vu;->mb()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 722
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 723
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 724
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/report/autostart/BootRecord;

    .line 725
    if-nez v0, :cond_2

    .line 726
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 712
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 730
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/kingroot/common/report/autostart/BootRecord;->mz()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/kingroot/common/report/autostart/BootRecord;->my()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 735
    :cond_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mh()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/kingroot/common/report/autostart/BootRecord;->my()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 743
    :cond_5
    invoke-virtual {v0}, Lcom/kingroot/common/report/autostart/BootRecord;->mw()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 744
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mh()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_1

    .line 746
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 752
    :cond_6
    invoke-virtual {v0}, Lcom/kingroot/common/report/autostart/BootRecord;->isDirty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 753
    invoke-direct {p0}, Lcom/kingroot/kinguser/vu;->mh()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_1

    .line 755
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 760
    :cond_7
    iget-object v4, p0, Lcom/kingroot/kinguser/vu;->Ls:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-virtual {v0}, Lcom/kingroot/common/report/autostart/BootRecord;->mA()Ljava/util/List;

    move-result-object v1

    .line 763
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;

    .line 764
    if-eqz v1, :cond_8

    .line 767
    invoke-virtual {v1}, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mD()[[Ljava/lang/String;

    move-result-object v1

    .line 768
    invoke-static {v1}, Lcom/kingroot/kinguser/vu;->b([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v1

    .line 769
    sget-object v5, Lcom/kingroot/kinguser/qs;->EZ:Ljava/lang/String;

    const/16 v6, 0x49

    invoke-static {v5, v6, v1}, Lcom/kingroot/kinguser/sw;->a(Ljava/lang/String;I[[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 770
    new-instance v5, Lcom/kingroot/kinguser/da;

    invoke-direct {v5}, Lcom/kingroot/kinguser/da;-><init>()V

    .line 771
    const v6, 0x61577

    iput v6, v5, Lcom/kingroot/kinguser/da;->id:I

    .line 772
    const-string v6, "1"

    iput-object v6, v5, Lcom/kingroot/kinguser/da;->desc:Ljava/lang/String;

    .line 774
    iput-object v1, v5, Lcom/kingroot/kinguser/da;->mO:Ljava/lang/String;

    .line 776
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v1, v6

    iput v1, v5, Lcom/kingroot/kinguser/da;->fY:I

    .line 777
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 782
    :cond_9
    invoke-virtual {v0}, Lcom/kingroot/common/report/autostart/BootRecord;->mB()Ljava/util/List;

    move-result-object v1

    .line 784
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;

    .line 785
    if-eqz v1, :cond_a

    .line 789
    iget-boolean v5, v1, Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;->mIsSuccess:Z

    if-eqz v5, :cond_a

    .line 792
    invoke-virtual {v1}, Lcom/kingroot/common/report/autostart/BootRecord$InjectTimeRecord;->mD()[[Ljava/lang/String;

    move-result-object v1

    .line 793
    invoke-static {v1}, Lcom/kingroot/kinguser/vu;->b([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v1

    .line 794
    sget-object v5, Lcom/kingroot/kinguser/qs;->EZ:Ljava/lang/String;

    const/16 v6, 0x49

    invoke-static {v5, v6, v1}, Lcom/kingroot/kinguser/sw;->a(Ljava/lang/String;I[[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 795
    new-instance v5, Lcom/kingroot/kinguser/da;

    invoke-direct {v5}, Lcom/kingroot/kinguser/da;-><init>()V

    .line 796
    const v6, 0x6157d

    iput v6, v5, Lcom/kingroot/kinguser/da;->id:I

    .line 797
    const-string v6, "1"

    iput-object v6, v5, Lcom/kingroot/kinguser/da;->desc:Ljava/lang/String;

    .line 799
    iput-object v1, v5, Lcom/kingroot/kinguser/da;->mO:Ljava/lang/String;

    .line 801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v1, v6

    iput v1, v5, Lcom/kingroot/kinguser/da;->fY:I

    .line 802
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 807
    :cond_b
    invoke-virtual {v0}, Lcom/kingroot/common/report/autostart/BootRecord;->mC()Ljava/util/List;

    move-result-object v1

    .line 809
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;

    .line 810
    if-eqz v1, :cond_c

    .line 814
    iget-object v5, v1, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/kingroot/common/report/autostart/BootRecord;->dj(Ljava/lang/String;)Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;

    move-result-object v5

    .line 815
    if-eqz v5, :cond_d

    iget-wide v6, v5, Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;->mAppBootupTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_c

    .line 819
    :cond_d
    invoke-virtual {v1}, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mD()[[Ljava/lang/String;

    move-result-object v1

    .line 820
    invoke-static {v1}, Lcom/kingroot/kinguser/vu;->b([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v1

    .line 821
    sget-object v5, Lcom/kingroot/kinguser/qs;->EZ:Ljava/lang/String;

    const/16 v6, 0x49

    invoke-static {v5, v6, v1}, Lcom/kingroot/kinguser/sw;->a(Ljava/lang/String;I[[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 822
    new-instance v5, Lcom/kingroot/kinguser/da;

    invoke-direct {v5}, Lcom/kingroot/kinguser/da;-><init>()V

    .line 823
    const v6, 0x6156e

    iput v6, v5, Lcom/kingroot/kinguser/da;->id:I

    .line 824
    const-string v6, "1"

    iput-object v6, v5, Lcom/kingroot/kinguser/da;->desc:Ljava/lang/String;

    .line 826
    iput-object v1, v5, Lcom/kingroot/kinguser/da;->mO:Ljava/lang/String;

    .line 828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v1, v6

    iput v1, v5, Lcom/kingroot/kinguser/da;->fY:I

    .line 829
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_e
    move-object v0, v2

    .line 836
    goto/16 :goto_0
.end method
