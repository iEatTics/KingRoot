.class Lcom/kingroot/kinguser/bjj$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjj;->b(Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bxe:Lcom/kingroot/kinguser/bjj;

.field final synthetic bxh:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjj;Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/kingroot/kinguser/bjj$4;->bxe:Lcom/kingroot/kinguser/bjj;

    iput-object p2, p0, Lcom/kingroot/kinguser/bjj$4;->bxh:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 362
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 363
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj$4;->bxh:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-boolean v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    if-nez v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj$4;->bxe:Lcom/kingroot/kinguser/bjj;

    iget-object v3, v0, Lcom/kingroot/kinguser/bjj;->bwT:Ljava/util/List;

    monitor-enter v3

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj$4;->bxe:Lcom/kingroot/kinguser/bjj;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjj;->bwT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    .line 369
    iget-object v5, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v5, v5, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/kingroot/kinguser/bjj$4;->bxh:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v6, v6, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 373
    :cond_2
    iget-object v4, p0, Lcom/kingroot/kinguser/bjj$4;->bxh:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iput-object v4, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 374
    iget-object v4, p0, Lcom/kingroot/kinguser/bjj$4;->bxh:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-boolean v4, v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/kingroot/kinguser/bjj$4;->bxh:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v4, v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    if-eqz v4, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    iput-boolean v1, v0, Lcom/kingroot/kinguser/aex$a;->afS:Z

    .line 376
    iget-object v1, p0, Lcom/kingroot/kinguser/bjj$4;->bxe:Lcom/kingroot/kinguser/bjj;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bjj;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bjj$4;->bxh:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-wide v4, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->pkgSize:J

    invoke-static {v1, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/aex$a;->description:Ljava/lang/String;

    .line 377
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/aex$a;->afQ:Z

    .line 378
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kingroot/kinguser/aex$a;->afR:Z

    .line 383
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj$4;->bxe:Lcom/kingroot/kinguser/bjj;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjj$4;->bxe:Lcom/kingroot/kinguser/bjj;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/kingroot/kinguser/bjj$4;->bxe:Lcom/kingroot/kinguser/bjj;

    iget-object v4, v4, Lcom/kingroot/kinguser/bjj;->bwT:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bjj;->cb(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjj;->j(Ljava/lang/Object;)V

    .line 384
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
