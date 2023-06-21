.class public Lcom/kingroot/kinguser/aqk;
.super Lcom/kingroot/kinguser/aql;
.source "SourceFile"


# instance fields
.field private final aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

.field private final aLm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private aLn:Z


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kingroot/kinguser/aql;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqk;->aLm:Ljava/util/Map;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/aqk;->aLn:Z

    .line 41
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Lcom/kingroot/kinguser/aqk;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/aqk;->aLm:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 44
    return-void
.end method


# virtual methods
.method public KM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/aqk;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public ME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/aqk;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->mainTitle:Ljava/lang/String;

    return-object v0
.end method

.method public MF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/aqk;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->describe:Ljava/lang/String;

    return-object v0
.end method

.method protected MG()Z
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aqk;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected MH()Z
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/kingroot/kinguser/aft;->vt()Landroid/app/Activity;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/kingroot/kinguser/aqk;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    const-string v2, "Optimi"

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/activitys/ExaminationRecommendAppActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;Ljava/lang/String;)V

    .line 66
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected MM()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/aqk;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public MN()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/aqk;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->position:I

    return v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/aqk;->aLm:Ljava/util/Map;

    iget-object v1, p0, Lcom/kingroot/kinguser/aqk;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->iconUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 90
    const/4 v1, 0x0

    .line 91
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 94
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x97

    return v0
.end method

.method public ignore()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/kingroot/kinguser/aql;->ignore()V

    .line 72
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aqk;->aLn:Z

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/aqk;->aLn:Z

    .line 76
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aop;->Kq()Lcom/kingroot/kinguser/aop;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aqk;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aop;->hH(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public vs()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aqk;->aLn:Z

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aqk;->aLl:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->Km()Z

    move-result v0

    goto :goto_0
.end method
