.class final Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aom$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/aom$a",
        "<",
        "Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;",
        "Lcom/kingroot/kinguser/di;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/kingroot/kinguser/di;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/di;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 189
    new-instance v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;-><init>(Lcom/kingroot/kinguser/di;)V

    return-object v0
.end method

.method public synthetic p(Ljava/lang/Object;)Lcom/kingroot/kinguser/aom;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 186
    check-cast p1, Lcom/kingroot/kinguser/di;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo$2;->b(Lcom/kingroot/kinguser/di;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v0

    return-object v0
.end method
