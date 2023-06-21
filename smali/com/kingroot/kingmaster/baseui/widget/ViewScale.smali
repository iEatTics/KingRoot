.class public Lcom/kingroot/kingmaster/baseui/widget/ViewScale;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kingmaster/baseui/widget/ViewScale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Rl:I

.field private acO:F

.field private acP:I

.field private acQ:F

.field private acR:F

.field private acS:Z

.field private mHeightMeasureSpec:I

.field private mMinHeight:I

.field private mView:Landroid/view/View;

.field private mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale$1;

    invoke-direct {v0}, Lcom/kingroot/kingmaster/baseui/widget/ViewScale$1;-><init>()V

    sput-object v0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acO:F

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acO:F

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->Rl:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mMinHeight:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acP:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mWidthMeasureSpec:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mHeightMeasureSpec:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acQ:F

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acR:F

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acS:Z

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acO:F

    .line 34
    iput-object p1, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mView:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 37
    iput-boolean v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acS:Z

    .line 38
    return-void
.end method


# virtual methods
.method public E(II)V
    .locals 2

    .prologue
    .line 57
    iput p1, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mWidthMeasureSpec:I

    .line 59
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acP:I

    .line 61
    iget-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acS:Z

    if-eqz v0, :cond_0

    .line 62
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->Rl:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mHeightMeasureSpec:I

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iput p2, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mHeightMeasureSpec:I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public k(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acQ:F

    .line 89
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acO:F

    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acO:F

    iget v2, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acQ:F

    iget v3, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acR:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 90
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mView:Landroid/view/View;

    .line 54
    return-void
.end method

.method public sl()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 69
    iget-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acS:Z

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->Rl:I

    .line 71
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->Rl:I

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mMinHeight:I

    .line 72
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mMinHeight:I

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acR:F

    .line 73
    iput v2, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acO:F

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acS:Z

    .line 77
    :cond_0
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acP:I

    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->Rl:I

    if-gt v0, v1, :cond_1

    .line 78
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acP:I

    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mMinHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->Rl:I

    iget v2, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mMinHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acO:F

    .line 79
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 81
    :cond_1
    return-void
.end method

.method public sm()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mWidthMeasureSpec:I

    return v0
.end method

.method public sn()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mHeightMeasureSpec:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acO:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 108
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->Rl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mMinHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acP:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mWidthMeasureSpec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->mHeightMeasureSpec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acQ:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 114
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acR:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 115
    iget-boolean v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;->acS:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
