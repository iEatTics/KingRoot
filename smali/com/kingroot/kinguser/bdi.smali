.class public Lcom/kingroot/kinguser/bdi;
.super Lcom/kingroot/kinguser/bdc;
.source "SourceFile"


# instance fields
.field private final biY:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/kingroot/kinguser/bdc;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/kingroot/kinguser/bdi;->biY:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 22
    return-void
.end method

.method public static ag(II)I
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 38
    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    .line 39
    return v0
.end method

.method public static f(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 33
    :cond_0
    return-object v0
.end method


# virtual methods
.method public YC()Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/bdi;->biY:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    return-object v0
.end method
