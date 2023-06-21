.class public Lcom/kingroot/kinguser/bjq;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bjq$d;,
        Lcom/kingroot/kinguser/bjq$a;,
        Lcom/kingroot/kinguser/bjq$b;,
        Lcom/kingroot/kinguser/bjq$c;
    }
.end annotation


# instance fields
.field private acx:Landroid/widget/ImageView;

.field private acy:Landroid/widget/TextView;

.field private acz:Landroid/view/animation/Animation;

.field private afK:[Ljava/lang/String;

.field ahA:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/kingroot/kinguser/bjq$d;",
            ">;"
        }
    .end annotation
.end field

.field private ahC:Landroid/widget/ImageView;

.field private ahF:Lcom/kingroot/kinguser/bed;

.field private ahq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bjq$d;",
            ">;"
        }
    .end annotation
.end field

.field private ahr:Lcom/kingroot/kinguser/adh;

.field private ahs:Landroid/view/View$OnClickListener;

.field private ahw:Lcom/kingroot/common/uilib/KBaseListView;

.field private ahx:Landroid/widget/TextView;

.field ahz:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/kingroot/kinguser/bjq$d;",
            ">;"
        }
    .end annotation
.end field

.field private baA:Landroid/widget/TextView;

.field private bwZ:Landroid/widget/Button;

.field public bxN:I

.field private bxO:Z

.field private bxP:Lcom/kingroot/kinguser/aey;

.field private bxQ:Landroid/widget/Button;

.field private bxR:Landroid/widget/RelativeLayout;

.field private bxS:Lcom/kingroot/kinguser/bjq$c;

.field private bxT:I

.field private bxU:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;

.field private bxp:Landroid/app/ProgressDialog;

.field private bxr:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 73
    iput v1, p0, Lcom/kingroot/kinguser/bjq;->bxN:I

    .line 88
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bjq;->bxO:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahr:Lcom/kingroot/kinguser/adh;

    .line 110
    iput v1, p0, Lcom/kingroot/kinguser/bjq;->bxT:I

    .line 318
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bjq$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bjq$2;-><init>(Lcom/kingroot/kinguser/bjq;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxr:Lcom/kingroot/kinguser/bed;

    .line 617
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bjq$4;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bjq$4;-><init>(Lcom/kingroot/kinguser/bjq;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahF:Lcom/kingroot/kinguser/bed;

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->afK:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    new-instance v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;

    invoke-direct {v0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxU:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;

    .line 124
    return-void

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjq;)Ljava/util/List;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahq:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjq;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kingroot/kinguser/bjq;->ahq:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjq;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bjq;->jp(I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjq;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bjq;->bxO:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bjq;)Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxU:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bjq;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bjq;->js(I)V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bjq;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxR:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bjq;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bjq;->jq(I)V

    return-void
.end method

.method private jp(I)V
    .locals 10

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 491
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 492
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v5

    .line 494
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 496
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->ahz:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bjq$d;

    .line 499
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 500
    iget-object v3, v0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 501
    iget-object v3, v0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 505
    :goto_1
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    .line 506
    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 507
    iput p1, v2, Landroid/os/Message;->arg2:I

    .line 508
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 510
    const/4 v2, 0x4

    if-ne p1, v2, :cond_8

    .line 513
    :try_start_0
    iget v2, v0, Lcom/kingroot/kinguser/bjq$d;->bxZ:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 514
    iget-object v2, p0, Lcom/kingroot/kinguser/bjq;->bxU:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;

    iget-object v3, v0, Lcom/kingroot/kinguser/bjq$d;->bya:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v7, v8}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->a(Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;ZLcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$b;)I

    move-result v3

    .line 515
    sget v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    if-eq v3, v2, :cond_1

    .line 516
    sget v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agV:I

    if-ne v3, v2, :cond_1

    .line 517
    const-wide/32 v8, 0x7f070385

    invoke-virtual {p0, v8, v9}, Lcom/kingroot/kinguser/bjq;->V(J)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v2, v0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    .line 518
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    :goto_2
    aput-object v2, v8, v9

    .line 517
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    .line 521
    :cond_1
    if-nez v3, :cond_4

    const/4 v2, 0x1

    .line 526
    :goto_3
    if-nez v2, :cond_7

    .line 527
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v2

    .line 532
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    :cond_2
    iget-object v3, v0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 518
    :cond_3
    :try_start_1
    iget-object v2, v0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    goto :goto_2

    .line 521
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 523
    :cond_5
    iget-object v2, v0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/aff;->fa(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 529
    :cond_7
    iget-object v2, v0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    const/4 v3, 0x0

    iput v3, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 536
    :cond_8
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 539
    :try_start_2
    iget v2, v0, Lcom/kingroot/kinguser/bjq$d;->bxZ:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 540
    iget-object v2, p0, Lcom/kingroot/kinguser/bjq;->bxU:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;

    iget-object v3, v0, Lcom/kingroot/kinguser/bjq$d;->bya:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;

    invoke-virtual {v2, v3}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->a(Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 572
    :catch_1
    move-exception v2

    .line 573
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 542
    :cond_9
    const/4 v3, 0x0

    .line 543
    const/4 v2, -0x1

    .line 544
    if-eqz v5, :cond_a

    .line 545
    :try_start_3
    iget-object v3, v0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 547
    :cond_a
    if-eqz v3, :cond_b

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_b

    .line 549
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_c

    .line 550
    iget-object v2, v0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/aff;->eY(Ljava/lang/String;)I

    move-result v2

    .line 557
    :cond_b
    :goto_4
    if-nez v2, :cond_d

    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_e

    .line 558
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 552
    :cond_c
    iget-object v2, v0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appSourceDir:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/aff;->V(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    .line 557
    :cond_d
    const/4 v2, 0x0

    goto :goto_5

    .line 560
    :cond_e
    iget-object v2, v0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    const/4 v3, 0x2

    iput v3, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 563
    if-eqz v5, :cond_0

    :try_start_4
    iget-object v2, v0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 565
    iget-object v0, v0, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aff;->fa(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 567
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 580
    :cond_f
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahA:Ljava/util/HashSet;

    if-nez v0, :cond_10

    .line 581
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahA:Ljava/util/HashSet;

    .line 584
    :cond_10
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahA:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 585
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahA:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->ahz:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 587
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 589
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->ahz:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 591
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 594
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->ahA:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 597
    const/4 v1, 0x3

    if-ne p1, v1, :cond_12

    .line 598
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 603
    :goto_6
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 606
    :cond_11
    return-void

    .line 601
    :cond_12
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_6
.end method

.method private jq(I)V
    .locals 3

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bjq;->jr(I)V

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 613
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bjq;->ahF:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    .line 615
    return-void
.end method

.method private jr(I)V
    .locals 7

    .prologue
    const v6, 0x7f02009b

    const v5, 0x7f020099

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 669
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 670
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    .line 671
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 673
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 674
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 675
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 676
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 677
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 678
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 680
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    const v1, 0x7f030045

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 681
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    const v1, 0x7f0f013f

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->acy:Landroid/widget/TextView;

    .line 682
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    const v1, 0x7f0f0140

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->baA:Landroid/widget/TextView;

    .line 683
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->acx:Landroid/widget/ImageView;

    .line 684
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    const v1, 0x7f0f00db

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahC:Landroid/widget/ImageView;

    .line 685
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->acz:Landroid/view/animation/Animation;

    .line 686
    if-ne v3, p1, :cond_1

    .line 687
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahC:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 693
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/kingroot/kinguser/bjq$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjq$5;-><init>(Lcom/kingroot/kinguser/bjq;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 702
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahC:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 706
    const-wide/32 v0, 0x7f070352

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bjq;->V(J)Ljava/lang/String;

    move-result-object v0

    .line 707
    if-ne p1, v3, :cond_2

    .line 708
    const-wide/32 v0, 0x7f070350

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bjq;->V(J)Ljava/lang/String;

    move-result-object v0

    .line 709
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->ahC:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 714
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->baA:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->acy:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/kingroot/kinguser/bjq;->ahz:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->acx:Landroid/widget/ImageView;

    const v1, 0x7f0202b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 717
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->acx:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->acz:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 718
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 719
    return-void

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahC:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 712
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->ahC:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private js(I)V
    .locals 4

    .prologue
    .line 725
    new-instance v0, Lcom/kingroot/kinguser/big;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/big;-><init>(Landroid/content/Context;)V

    .line 726
    invoke-virtual {v0}, Lcom/kingroot/kinguser/big;->show()V

    .line 727
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 728
    const-wide/32 v2, 0x7f070383

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjq;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->setTitleText(Ljava/lang/String;)V

    .line 729
    const-wide/32 v2, 0x7f07038c

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjq;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->lL(Ljava/lang/String;)V

    .line 735
    :goto_0
    const-wide/32 v2, 0x7f0700c4

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjq;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->lK(Ljava/lang/String;)V

    .line 737
    new-instance v1, Lcom/kingroot/kinguser/bjq$6;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/bjq$6;-><init>(Lcom/kingroot/kinguser/bjq;I)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 743
    new-instance v1, Lcom/kingroot/kinguser/bjq$7;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjq$7;-><init>(Lcom/kingroot/kinguser/bjq;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 748
    return-void

    .line 731
    :cond_0
    const-wide/32 v2, 0x7f070375

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjq;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->setTitleText(Ljava/lang/String;)V

    .line 732
    const-wide/32 v2, 0x7f070392

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjq;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/big;->lL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private vf()V
    .locals 2

    .prologue
    .line 304
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->bxr:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 305
    return-void
.end method

.method private vh()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 653
    :cond_0
    return-void
.end method

.method private vi()V
    .locals 4

    .prologue
    .line 754
    new-instance v0, Lcom/kingroot/kinguser/bjt;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bjt;-><init>(Landroid/content/Context;)V

    .line 755
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjt;->show()V

    .line 756
    const-wide/32 v2, 0x7f07024a

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjq;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjt;->setTitleText(Ljava/lang/String;)V

    .line 757
    const-wide/32 v2, 0x7f07021c

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjq;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjt;->ma(Ljava/lang/String;)V

    .line 758
    const-wide/32 v2, 0x7f0700c9

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjq;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjt;->lK(Ljava/lang/String;)V

    .line 759
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjt;->iY(I)V

    .line 760
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 214
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->a(Landroid/os/Message;)V

    .line 215
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 301
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 217
    :pswitch_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->ahr:Lcom/kingroot/kinguser/adh;

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->ahr:Lcom/kingroot/kinguser/adh;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adh;->dismiss()V

    .line 220
    :cond_1
    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahr:Lcom/kingroot/kinguser/adh;

    .line 221
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->oR()V

    goto :goto_0

    .line 224
    :pswitch_2
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bjq;->U(J)V

    goto :goto_0

    .line 228
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahz:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bjq;->bxT:I

    .line 229
    iget v0, p1, Landroid/os/Message;->what:I

    .line 230
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/bjq$1;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/bjq$1;-><init>(Lcom/kingroot/kinguser/bjq;I)V

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0

    .line 240
    :pswitch_4
    const-wide/32 v0, 0x7f070350

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bjq;->V(J)Ljava/lang/String;

    move-result-object v0

    .line 241
    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 242
    const-wide/32 v0, 0x7f070352

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bjq;->V(J)Ljava/lang/String;

    move-result-object v0

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->acy:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/kingroot/kinguser/bjq;->bxT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->baA:Landroid/widget/TextView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 249
    :pswitch_5
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 250
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->acy:Landroid/widget/TextView;

    const v2, 0x7f070374

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 254
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->acx:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 255
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->ahC:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-nez v1, :cond_4

    .line 257
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->acx:Landroid/widget/ImageView;

    const v1, 0x7f0202a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->baA:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :goto_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 252
    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->acy:Landroid/widget/TextView;

    const v2, 0x7f07024d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 260
    :cond_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    sub-int/2addr v1, v2

    .line 263
    const-wide/32 v2, 0x7f070386

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjq;->V(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 267
    :goto_3
    if-eqz v0, :cond_5

    if-gez v1, :cond_6

    .line 268
    :cond_5
    const-string v0, ""

    .line 270
    :cond_6
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->baA:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->acx:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 279
    :pswitch_6
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahq:Ljava/util/List;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->ahA:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 280
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahz:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->ahA:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahA:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 282
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->vg()V

    .line 283
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjq;->vh()V

    .line 284
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->oR()V

    goto/16 :goto_0

    .line 289
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 295
    :pswitch_8
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjq;->vh()V

    .line 296
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjq;->vi()V

    goto/16 :goto_0

    .line 264
    :catch_0
    move-exception v2

    goto :goto_3

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public i(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahx:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    :goto_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->vg()V

    .line 207
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahx:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahx:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahx:Landroid/widget/TextView;

    const-wide/32 v2, 0x7f070384

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjq;->V(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kingroot/kinguser/bjq;->ahq:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected oG()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 133
    new-instance v0, Lcom/kingroot/kinguser/bjq$b;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjq$b;-><init>(Lcom/kingroot/kinguser/bjq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahs:Landroid/view/View$OnClickListener;

    .line 134
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 136
    const v0, 0x7f0f000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahx:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahx:Landroid/widget/TextView;

    const-wide/32 v2, 0x7f070384

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjq;->V(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const v0, 0x7f0f0144

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxR:Landroid/widget/RelativeLayout;

    .line 139
    new-instance v0, Lcom/kingroot/kinguser/bjq$c;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjq$c;-><init>(Lcom/kingroot/kinguser/bjq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxS:Lcom/kingroot/kinguser/bjq$c;

    .line 140
    const v0, 0x7f0f000f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->bwZ:Landroid/widget/Button;

    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bwZ:Landroid/widget/Button;

    const v2, 0x7f070392

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bwZ:Landroid/widget/Button;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjq;->bxS:Lcom/kingroot/kinguser/bjq$c;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v0, 0x7f0f0010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxQ:Landroid/widget/Button;

    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxQ:Landroid/widget/Button;

    const v2, 0x7f07038c

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxQ:Landroid/widget/Button;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjq;->bxS:Lcom/kingroot/kinguser/bjq$c;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v0, 0x7f0f000b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/KBaseListView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahw:Lcom/kingroot/common/uilib/KBaseListView;

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahw:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getImageFetcher()Lcom/kingroot/kinguser/acr;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/common/uilib/KBaseListView;->b(Lcom/kingroot/kinguser/acr;)V

    .line 150
    new-instance v0, Lcom/kingroot/kinguser/aey;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjq;->ahs:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/kingroot/kinguser/bjq;->afK:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/kingroot/kinguser/aey;-><init>(Landroid/view/View$OnClickListener;[Ljava/lang/String;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxP:Lcom/kingroot/kinguser/aey;

    .line 151
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahw:Lcom/kingroot/common/uilib/KBaseListView;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjq;->bxP:Lcom/kingroot/kinguser/aey;

    invoke-virtual {v0, v2}, Lcom/kingroot/common/uilib/KBaseListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    return-object v1
.end method

.method protected oI()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 167
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->oI()V

    .line 170
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300dd

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 172
    const v0, 0x7f0f00b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    const v3, 0x7f070393

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 176
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0e0075

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahw:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/KBaseListView;->setEmptyView(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahr:Lcom/kingroot/kinguser/adh;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/kingroot/kinguser/adh;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/adh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahr:Lcom/kingroot/kinguser/adh;

    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahr:Lcom/kingroot/kinguser/adh;

    const v1, 0x7f0701f1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adh;->cp(I)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahr:Lcom/kingroot/kinguser/adh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adh;->show()V

    .line 186
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjq;->vf()V

    .line 187
    return-void
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 127
    new-instance v0, Lcom/kingroot/kinguser/bjq$a;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/32 v2, 0x7f07024e

    .line 128
    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjq;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/kingroot/kinguser/bjq$a;-><init>(Lcom/kingroot/kinguser/bjq;Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    return-object v0
.end method

.method public oR()V
    .locals 0

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->ve()V

    .line 192
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->oR()V

    .line 193
    return-void
.end method

.method protected onBackPressed()Z
    .locals 3

    .prologue
    .line 764
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 765
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/kingroot/kinguser/bjq;->bxN:I

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 766
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bjq;->bxN:I

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahz:Ljava/util/HashSet;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahq:Ljava/util/List;

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahA:Ljava/util/HashSet;

    .line 163
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->vd()V

    .line 646
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onDestroy()V

    .line 647
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 309
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onStart()V

    .line 311
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 315
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onStop()V

    .line 316
    return-void
.end method

.method public vd()V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxp:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahr:Lcom/kingroot/kinguser/adh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahr:Lcom/kingroot/kinguser/adh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adh;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahr:Lcom/kingroot/kinguser/adh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adh;->dismiss()V

    .line 666
    :cond_1
    return-void
.end method

.method public ve()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxP:Lcom/kingroot/kinguser/aey;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->ahq:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aey;->Z(Ljava/util/List;)V

    .line 210
    return-void
.end method

.method public vg()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 415
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->ahz:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxR:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq;->bxR:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjq;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040016

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 420
    new-instance v1, Lcom/kingroot/kinguser/bjq$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjq$3;-><init>(Lcom/kingroot/kinguser/bjq;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 440
    iget-boolean v1, p0, Lcom/kingroot/kinguser/bjq;->bxO:Z

    if-nez v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq;->bxR:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
