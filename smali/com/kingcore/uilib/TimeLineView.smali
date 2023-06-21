.class public Lcom/kingcore/uilib/TimeLineView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final Ds:I

.field private static final Dt:I


# instance fields
.field private CG:I

.field private Dl:Landroid/graphics/Paint;

.field private Dm:I

.field private Dn:I

.field private Do:I

.field private Dp:I

.field private Dq:I

.field private Dr:I

.field private Du:Z

.field private Dv:Z

.field private Dw:I

.field private mCirclePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "#99aeb9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/kingcore/uilib/TimeLineView;->Ds:I

    .line 36
    const-string v0, "#dce5eb"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/kingcore/uilib/TimeLineView;->Dt:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-boolean v0, p0, Lcom/kingcore/uilib/TimeLineView;->Du:Z

    .line 39
    iput-boolean v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dv:Z

    .line 40
    sget v0, Lcom/kingcore/uilib/TimeLineView;->Ds:I

    iput v0, p0, Lcom/kingcore/uilib/TimeLineView;->CG:I

    .line 41
    sget v0, Lcom/kingcore/uilib/TimeLineView;->Dt:I

    iput v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dw:I

    .line 45
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/kingcore/uilib/TimeLineView;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-boolean v0, p0, Lcom/kingcore/uilib/TimeLineView;->Du:Z

    .line 39
    iput-boolean v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dv:Z

    .line 40
    sget v0, Lcom/kingcore/uilib/TimeLineView;->Ds:I

    iput v0, p0, Lcom/kingcore/uilib/TimeLineView;->CG:I

    .line 41
    sget v0, Lcom/kingcore/uilib/TimeLineView;->Dt:I

    iput v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dw:I

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kingcore/uilib/TimeLineView;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    iput-boolean v0, p0, Lcom/kingcore/uilib/TimeLineView;->Du:Z

    .line 39
    iput-boolean v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dv:Z

    .line 40
    sget v0, Lcom/kingcore/uilib/TimeLineView;->Ds:I

    iput v0, p0, Lcom/kingcore/uilib/TimeLineView;->CG:I

    .line 41
    sget v0, Lcom/kingcore/uilib/TimeLineView;->Dt:I

    iput v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dw:I

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingcore/uilib/TimeLineView;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 60
    sget-object v0, Lcom/kingroot/kinguser/afs$a;->TimeLineView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 63
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 64
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 65
    packed-switch v3, :pswitch_data_0

    .line 63
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :pswitch_0
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/kingcore/uilib/TimeLineView;->Du:Z

    goto :goto_1

    .line 70
    :pswitch_1
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/kingcore/uilib/TimeLineView;->Dv:Z

    goto :goto_1

    .line 73
    :pswitch_2
    sget v4, Lcom/kingcore/uilib/TimeLineView;->Ds:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/kingcore/uilib/TimeLineView;->CG:I

    goto :goto_1

    .line 76
    :pswitch_3
    sget v4, Lcom/kingcore/uilib/TimeLineView;->Dt:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/kingcore/uilib/TimeLineView;->Dw:I

    goto :goto_1

    .line 80
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/TimeLineView;->mCirclePaint:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lcom/kingcore/uilib/TimeLineView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v0, p0, Lcom/kingcore/uilib/TimeLineView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 83
    iget-object v0, p0, Lcom/kingcore/uilib/TimeLineView;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/TimeLineView;->CG:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dl:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dl:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dl:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 88
    iget-object v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dl:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/TimeLineView;->Dw:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    return-void

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public b(ZZ)V
    .locals 0

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/kingcore/uilib/TimeLineView;->Du:Z

    .line 123
    iput-boolean p2, p0, Lcom/kingcore/uilib/TimeLineView;->Dv:Z

    .line 125
    invoke-virtual {p0}, Lcom/kingcore/uilib/TimeLineView;->postInvalidate()V

    .line 126
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    iget v0, p0, Lcom/kingcore/uilib/TimeLineView;->Do:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kingcore/uilib/TimeLineView;->Dp:I

    int-to-float v1, v1

    iget v2, p0, Lcom/kingcore/uilib/TimeLineView;->Dq:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingcore/uilib/TimeLineView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 111
    iget-boolean v0, p0, Lcom/kingcore/uilib/TimeLineView;->Du:Z

    if-eqz v0, :cond_0

    .line 112
    iget v0, p0, Lcom/kingcore/uilib/TimeLineView;->Do:I

    int-to-float v1, v0

    iget v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dp:I

    iget v2, p0, Lcom/kingcore/uilib/TimeLineView;->Dq:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/kingcore/uilib/TimeLineView;->Dr:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/kingcore/uilib/TimeLineView;->Do:I

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingcore/uilib/TimeLineView;->Dl:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 116
    :cond_0
    iget-boolean v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dv:Z

    if-eqz v0, :cond_1

    .line 117
    iget v0, p0, Lcom/kingcore/uilib/TimeLineView;->Do:I

    int-to-float v1, v0

    iget v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dp:I

    iget v2, p0, Lcom/kingcore/uilib/TimeLineView;->Dq:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/kingcore/uilib/TimeLineView;->Dr:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/kingcore/uilib/TimeLineView;->Do:I

    int-to-float v3, v0

    iget v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dn:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/kingcore/uilib/TimeLineView;->Dl:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 119
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 132
    iput p1, p0, Lcom/kingcore/uilib/TimeLineView;->Dm:I

    .line 133
    iput p2, p0, Lcom/kingcore/uilib/TimeLineView;->Dn:I

    .line 135
    iget v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dm:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kingcore/uilib/TimeLineView;->Do:I

    .line 136
    iget v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dn:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dp:I

    .line 138
    iget v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dm:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dq:I

    .line 140
    iget v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dq:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dr:I

    .line 141
    iget-object v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dl:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/TimeLineView;->Dq:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    return-void
.end method

.method public s(II)V
    .locals 2

    .prologue
    .line 92
    iput p1, p0, Lcom/kingcore/uilib/TimeLineView;->CG:I

    .line 93
    iput p2, p0, Lcom/kingcore/uilib/TimeLineView;->Dw:I

    .line 94
    iget-object v0, p0, Lcom/kingcore/uilib/TimeLineView;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/TimeLineView;->CG:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/kingcore/uilib/TimeLineView;->Dl:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/TimeLineView;->Dw:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    invoke-virtual {p0}, Lcom/kingcore/uilib/TimeLineView;->invalidate()V

    .line 98
    return-void
.end method
