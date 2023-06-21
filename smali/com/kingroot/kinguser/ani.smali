.class public Lcom/kingroot/kinguser/ani;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ani$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final aAG:F

.field private aAH:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MainHorizontalAppRVItemDecoration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ani;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 23
    const/high16 v0, 0x40600000    # 3.5f

    iput v0, p0, Lcom/kingroot/kinguser/ani;->aAG:F

    return-void
.end method

.method private a(IIIIFLcom/kingroot/kinguser/ani$a;Z)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 60
    int-to-float v0, p3

    int-to-float v1, p4

    mul-float/2addr v1, p5

    sub-float/2addr v0, v1

    float-to-int v1, p5

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 69
    if-nez p7, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    if-le v0, p1, :cond_2

    .line 76
    sget-object v1, Lcom/kingroot/kinguser/ani$a;->aAK:Lcom/kingroot/kinguser/ani$a;

    if-eq p6, v1, :cond_0

    .line 82
    invoke-direct {p0, p5}, Lcom/kingroot/kinguser/ani;->s(F)F

    move-result v5

    sget-object v6, Lcom/kingroot/kinguser/ani$a;->aAJ:Lcom/kingroot/kinguser/ani$a;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/ani;->a(IIIIFLcom/kingroot/kinguser/ani$a;Z)I

    move-result v0

    goto :goto_0

    .line 83
    :cond_2
    if-ge v0, p2, :cond_0

    .line 85
    sget-object v0, Lcom/kingroot/kinguser/ani$a;->aAJ:Lcom/kingroot/kinguser/ani$a;

    if-ne p6, v0, :cond_3

    .line 87
    const/4 v7, 0x0

    .line 93
    :cond_3
    invoke-direct {p0, p5}, Lcom/kingroot/kinguser/ani;->t(F)F

    move-result v5

    sget-object v6, Lcom/kingroot/kinguser/ani$a;->aAK:Lcom/kingroot/kinguser/ani$a;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/ani;->a(IIIIFLcom/kingroot/kinguser/ani$a;Z)I

    move-result v0

    goto :goto_0
.end method

.method private s(F)F
    .locals 3

    .prologue
    .line 101
    const v0, 0x3dcccccd    # 0.1f

    add-float/2addr v0, p1

    .line 102
    float-to-int v1, v0

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 104
    const/high16 v2, 0x3e800000    # 0.25f

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    const v2, 0x3f59999a    # 0.85f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 107
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ani;->s(F)F

    move-result v0

    goto :goto_0
.end method

.method private t(F)F
    .locals 3

    .prologue
    .line 113
    const v0, 0x3dcccccd    # 0.1f

    sub-float v0, p1, v0

    .line 114
    float-to-int v1, v0

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 116
    const/high16 v2, 0x3e800000    # 0.25f

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    const v2, 0x3f59999a    # 0.85f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 119
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ani;->t(F)F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 35
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 37
    const v1, 0x7f0a0035

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0a0028

    .line 38
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0a0027

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/zi;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    sub-int v8, v1, v0

    .line 40
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    sub-int v3, v0, v8

    .line 41
    iget v0, p0, Lcom/kingroot/kinguser/ani;->aAH:I

    if-gtz v0, :cond_0

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ani;->aAH:I

    .line 44
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/ani;->aAH:I

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v0, 0x3

    .line 45
    iget v0, p0, Lcom/kingroot/kinguser/ani;->aAH:I

    div-int/lit8 v2, v0, 0x5

    .line 46
    iget v4, p0, Lcom/kingroot/kinguser/ani;->aAH:I

    const/high16 v5, 0x40600000    # 3.5f

    sget-object v6, Lcom/kingroot/kinguser/ani$a;->aAI:Lcom/kingroot/kinguser/ani$a;

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/ani;->a(IIIIFLcom/kingroot/kinguser/ani$a;Z)I

    move-result v0

    .line 52
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-virtual {p1, v8, v9, v0, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p1, v9, v9, v0, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method
