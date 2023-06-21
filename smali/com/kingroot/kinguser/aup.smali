.class public Lcom/kingroot/kinguser/aup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aug$a;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final aRL:Lcom/kingroot/kinguser/anp;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppsMarketWellChosenAppsPresenter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/anp;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/aup;->mType:I

    .line 37
    iput-object p1, p0, Lcom/kingroot/kinguser/aup;->aRL:Lcom/kingroot/kinguser/anp;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aup;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/kingroot/kinguser/aup;->mType:I

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/aup;)Lcom/kingroot/kinguser/anp;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/aup;->aRL:Lcom/kingroot/kinguser/anp;

    return-object v0
.end method


# virtual methods
.method public PU()V
    .locals 6

    .prologue
    .line 52
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/aup$1;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/aup$1;-><init>(Lcom/kingroot/kinguser/aup;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 61
    return-void
.end method

.method public bk(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/alx;->ax(Ljava/util/List;)V

    .line 71
    return-void
.end method

.method public bl(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    move v4, v2

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public gK(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/kingroot/kinguser/aup;->mType:I

    .line 83
    return-void
.end method

.method public k(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 65
    invoke-static {p1}, Lcom/kingroot/kinguser/activitys/AppsMarketMainActivity;->aL(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
