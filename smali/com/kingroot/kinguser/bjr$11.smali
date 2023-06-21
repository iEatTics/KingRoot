.class Lcom/kingroot/kinguser/bjr$11;
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
    .line 1522
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$11;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1525
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 1527
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v6

    .line 1528
    invoke-virtual {v6}, Lcom/kingroot/kinguser/aks;->Ey()I

    move-result v7

    .line 1529
    if-ne v7, v9, :cond_1

    .line 1609
    :cond_0
    :goto_0
    return-void

    .line 1532
    :cond_1
    if-ne v7, v8, :cond_2

    .line 1534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1535
    invoke-virtual {v6}, Lcom/kingroot/kinguser/aks;->Ez()J

    move-result-wide v0

    .line 1537
    const-wide/32 v4, 0xa4cb800

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1544
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1551
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/arv;->isWeSecureInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1557
    invoke-virtual {v6}, Lcom/kingroot/kinguser/aks;->Ex()Ljava/lang/String;

    move-result-object v2

    .line 1558
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1562
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1565
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/kingroot/kinguser/aks;->hg(Ljava/lang/String;)V

    goto :goto_0

    .line 1571
    :cond_3
    const-string v0, ".apk"

    .line 1572
    const-string v0, ".apk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1573
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1575
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1577
    :cond_4
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1582
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/kingroot/kinguser/aks;->hg(Ljava/lang/String;)V

    .line 1587
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/aaz;->ea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1588
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "00B1208638DE0FCD3E920886D658DAF6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1590
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1591
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 1596
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/kingroot/kinguser/aks;->bo(J)V

    .line 1597
    if-nez v7, :cond_8

    .line 1598
    invoke-virtual {v6, v8}, Lcom/kingroot/kinguser/aks;->eD(I)V

    .line 1603
    :cond_7
    :goto_2
    new-instance v0, Lcom/kingroot/kinguser/bjr$11$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjr$11$1;-><init>(Lcom/kingroot/kinguser/bjr$11;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1599
    :cond_8
    if-ne v7, v8, :cond_7

    .line 1600
    invoke-virtual {v6, v9}, Lcom/kingroot/kinguser/aks;->eD(I)V

    goto :goto_2

    :cond_9
    move-object v0, v1

    goto :goto_1
.end method
