.class public Lcom/kingroot/kinguser/activitys/AppsMarketWellChosenAppsActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppsMarketWellChosenAppsActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/activitys/AppsMarketWellChosenAppsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    return-void
.end method

.method public static f(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingroot/kinguser/activitys/AppsMarketWellChosenAppsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    const-string v1, "bundle_key_show_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method public static vs()Z
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 60
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v9

    .line 61
    invoke-virtual {v9}, Lcom/kingroot/kinguser/aks;->FP()J

    move-result-wide v0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xa4cb800

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    .line 110
    :goto_0
    return v0

    .line 68
    :cond_0
    invoke-virtual {v9}, Lcom/kingroot/kinguser/aks;->FR()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    move v0, v8

    .line 70
    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alx;->HD()Ljava/lang/Integer;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    move v0, v8

    .line 77
    goto :goto_0

    .line 84
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/alx;->fj(I)Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 90
    const/16 v1, 0x9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0, v8, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v6

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 93
    cmp-long v1, v2, v6

    if-nez v1, :cond_3

    .line 94
    iget-wide v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->fileSize:J

    :goto_2
    move-wide v2, v0

    .line 100
    goto :goto_1

    .line 96
    :cond_3
    iget-wide v10, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->fileSize:J

    cmp-long v1, v10, v2

    if-gez v1, :cond_6

    .line 97
    iget-wide v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->fileSize:J

    goto :goto_2

    .line 102
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/apu;->LN()J

    move-result-wide v0

    .line 103
    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    move v0, v8

    .line 105
    goto :goto_0

    .line 110
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    move-wide v0, v2

    goto :goto_2
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/kingroot/kinguser/anp;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anp;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v1, Lcom/kingroot/kinguser/aup;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/aup;-><init>(Lcom/kingroot/kinguser/anp;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/anp;->a(Lcom/kingroot/kinguser/aug$a;)V

    .line 47
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {}, Lcom/kingroot/kinguser/ane;->IR()V

    .line 36
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bG(J)V

    .line 38
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FR()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->eO(I)V

    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alx;->HE()V

    .line 41
    return-void
.end method
