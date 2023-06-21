.class public Lcom/kingroot/kinguser/activitys/ExaminationRecommendAppActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {p0}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingroot/kinguser/activitys/ExaminationRecommendAppActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    const-string v1, "extra_app_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 38
    const-string v1, "extra_from_sence"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 3

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/ExaminationRecommendAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    const-string v0, "extra_app_info"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 23
    const-string v2, "extra_from_sence"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    new-instance v1, Lcom/kingroot/kinguser/axi;

    invoke-direct {v1, p0, v0, v2}, Lcom/kingroot/kinguser/axi;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;Ljava/lang/String;)V

    move-object v0, v1

    .line 27
    :goto_0
    return-object v0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/ExaminationRecommendAppActivity;->finish()V

    .line 27
    const/4 v0, 0x0

    goto :goto_0
.end method
