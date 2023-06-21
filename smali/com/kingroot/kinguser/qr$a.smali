.class public Lcom/kingroot/kinguser/qr$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/qr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private EF:I

.field private EG:F

.field private EH:F

.field private EI:Z

.field private EK:Z

.field private EL:Z

.field private EU:I

.field private EV:Z

.field private EW:Z

.field private EX:Landroid/graphics/drawable/Drawable;

.field private EY:Lcom/kingroot/kinguser/qr$b;

.field private mColors:[I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mSpeed:F

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/qr$a;-><init>(Landroid/content/Context;Z)V

    .line 661
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/qr$a;->b(Landroid/content/Context;Z)V

    .line 665
    return-void
.end method

.method private b(Landroid/content/Context;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 690
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 691
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/qr$a;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 692
    if-nez p2, :cond_0

    .line 693
    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/qr$a;->EF:I

    .line 694
    const v1, 0x7f07051b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/qr$a;->mSpeed:F

    .line 695
    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingroot/kinguser/qr$a;->EI:Z

    .line 696
    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingroot/kinguser/qr$a;->EL:Z

    .line 697
    new-array v1, v2, [I

    const v2, 0x7f0e00f5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v3

    iput-object v1, p0, Lcom/kingroot/kinguser/qr$a;->mColors:[I

    .line 698
    const v1, 0x7f0a0129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/qr$a;->EU:I

    .line 699
    const v1, 0x7f0a012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/qr$a;->mStrokeWidth:F

    .line 709
    :goto_0
    iget v0, p0, Lcom/kingroot/kinguser/qr$a;->mSpeed:F

    iput v0, p0, Lcom/kingroot/kinguser/qr$a;->EG:F

    .line 710
    iget v0, p0, Lcom/kingroot/kinguser/qr$a;->mSpeed:F

    iput v0, p0, Lcom/kingroot/kinguser/qr$a;->EH:F

    .line 711
    iput-boolean v3, p0, Lcom/kingroot/kinguser/qr$a;->EW:Z

    .line 712
    return-void

    .line 701
    :cond_0
    iput v4, p0, Lcom/kingroot/kinguser/qr$a;->EF:I

    .line 702
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/kingroot/kinguser/qr$a;->mSpeed:F

    .line 703
    iput-boolean v3, p0, Lcom/kingroot/kinguser/qr$a;->EI:Z

    .line 704
    iput-boolean v3, p0, Lcom/kingroot/kinguser/qr$a;->EL:Z

    .line 705
    new-array v0, v2, [I

    const v1, -0xcc4a1b

    aput v1, v0, v3

    iput-object v0, p0, Lcom/kingroot/kinguser/qr$a;->mColors:[I

    .line 706
    iput v4, p0, Lcom/kingroot/kinguser/qr$a;->EU:I

    .line 707
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/kingroot/kinguser/qr$a;->mStrokeWidth:F

    goto :goto_0
.end method


# virtual methods
.method public A(Z)Lcom/kingroot/kinguser/qr$a;
    .locals 0

    .prologue
    .line 768
    iput-boolean p1, p0, Lcom/kingroot/kinguser/qr$a;->EI:Z

    .line 769
    return-object p0
.end method

.method public B(Z)Lcom/kingroot/kinguser/qr$a;
    .locals 0

    .prologue
    .line 773
    iput-boolean p1, p0, Lcom/kingroot/kinguser/qr$a;->EK:Z

    .line 774
    return-object p0
.end method

.method public C(Z)Lcom/kingroot/kinguser/qr$a;
    .locals 0

    .prologue
    .line 778
    iput-boolean p1, p0, Lcom/kingroot/kinguser/qr$a;->EL:Z

    .line 779
    return-object p0
.end method

.method public D(Z)Lcom/kingroot/kinguser/qr$a;
    .locals 0

    .prologue
    .line 802
    iput-boolean p1, p0, Lcom/kingroot/kinguser/qr$a;->EW:Z

    .line 803
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/kingroot/kinguser/qr$a;
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Lcom/kingroot/kinguser/qr$a;->EX:Landroid/graphics/drawable/Drawable;

    .line 789
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Lcom/kingroot/kinguser/qr$a;
    .locals 1

    .prologue
    .line 715
    const-string v0, "Interpolator"

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/qq;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    iput-object p1, p0, Lcom/kingroot/kinguser/qr$a;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 717
    return-object p0
.end method

.method public aM(I)Lcom/kingroot/kinguser/qr$a;
    .locals 1

    .prologue
    .line 721
    const-string v0, "Sections count"

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/qq;->j(ILjava/lang/String;)V

    .line 722
    iput p1, p0, Lcom/kingroot/kinguser/qr$a;->EF:I

    .line 723
    return-object p0
.end method

.method public aN(I)Lcom/kingroot/kinguser/qr$a;
    .locals 2

    .prologue
    .line 727
    int-to-float v0, p1

    const-string v1, "Separator length"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/qq;->b(FLjava/lang/String;)V

    .line 728
    iput p1, p0, Lcom/kingroot/kinguser/qr$a;->EU:I

    .line 729
    return-object p0
.end method

.method public aO(I)Lcom/kingroot/kinguser/qr$a;
    .locals 2

    .prologue
    .line 733
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lcom/kingroot/kinguser/qr$a;->mColors:[I

    .line 734
    return-object p0
.end method

.method public b([I)Lcom/kingroot/kinguser/qr$a;
    .locals 0

    .prologue
    .line 738
    invoke-static {p1}, Lcom/kingroot/kinguser/qq;->a([I)V

    .line 739
    iput-object p1, p0, Lcom/kingroot/kinguser/qr$a;->mColors:[I

    .line 740
    return-object p0
.end method

.method public hy()Lcom/kingroot/kinguser/qr;
    .locals 17

    .prologue
    .line 668
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/kingroot/kinguser/qr$a;->EV:Z

    if-eqz v1, :cond_0

    .line 669
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingroot/kinguser/qr$a;->mColors:[I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingroot/kinguser/qr$a;->mStrokeWidth:F

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/qq;->a([IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kingroot/kinguser/qr$a;->EX:Landroid/graphics/drawable/Drawable;

    .line 671
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/qr;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/qr$a;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingroot/kinguser/qr$a;->EF:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingroot/kinguser/qr$a;->EU:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/qr$a;->mColors:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/kingroot/kinguser/qr$a;->mStrokeWidth:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/kingroot/kinguser/qr$a;->mSpeed:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/kingroot/kinguser/qr$a;->EG:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/kingroot/kinguser/qr$a;->EH:F

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/kingroot/kinguser/qr$a;->EI:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/kingroot/kinguser/qr$a;->EK:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingroot/kinguser/qr$a;->EY:Lcom/kingroot/kinguser/qr$b;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/kingroot/kinguser/qr$a;->EL:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kingroot/kinguser/qr$a;->EX:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/kingroot/kinguser/qr$a;->EW:Z

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v16}, Lcom/kingroot/kinguser/qr;-><init>(Landroid/view/animation/Interpolator;II[IFFFFZZLcom/kingroot/kinguser/qr$b;ZLandroid/graphics/drawable/Drawable;ZLcom/kingroot/kinguser/qr$1;)V

    .line 686
    return-object v1
.end method

.method public hz()Lcom/kingroot/kinguser/qr$a;
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/qr$a;->EV:Z

    .line 794
    return-object p0
.end method

.method public i(F)Lcom/kingroot/kinguser/qr$a;
    .locals 1

    .prologue
    .line 744
    const-string v0, "Width"

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/qq;->b(FLjava/lang/String;)V

    .line 745
    iput p1, p0, Lcom/kingroot/kinguser/qr$a;->mStrokeWidth:F

    .line 746
    return-object p0
.end method

.method public j(F)Lcom/kingroot/kinguser/qr$a;
    .locals 0

    .prologue
    .line 750
    invoke-static {p1}, Lcom/kingroot/kinguser/qq;->f(F)V

    .line 751
    iput p1, p0, Lcom/kingroot/kinguser/qr$a;->mSpeed:F

    .line 752
    return-object p0
.end method

.method public k(F)Lcom/kingroot/kinguser/qr$a;
    .locals 0

    .prologue
    .line 756
    invoke-static {p1}, Lcom/kingroot/kinguser/qq;->f(F)V

    .line 757
    iput p1, p0, Lcom/kingroot/kinguser/qr$a;->EG:F

    .line 758
    return-object p0
.end method

.method public l(F)Lcom/kingroot/kinguser/qr$a;
    .locals 0

    .prologue
    .line 762
    invoke-static {p1}, Lcom/kingroot/kinguser/qq;->f(F)V

    .line 763
    iput p1, p0, Lcom/kingroot/kinguser/qr$a;->EH:F

    .line 764
    return-object p0
.end method
