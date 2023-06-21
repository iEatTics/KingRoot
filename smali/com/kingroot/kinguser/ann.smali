.class public Lcom/kingroot/kinguser/ann;
.super Lcom/kingroot/kinguser/ans;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static TAG:Ljava/lang/String;


# instance fields
.field private Gc:I

.field private aAY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation
.end field

.field protected aBf:Lcom/kingroot/common/uilib/NestedScrollView;

.field private aBg:Lcom/kingroot/kinguser/ano;

.field private aCa:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation
.end field

.field private aCb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation
.end field

.field private aCc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation
.end field

.field private aCd:Landroid/support/v7/widget/RecyclerView;

.field private aCe:Landroid/support/v7/widget/RecyclerView;

.field private aCf:Lcom/kingroot/kinguser/ale;

.field private aCg:Lcom/kingroot/kinguser/ale;

.field private aCh:Landroid/widget/TextView;

.field private aCi:Landroid/widget/TextView;

.field private aCj:Landroid/widget/TextView;

.field private aCk:Landroid/widget/TextView;

.field private aCl:Landroid/widget/LinearLayout;

.field private aCm:Landroid/widget/LinearLayout;

.field private aCn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aCo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aCp:Ljava/lang/String;

.field private aCq:I

.field private aCr:Z

.field private aCs:Lcom/kingroot/kinguser/ale$a;

.field private aCt:Lcom/kingroot/kinguser/ale$a;

.field private aCu:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;

.field protected aiM:Landroid/widget/FrameLayout;

.field private akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field private akD:Lcom/kingroot/kinguser/and$a;

.field private aoM:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

.field private aoh:Landroid/widget/LinearLayout;

.field private aoi:Landroid/support/v7/widget/RecyclerView;

.field private aoj:Lcom/kingroot/kinguser/alf;

.field private aok:Landroid/view/View;

.field private aon:I

.field private awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

.field private mEmptyView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "ku_pageAppDownloadTaskPage"

    sput-object v0, Lcom/kingroot/kinguser/ann;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ans;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCa:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCb:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCc:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aAY:Ljava/util/ArrayList;

    .line 103
    iput v2, p0, Lcom/kingroot/kinguser/ann;->Gc:I

    .line 104
    iput v2, p0, Lcom/kingroot/kinguser/ann;->aon:I

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCo:Ljava/util/ArrayList;

    .line 116
    iput v2, p0, Lcom/kingroot/kinguser/ann;->aCq:I

    .line 438
    new-instance v0, Lcom/kingroot/kinguser/ann$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ann$3;-><init>(Lcom/kingroot/kinguser/ann;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCs:Lcom/kingroot/kinguser/ale$a;

    .line 465
    new-instance v0, Lcom/kingroot/kinguser/ann$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ann$4;-><init>(Lcom/kingroot/kinguser/ann;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCt:Lcom/kingroot/kinguser/ale$a;

    .line 587
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$6;-><init>(Lcom/kingroot/kinguser/ann;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aoM:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    .line 604
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;-><init>(Lcom/kingroot/kinguser/ann;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCu:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;

    .line 660
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$8;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$8;-><init>(Lcom/kingroot/kinguser/ann;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    .line 758
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$9;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$9;-><init>(Lcom/kingroot/kinguser/ann;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 778
    new-instance v0, Lcom/kingroot/kinguser/and$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/and$a;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->akD:Lcom/kingroot/kinguser/and$a;

    .line 122
    return-void
.end method

.method private Jb()V
    .locals 5

    .prologue
    .line 551
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    const v1, 0x4c7bbc

    const/16 v2, 0x1e

    iget v3, p0, Lcom/kingroot/kinguser/ann;->aon:I

    iget-object v4, p0, Lcom/kingroot/kinguser/ann;->aoM:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/ams;->a(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 552
    return-void
.end method

.method private Jh()V
    .locals 7

    .prologue
    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 194
    instance-of v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v1, :cond_2

    .line 198
    iget-object v3, p0, Lcom/kingroot/kinguser/ann;->aCp:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    iget-object v3, p0, Lcom/kingroot/kinguser/ann;->mContext:Landroid/content/Context;

    move-object v1, v0

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingroot/kinguser/ann;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    iget-object v6, p0, Lcom/kingroot/kinguser/ann;->akD:Lcom/kingroot/kinguser/and$a;

    invoke-static {v3, v1, v4, v5, v6}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    .line 201
    const-string v1, ""

    iput-object v1, p0, Lcom/kingroot/kinguser/ann;->aCp:Ljava/lang/String;

    .line 203
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    const/16 v3, 0x50

    invoke-interface {v1, v0, v3}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    goto :goto_0
.end method

.method private declared-synchronized Ji()V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v5, 0x1

    .line 354
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v1

    .line 355
    if-eq v1, v3, :cond_0

    if-eq v1, v4, :cond_0

    if-ne v1, v5, :cond_4

    .line 357
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    .line 358
    if-ne v1, v3, :cond_2

    .line 359
    const v1, 0x7f07041a

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 360
    :cond_2
    if-eq v1, v4, :cond_3

    if-ne v1, v5, :cond_1

    .line 362
    :cond_3
    :try_start_1
    new-instance v1, Lcom/kingroot/kinguser/bid;

    iget-object v3, p0, Lcom/kingroot/kinguser/ann;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 363
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bid;->show()V

    .line 364
    const v3, 0x7f07041b

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 365
    const v3, 0x7f070418

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 366
    const v3, 0x7f070419

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 367
    const v3, 0x7f070416

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 368
    new-instance v2, Lcom/kingroot/kinguser/ann$1;

    invoke-direct {v2, p0, v1}, Lcom/kingroot/kinguser/ann$1;-><init>(Lcom/kingroot/kinguser/ann;Lcom/kingroot/kinguser/bid;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 375
    new-instance v2, Lcom/kingroot/kinguser/ann$2;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/ann$2;-><init>(Lcom/kingroot/kinguser/ann;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 400
    :cond_4
    if-nez v1, :cond_1

    .line 401
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 402
    iget-object v1, p0, Lcom/kingroot/kinguser/ann;->aCa:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/ame;

    .line 403
    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 404
    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ii()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    if-eq v4, v5, :cond_5

    .line 405
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 408
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 409
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/ame;

    .line 410
    move-object v0, v1

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-object v7, v0

    .line 411
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v1

    invoke-static {v7}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/kingroot/kinguser/ann;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/kingroot/kinguser/ann;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual/range {v1 .. v6}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 413
    const/4 v1, 0x1

    iput v1, v7, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    goto :goto_2

    .line 416
    :cond_7
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070471

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized Jj()V
    .locals 5

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 423
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 424
    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 425
    iget v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 426
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 429
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 430
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 431
    invoke-static {}, Lcom/kingroot/kinguser/alm;->GQ()Lcom/kingroot/kinguser/asy;

    move-result-object v2

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-static {v0}, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->l(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    move-result-object v0

    iget-object v3, p0, Lcom/kingroot/kinguser/ann;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-interface {v2, v0, v3}, Lcom/kingroot/kinguser/asy;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    goto :goto_1

    .line 434
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070485

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/ann;I)I
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/kingroot/kinguser/ann;->aon:I

    return p1
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCa:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/ann;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    return-object v0
.end method

.method public static synthetic c(Lcom/kingroot/kinguser/ann;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/ann;)Lcom/kingroot/kinguser/ale;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCf:Lcom/kingroot/kinguser/ale;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/ann;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/ann;)Lcom/kingroot/kinguser/and$a;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->akD:Lcom/kingroot/kinguser/and$a;

    return-object v0
.end method

.method public static synthetic g(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCb:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/ann;)Lcom/kingroot/kinguser/ale;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCg:Lcom/kingroot/kinguser/ale;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/ann;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/ann;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCd:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private j(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 147
    const-string v0, "key_game_summon_install_pkg_from_notification"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCp:Ljava/lang/String;

    .line 148
    const-string v0, "key_is_from_game_summon_notification"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18938

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 154
    :goto_0
    const-string v0, "key_id_to_cancel_notification"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/adm;->eA(Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void

    .line 152
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1893a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0
.end method

.method public static synthetic k(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCo:Ljava/util/ArrayList;

    return-object v0
.end method

.method private k(Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    const-string v0, "key_from_uninstall_notification_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ann;->aCq:I

    .line 164
    const-string v0, "key_is_auto_install"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ann;->aCr:Z

    .line 165
    iget v0, p0, Lcom/kingroot/kinguser/ann;->aCq:I

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/ann;->aCq:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 167
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ann;->aCr:Z

    if-eqz v0, :cond_1

    .line 169
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18967

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18966

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0
.end method

.method public static synthetic l(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aAY:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic m(Lcom/kingroot/kinguser/ann;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/kingroot/kinguser/ann;->aon:I

    return v0
.end method

.method public static synthetic n(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic o(Lcom/kingroot/kinguser/ann;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic p(Lcom/kingroot/kinguser/ann;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/kingroot/kinguser/ann;->Jb()V

    return-void
.end method

.method private wD()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aAY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 543
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aoh:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 548
    :goto_0
    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alf;->notifyDataSetChanged()V

    .line 546
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aoh:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public Jk()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 497
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ann;->cz(Z)V

    .line 498
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ann;->cA(Z)V

    .line 499
    return-void
.end method

.method public Jl()V
    .locals 8

    .prologue
    .line 555
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCf:Lcom/kingroot/kinguser/ale;

    if-nez v0, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v6

    .line 559
    invoke-virtual {v6}, Lcom/kingroot/kinguser/akl;->Bb()I

    move-result v7

    .line 560
    invoke-virtual {v6}, Lcom/kingroot/kinguser/akl;->Bc()J

    move-result-wide v0

    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 562
    const/4 v4, 0x2

    if-ge v7, v4, :cond_0

    const-wide/32 v4, 0xa4cb800

    .line 563
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCa:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v6, v0}, Lcom/kingroot/kinguser/akl;->dY(I)V

    .line 566
    invoke-virtual {v6, v2, v3}, Lcom/kingroot/kinguser/akl;->ap(J)V

    .line 567
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCd:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/ann$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ann$5;-><init>(Lcom/kingroot/kinguser/ann;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method protected a(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 282
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ans;->a(Landroid/os/Message;)V

    .line 283
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 314
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 285
    :pswitch_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ann;->Jk()V

    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 289
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/ann;->Jh()V

    .line 290
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ann;->aCr:Z

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/kingroot/kinguser/ann;->Jj()V

    .line 292
    iput-boolean v2, p0, Lcom/kingroot/kinguser/ann;->aCr:Z

    goto :goto_0

    .line 299
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aAY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/kingroot/kinguser/ann;->Gc:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 300
    invoke-direct {p0}, Lcom/kingroot/kinguser/ann;->Jb()V

    .line 301
    iget v0, p0, Lcom/kingroot/kinguser/ann;->Gc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/ann;->Gc:I

    goto :goto_0

    .line 304
    :cond_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/ann;->wD()V

    .line 306
    iput v2, p0, Lcom/kingroot/kinguser/ann;->Gc:I

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/kingroot/kinguser/ano;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lcom/kingroot/kinguser/ann;->aBg:Lcom/kingroot/kinguser/ano;

    .line 775
    return-void
.end method

.method protected ah(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCo:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/ann;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v2, p0, Lcom/kingroot/kinguser/ann;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-static {p1, v0, v1, v2}, Lcom/kingroot/kinguser/anf;->a(Ljava/util/List;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alf;->GN()V

    .line 128
    return-void
.end method

.method public cA(Z)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 523
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/kingroot/kinguser/ann;->aCb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/kingroot/kinguser/ann;->aCk:Landroid/widget/TextView;

    const v2, 0x7f0703ef

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingroot/kinguser/ann;->aCb:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    if-eqz p1, :cond_0

    .line 528
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCg:Lcom/kingroot/kinguser/ale;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ale;->notifyDataSetChanged()V

    .line 533
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 538
    :goto_1
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public cz(Z)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 502
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/kingroot/kinguser/ann;->aCa:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 504
    iget-object v1, p0, Lcom/kingroot/kinguser/ann;->aCj:Landroid/widget/TextView;

    const v2, 0x7f0703ec

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingroot/kinguser/ann;->aCa:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 506
    if-eqz p1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCf:Lcom/kingroot/kinguser/ale;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ale;->notifyDataSetChanged()V

    .line 508
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ann;->Jl()V

    .line 513
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 520
    :goto_1
    return-void

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 517
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188f4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 518
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected oG()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ann;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 211
    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 213
    const v0, 0x7f0f0098

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/NestedScrollView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aBf:Lcom/kingroot/common/uilib/NestedScrollView;

    .line 214
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aBf:Lcom/kingroot/common/uilib/NestedScrollView;

    iget-object v2, p0, Lcom/kingroot/kinguser/ann;->aBg:Lcom/kingroot/kinguser/ano;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ano;->sg()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/common/uilib/NestedScrollView;->i(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aBf:Lcom/kingroot/common/uilib/NestedScrollView;

    invoke-static {v0}, Lcom/kingroot/kinguser/qk;->a(Landroid/widget/ScrollView;)Lcom/kingroot/kinguser/qf;

    .line 217
    const v0, 0x7f0f00b9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCh:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCh:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v0, 0x7f0f00bd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCi:Landroid/widget/TextView;

    .line 220
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCi:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v0, 0x7f0f00b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCj:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f0f00bc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCk:Landroid/widget/TextView;

    .line 223
    const v0, 0x7f0f00b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCl:Landroid/widget/LinearLayout;

    .line 224
    const v0, 0x7f0f00bb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCm:Landroid/widget/LinearLayout;

    .line 226
    new-instance v2, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v6, v5}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 227
    invoke-virtual {v2, v5}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;->Y(Z)V

    .line 229
    const v0, 0x7f0f00ba

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCd:Landroid/support/v7/widget/RecyclerView;

    .line 230
    new-instance v0, Lcom/kingroot/kinguser/ale;

    iget-object v3, p0, Lcom/kingroot/kinguser/ann;->aCa:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/kingroot/kinguser/ann;->aCs:Lcom/kingroot/kinguser/ale$a;

    invoke-direct {v0, v3, v4}, Lcom/kingroot/kinguser/ale;-><init>(Ljava/util/List;Lcom/kingroot/kinguser/ale$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCf:Lcom/kingroot/kinguser/ale;

    .line 231
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCd:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCd:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 233
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCd:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/kingroot/kinguser/ann;->aCf:Lcom/kingroot/kinguser/ale;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCd:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 236
    new-instance v2, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v6, v5}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 237
    invoke-virtual {v2, v5}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;->Y(Z)V

    .line 238
    const v0, 0x7f0f00be

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCe:Landroid/support/v7/widget/RecyclerView;

    .line 239
    new-instance v0, Lcom/kingroot/kinguser/ale;

    iget-object v3, p0, Lcom/kingroot/kinguser/ann;->aCb:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/kingroot/kinguser/ann;->aCt:Lcom/kingroot/kinguser/ale$a;

    invoke-direct {v0, v3, v4}, Lcom/kingroot/kinguser/ale;-><init>(Ljava/util/List;Lcom/kingroot/kinguser/ale$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aCg:Lcom/kingroot/kinguser/ale;

    .line 240
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCe:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 241
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCe:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCe:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/kingroot/kinguser/ann;->aCg:Lcom/kingroot/kinguser/ale;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aCe:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 245
    const v0, 0x7f0f00b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 246
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->mEmptyView:Landroid/view/View;

    .line 247
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0e0028

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 248
    const v0, 0x7f0f0278

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v2, 0x7f0703ed

    .line 249
    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/ann;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->mEmptyView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    const v0, 0x7f0f00bf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aoh:Landroid/widget/LinearLayout;

    .line 255
    const v0, 0x7f0f00c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aoi:Landroid/support/v7/widget/RecyclerView;

    .line 256
    new-instance v0, Lcom/kingroot/kinguser/alf;

    iget-object v2, p0, Lcom/kingroot/kinguser/ann;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingroot/kinguser/ann;->aAY:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3}, Lcom/kingroot/kinguser/alf;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aoj:Lcom/kingroot/kinguser/alf;

    .line 258
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aoj:Lcom/kingroot/kinguser/alf;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/alf;->fe(I)V

    .line 259
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aoj:Lcom/kingroot/kinguser/alf;

    iget-object v2, p0, Lcom/kingroot/kinguser/ann;->akD:Lcom/kingroot/kinguser/and$a;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/alf;->a(Lcom/kingroot/kinguser/and$a;)V

    .line 260
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aoi:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    iget-object v3, p0, Lcom/kingroot/kinguser/ann;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5, v5}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aoi:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 262
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aoi:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/kingroot/kinguser/ann;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 264
    const v0, 0x7f0f00c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aok:Landroid/view/View;

    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aok:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    const v0, 0x7f0f0092

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aiM:Landroid/widget/FrameLayout;

    .line 270
    return-object v1
.end method

.method protected oI()V
    .locals 0

    .prologue
    .line 325
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->oI()V

    .line 326
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 318
    new-instance v0, Lcom/kingroot/kinguser/ano;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ann;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703f2

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ano;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ann;->aBg:Lcom/kingroot/kinguser/ano;

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aBg:Lcom/kingroot/kinguser/ano;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ano;->Jn()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->aBg:Lcom/kingroot/kinguser/ano;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 343
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 344
    return-void

    .line 333
    :sswitch_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/ann;->Ji()V

    goto :goto_0

    .line 336
    :sswitch_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/ann;->Jj()V

    goto :goto_0

    .line 339
    :sswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ann;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703f1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x4c7bbc

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/activitys/AppDownloadActivity;->c(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 331
    :sswitch_data_0
    .sparse-switch
        0x7f0f00b9 -> :sswitch_0
        0x7f0f00bd -> :sswitch_1
        0x7f0f00c1 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ans;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ann;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ann;->j(Landroid/content/Intent;)V

    .line 141
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ann;->k(Landroid/content/Intent;)V

    .line 143
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ans;->onNewIntent(Landroid/content/Intent;)V

    .line 180
    if-eqz p1, :cond_0

    .line 181
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ann;->j(Landroid/content/Intent;)V

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/ann;->Jh()V

    .line 184
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ann;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 275
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onResume()V

    .line 277
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ann;->aCu:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;)V

    .line 278
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 348
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ann;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 349
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ann;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aso;->a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 350
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onStop()V

    .line 351
    return-void
.end method
