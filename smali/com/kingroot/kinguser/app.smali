.class public Lcom/kingroot/kinguser/app;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aIh:Landroid/graphics/RectF;

.field public aIi:Landroid/graphics/RectF;

.field public aIj:Landroid/graphics/RectF;

.field aIk:Landroid/graphics/RectF;

.field aIl:Landroid/graphics/PointF;

.field aIm:F

.field public aIn:F

.field public aIo:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;FFLandroid/widget/ImageView$ScaleType;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/app;->aIh:Landroid/graphics/RectF;

    .line 13
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/app;->aIi:Landroid/graphics/RectF;

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/app;->aIj:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/app;->aIk:Landroid/graphics/RectF;

    .line 19
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/app;->aIl:Landroid/graphics/PointF;

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/app;->aIh:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/app;->aIi:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/app;->aIj:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 31
    iput p6, p0, Lcom/kingroot/kinguser/app;->aIm:F

    .line 32
    iput-object p8, p0, Lcom/kingroot/kinguser/app;->aIo:Landroid/widget/ImageView$ScaleType;

    .line 33
    iput p7, p0, Lcom/kingroot/kinguser/app;->aIn:F

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/app;->aIk:Landroid/graphics/RectF;

    invoke-virtual {v0, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/app;->aIl:Landroid/graphics/PointF;

    invoke-virtual {v0, p5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 36
    return-void
.end method
