.class public Lcom/kingroot/kinguser/qc;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private final Ck:F

.field private final Cl:F

.field private final Cm:F

.field private final Cn:F

.field private final Co:F

.field private final Cp:Z

.field private Cq:Landroid/graphics/Camera;

.field Cr:Landroid/view/ContextThemeWrapper;

.field Cs:F


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;FFFFFZ)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/kingroot/kinguser/qc;->Cs:F

    .line 38
    iput-object p1, p0, Lcom/kingroot/kinguser/qc;->Cr:Landroid/view/ContextThemeWrapper;

    .line 39
    iput p2, p0, Lcom/kingroot/kinguser/qc;->Ck:F

    .line 40
    iput p3, p0, Lcom/kingroot/kinguser/qc;->Cl:F

    .line 41
    iput p4, p0, Lcom/kingroot/kinguser/qc;->Cm:F

    .line 42
    iput p5, p0, Lcom/kingroot/kinguser/qc;->Cn:F

    .line 43
    iput p6, p0, Lcom/kingroot/kinguser/qc;->Co:F

    .line 44
    iput-boolean p7, p0, Lcom/kingroot/kinguser/qc;->Cp:Z

    .line 45
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/kingroot/kinguser/qc;->Cs:F

    .line 46
    const-string v0, "scale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kingroot/kinguser/qc;->Cs:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x0

    .line 59
    iget v0, p0, Lcom/kingroot/kinguser/qc;->Ck:F

    .line 61
    iget v1, p0, Lcom/kingroot/kinguser/qc;->Cl:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 64
    iget v1, p0, Lcom/kingroot/kinguser/qc;->Cm:F

    .line 65
    iget v2, p0, Lcom/kingroot/kinguser/qc;->Cn:F

    .line 66
    iget-object v3, p0, Lcom/kingroot/kinguser/qc;->Cq:Landroid/graphics/Camera;

    .line 68
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 70
    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 71
    iget-boolean v5, p0, Lcom/kingroot/kinguser/qc;->Cp:Z

    if-eqz v5, :cond_0

    .line 72
    iget v5, p0, Lcom/kingroot/kinguser/qc;->Co:F

    mul-float/2addr v5, p1

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 76
    :goto_0
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 78
    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 79
    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 81
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 82
    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 83
    aget v3, v0, v8

    iget v5, p0, Lcom/kingroot/kinguser/qc;->Cs:F

    div-float/2addr v3, v5

    aput v3, v0, v8

    .line 84
    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 86
    neg-float v0, v1

    neg-float v3, v2

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 87
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 88
    return-void

    .line 74
    :cond_0
    iget v5, p0, Lcom/kingroot/kinguser/qc;->Co:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p1

    mul-float/2addr v5, v6

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0

    .line 81
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public initialize(IIII)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 53
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/qc;->Cq:Landroid/graphics/Camera;

    .line 54
    return-void
.end method
