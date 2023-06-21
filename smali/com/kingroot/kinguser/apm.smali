.class public Lcom/kingroot/kinguser/apm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aHO:I

.field private aHP:I

.field private aHQ:I

.field private aHR:I

.field private height:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static v(Landroid/view/View;)Lcom/kingroot/kinguser/apm;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 99
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 100
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 101
    new-instance v1, Lcom/kingroot/kinguser/apm;

    invoke-direct {v1}, Lcom/kingroot/kinguser/apm;-><init>()V

    .line 102
    aget v0, v2, v5

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/apm;->ge(I)V

    .line 103
    aget v0, v2, v6

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/apm;->setY(I)V

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/apm;->setWidth(I)V

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/apm;->setHeight(I)V

    .line 107
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 108
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 109
    if-nez v0, :cond_0

    move-object v0, v1

    .line 130
    :goto_0
    return-object v0

    .line 112
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 113
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 115
    aget v4, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/apm;->gf(I)V

    .line 116
    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/apm;->gh(I)V

    .line 121
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-le v3, v0, :cond_3

    .line 122
    aget v2, v2, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/apm;->gg(I)V

    .line 123
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/apm;->gi(I)V

    :cond_1
    :goto_2
    move-object v0, v1

    .line 130
    goto :goto_0

    .line 118
    :cond_2
    aget v3, v2, v5

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/apm;->gf(I)V

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/apm;->gh(I)V

    goto :goto_1

    .line 125
    :cond_3
    aget v0, v2, v6

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/apm;->gg(I)V

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/apm;->gi(I)V

    goto :goto_2
.end method


# virtual methods
.method public Lp()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/kingroot/kinguser/apm;->aHO:I

    return v0
.end method

.method public Lq()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/kingroot/kinguser/apm;->aHQ:I

    return v0
.end method

.method public ge(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/kingroot/kinguser/apm;->x:I

    .line 34
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/kingroot/kinguser/apm;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/kingroot/kinguser/apm;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/kingroot/kinguser/apm;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/kingroot/kinguser/apm;->y:I

    return v0
.end method

.method public gf(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/kingroot/kinguser/apm;->aHO:I

    .line 50
    return-void
.end method

.method public gg(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/kingroot/kinguser/apm;->aHP:I

    .line 58
    return-void
.end method

.method public gh(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/kingroot/kinguser/apm;->aHQ:I

    .line 82
    return-void
.end method

.method public gi(I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/kingroot/kinguser/apm;->aHR:I

    .line 90
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/kingroot/kinguser/apm;->height:I

    .line 74
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/kingroot/kinguser/apm;->width:I

    .line 66
    return-void
.end method

.method public setY(I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/kingroot/kinguser/apm;->y:I

    .line 42
    return-void
.end method
