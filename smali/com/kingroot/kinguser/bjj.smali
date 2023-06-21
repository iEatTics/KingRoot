.class public abstract Lcom/kingroot/kinguser/bjj;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bjj$b;,
        Lcom/kingroot/kinguser/bjj$c;,
        Lcom/kingroot/kinguser/bjj$e;,
        Lcom/kingroot/kinguser/bjj$d;,
        Lcom/kingroot/kinguser/bjj$a;,
        Lcom/kingroot/kinguser/bjj$g;,
        Lcom/kingroot/kinguser/bjj$f;
    }
.end annotation


# static fields
.field protected static bwR:Lcom/kingroot/kinguser/afb;

.field protected static bwS:Lcom/kingroot/kinguser/afa;


# instance fields
.field protected VL:Landroid/widget/ProgressBar;

.field protected final bwT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aex$a;",
            ">;"
        }
    .end annotation
.end field

.field protected bwU:Lcom/kingroot/kinguser/bjj$d;

.field protected bwV:Lcom/kingroot/kinguser/bjj$e;

.field protected bwW:Lcom/kingroot/kinguser/bjj$c;

.field private bwX:Lcom/kingroot/kinguser/bjj$b;

.field private bwY:Lcom/kingroot/kinguser/bjp$a;

.field protected bwZ:Landroid/widget/Button;

.field private bxa:Landroid/widget/RelativeLayout;

.field protected bxb:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

.field private bxc:Lcom/kingroot/kinguser/aex;

.field private final bxd:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/kingroot/kinguser/aex$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/kingroot/kinguser/afb;

    invoke-direct {v0}, Lcom/kingroot/kinguser/afb;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bjj;->bwR:Lcom/kingroot/kinguser/afb;

    .line 58
    new-instance v0, Lcom/kingroot/kinguser/afa;

    invoke-direct {v0}, Lcom/kingroot/kinguser/afa;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bjj;->bwS:Lcom/kingroot/kinguser/afa;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjj;->bwT:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxd:Ljava/util/HashSet;

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjj;)Lcom/kingroot/kinguser/aex;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxc:Lcom/kingroot/kinguser/aex;

    return-object v0
.end method

.method private adY()V
    .locals 6
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 299
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 302
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 303
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxd:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    .line 304
    iget-boolean v4, v0, Lcom/kingroot/kinguser/aex$a;->afR:Z

    if-eqz v4, :cond_0

    .line 305
    iget-object v0, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    :cond_1
    iget-object v3, p0, Lcom/kingroot/kinguser/bjj;->bwT:Ljava/util/List;

    monitor-enter v3

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bwT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    .line 311
    iget-object v5, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    if-eqz v5, :cond_2

    .line 315
    iget-boolean v5, v0, Lcom/kingroot/kinguser/aex$a;->afR:Z

    if-eqz v5, :cond_3

    .line 316
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 317
    :cond_3
    :try_start_1
    iget-object v5, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v5, v5, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 318
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/kingroot/kinguser/aex$a;->afR:Z

    .line 319
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 322
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    iget-object v2, p0, Lcom/kingroot/kinguser/bjj;->bxd:Ljava/util/HashSet;

    monitor-enter v2

    .line 325
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxd:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 326
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxd:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 327
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 329
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bwU:Lcom/kingroot/kinguser/bjj$d;

    if-eqz v0, :cond_5

    .line 330
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bwU:Lcom/kingroot/kinguser/bjj$d;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bjj$d;->vg()V

    .line 332
    :cond_5
    return-void

    .line 327
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bjj;)Lcom/kingroot/kinguser/bjp$a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bwY:Lcom/kingroot/kinguser/bjp$a;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bjj;)Lcom/kingroot/kinguser/bjj$b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bwX:Lcom/kingroot/kinguser/bjj$b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bjj$b;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/kingroot/kinguser/bjj;->bwX:Lcom/kingroot/kinguser/bjj$b;

    .line 255
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/bjj$c;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/kingroot/kinguser/bjj;->bwW:Lcom/kingroot/kinguser/bjj$c;

    .line 251
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/bjj$d;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/kingroot/kinguser/bjj;->bwU:Lcom/kingroot/kinguser/bjj$d;

    .line 241
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/bjj$e;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/kingroot/kinguser/bjj;->bwV:Lcom/kingroot/kinguser/bjj$e;

    .line 246
    return-void
.end method

.method public adV()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingroot/kinguser/aex$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v1, p0, Lcom/kingroot/kinguser/bjj;->bxd:Ljava/util/HashSet;

    monitor-enter v1

    .line 88
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjj;->bxd:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public adW()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bwZ:Landroid/widget/Button;

    return-object v0
.end method

.method public adX()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxa:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public adZ()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;)V
    .locals 6

    .prologue
    .line 359
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/bjj$4;

    invoke-direct {v5, p0, p1}, Lcom/kingroot/kinguser/bjj$4;-><init>(Lcom/kingroot/kinguser/bjj;Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 388
    return-void
.end method

.method public bZ(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v1, p0, Lcom/kingroot/kinguser/bjj;->bwT:Ljava/util/List;

    monitor-enter v1

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bwT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 339
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bjj;->ca(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 340
    iget-object v2, p0, Lcom/kingroot/kinguser/bjj;->bwT:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 341
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjj;->cb(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 346
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjj;->j(Ljava/lang/Object;)V

    .line 347
    return-void

    .line 341
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected ca(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aex$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 392
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 393
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v4

    .line 432
    :goto_0
    return-object v0

    .line 397
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 399
    iget-boolean v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    if-nez v1, :cond_2

    iget v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    if-nez v1, :cond_1

    .line 404
    :cond_2
    iget v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    if-eq v1, v10, :cond_1

    .line 408
    new-instance v6, Lcom/kingroot/kinguser/aex$a;

    invoke-direct {v6}, Lcom/kingroot/kinguser/aex$a;-><init>()V

    .line 409
    iput-object v0, v6, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 411
    iget-boolean v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    if-eqz v1, :cond_6

    :cond_3
    move v1, v3

    :goto_2
    iput-boolean v1, v6, Lcom/kingroot/kinguser/aex$a;->afS:Z

    .line 415
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjj;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v8, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->pkgSize:J

    invoke-static {v1, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/kingroot/kinguser/aex$a;->description:Ljava/lang/String;

    .line 417
    iget v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->riskType:I

    invoke-static {v1}, Lcom/kingroot/kinguser/avu;->hj(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 418
    iget-object v1, v6, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v7

    const v8, 0x7f070387

    invoke-virtual {v7, v8}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    iget v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->riskType:I

    .line 419
    invoke-static {v0}, Lcom/kingroot/kinguser/avu;->hi(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    .line 418
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->description:Ljava/lang/String;

    .line 423
    :cond_4
    invoke-static {v6}, Lcom/kingroot/kinguser/aex;->b(Lcom/kingroot/kinguser/aex$a;)Z

    .line 425
    invoke-static {v6}, Lcom/kingroot/kinguser/aex;->a(Lcom/kingroot/kinguser/aex$a;)I

    move-result v0

    if-ne v0, v10, :cond_5

    .line 426
    iput-boolean v2, v6, Lcom/kingroot/kinguser/aex$a;->afR:Z

    .line 429
    :cond_5
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move v1, v2

    .line 411
    goto :goto_2

    :cond_7
    move-object v0, v4

    .line 432
    goto :goto_0
.end method

.method public abstract cb(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aex$a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/yn$b",
            "<",
            "Lcom/kingroot/kinguser/aex$a;",
            ">;>;"
        }
    .end annotation
.end method

.method public d(Lcom/kingroot/kinguser/aex$a;)V
    .locals 6
    .param p1    # Lcom/kingroot/kinguser/aex$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 285
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/bjj$3;

    invoke-direct {v5, p0, p1}, Lcom/kingroot/kinguser/bjj$3;-><init>(Lcom/kingroot/kinguser/bjj;Lcom/kingroot/kinguser/aex$a;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 295
    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 168
    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->VL:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->VL:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxc:Lcom/kingroot/kinguser/aex;

    if-eqz v0, :cond_1

    .line 178
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 179
    check-cast v0, Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/kingroot/kinguser/yn$b;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxc:Lcom/kingroot/kinguser/aex;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/aex;->k(Ljava/util/ArrayList;)V

    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxc:Lcom/kingroot/kinguser/aex;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aex;->notifyDataSetChanged()V

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjj;->adY()V

    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bwU:Lcom/kingroot/kinguser/bjj$d;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bwU:Lcom/kingroot/kinguser/bjj$d;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bjj$d;->vg()V

    .line 195
    :cond_2
    return-void

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected oG()Landroid/view/View;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjj;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030129

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 95
    new-instance v4, Lcom/kingroot/kinguser/bjj$f;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/bjj$f;-><init>(Lcom/kingroot/kinguser/bjj;)V

    .line 96
    new-instance v1, Lcom/kingroot/kinguser/bjj$g;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjj$g;-><init>(Lcom/kingroot/kinguser/bjj;)V

    .line 97
    new-instance v0, Lcom/kingroot/kinguser/bjj$a;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjj$a;-><init>(Lcom/kingroot/kinguser/bjj;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjj;->bwY:Lcom/kingroot/kinguser/bjp$a;

    .line 98
    const v0, 0x7f0f013d

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxa:Landroid/widget/RelativeLayout;

    .line 99
    const v0, 0x7f0f032a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjj;->bwZ:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bwZ:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f0f000b

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxb:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxb:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjj;->getImageFetcher()Lcom/kingroot/kinguser/acr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->b(Lcom/kingroot/kinguser/acr;)V

    .line 105
    new-instance v0, Lcom/kingroot/kinguser/aex;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f000a

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/aex;-><init>(Landroid/content/Context;IZLandroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxc:Lcom/kingroot/kinguser/aex;

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxb:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjj;->bxc:Lcom/kingroot/kinguser/aex;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxb:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    instance-of v0, v0, Lcom/kingroot/common/uilib/AnimationListView;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxb:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    .line 111
    invoke-virtual {v0}, Lcom/kingroot/common/uilib/AnimationListView;->getAnimationAdapter()Lcom/kingroot/kinguser/qt;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/qt;->G(Z)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxb:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxb:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v0, v7}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setVisibility(I)V

    .line 122
    const v0, 0x7f0f000c

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjj;->VL:Landroid/widget/ProgressBar;

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxb:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    new-instance v1, Lcom/kingroot/kinguser/bjj$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjj$1;-><init>(Lcom/kingroot/kinguser/bjj;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxb:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjj;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300e3

    iget-object v3, p0, Lcom/kingroot/kinguser/bjj;->bxb:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v1, v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setPinnedHeaderView(Landroid/view/View;)V

    .line 154
    return-object v6
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/kingroot/kinguser/bjj;->bxc:Lcom/kingroot/kinguser/aex;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aex;->bU(I)Lcom/kingroot/kinguser/yn$b;

    move-result-object v0

    .line 203
    if-nez v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, v0, Lcom/kingroot/kinguser/yn$b;->data:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    .line 209
    if-eqz v0, :cond_0

    .line 214
    iget-boolean v1, v0, Lcom/kingroot/kinguser/aex$a;->afQ:Z

    if-nez v1, :cond_2

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 220
    :cond_2
    iput-boolean p2, v0, Lcom/kingroot/kinguser/aex$a;->afR:Z

    .line 223
    iget-object v1, p0, Lcom/kingroot/kinguser/bjj;->bxd:Ljava/util/HashSet;

    monitor-enter v1

    .line 224
    if-eqz p2, :cond_3

    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bjj;->bxd:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bwU:Lcom/kingroot/kinguser/bjj$d;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bwU:Lcom/kingroot/kinguser/bjj$d;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bjj$d;->vg()V

    goto :goto_0

    .line 227
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/kingroot/kinguser/bjj;->bxd:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj;->bxb:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v0, p2}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->bX(I)V

    .line 494
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method public p(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/kingroot/kinguser/aex$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 265
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 267
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x0

    new-instance v6, Lcom/kingroot/kinguser/bjj$2;

    invoke-direct {v6, p0, v0}, Lcom/kingroot/kinguser/bjj$2;-><init>(Lcom/kingroot/kinguser/bjj;Ljava/util/HashSet;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method
