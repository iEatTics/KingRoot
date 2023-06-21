.class Lcom/kingroot/kinguser/bjr$10;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byr:Lcom/kingroot/kinguser/bjr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjr;)V
    .locals 0

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$10;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1474
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 1476
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ex()Ljava/lang/String;

    move-result-object v0

    .line 1477
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1509
    new-instance v0, Lcom/kingroot/kinguser/bjr$10$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjr$10$1;-><init>(Lcom/kingroot/kinguser/bjr$10;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1516
    :goto_0
    return-void

    .line 1481
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    .line 1482
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1509
    new-instance v0, Lcom/kingroot/kinguser/bjr$10$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjr$10$1;-><init>(Lcom/kingroot/kinguser/bjr$10;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1486
    :cond_1
    :try_start_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "pm install -r %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    .line 1487
    invoke-virtual {v1}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failure"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1491
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18810

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1493
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1495
    invoke-static {}, Lcom/kingroot/kinguser/aft;->vt()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bjr$10;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bjr;->getActivity()Landroid/app/Activity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 1509
    new-instance v0, Lcom/kingroot/kinguser/bjr$10$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjr$10$1;-><init>(Lcom/kingroot/kinguser/bjr$10;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1498
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/arv;->gotoWeSecureVirusScan()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1509
    :goto_1
    new-instance v0, Lcom/kingroot/kinguser/bjr$10$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjr$10$1;-><init>(Lcom/kingroot/kinguser/bjr$10;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1503
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18811

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1506
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr$10;->byr:Lcom/kingroot/kinguser/bjr;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bjr;->a(Lcom/kingroot/kinguser/bjr;Ljava/io/File;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1509
    :catchall_0
    move-exception v0

    new-instance v1, Lcom/kingroot/kinguser/bjr$10$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjr$10$1;-><init>(Lcom/kingroot/kinguser/bjr$10;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    throw v0
.end method
