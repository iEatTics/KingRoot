.class Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$a;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$a;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .prologue
    .line 268
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method
