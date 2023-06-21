.class public Lcom/kingroot/kinguser/qy;
.super Lcom/kingroot/kinguser/qt;
.source "SourceFile"


# instance fields
.field private final Fl:J

.field private final Fm:J

.field private final Ft:F

.field private final Fu:F


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/kingroot/kinguser/qy;-><init>(Landroid/widget/BaseAdapter;FF)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/widget/BaseAdapter;FF)V
    .locals 8

    .prologue
    .line 36
    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x12c

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/qy;-><init>(Landroid/widget/BaseAdapter;FFJJ)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/widget/BaseAdapter;FFJJ)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/qt;-><init>(Landroid/widget/BaseAdapter;)V

    .line 42
    iput p2, p0, Lcom/kingroot/kinguser/qy;->Ft:F

    .line 43
    iput p3, p0, Lcom/kingroot/kinguser/qy;->Fu:F

    .line 44
    iput-wide p4, p0, Lcom/kingroot/kinguser/qy;->Fl:J

    .line 45
    iput-wide p6, p0, Lcom/kingroot/kinguser/qy;->Fm:J

    .line 46
    return-void
.end method


# virtual methods
.method public b(Landroid/view/ViewGroup;Landroid/view/View;)[Lcom/android/animation/Animator;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    const-string v0, "scaleX"

    new-array v1, v6, [F

    iget v2, p0, Lcom/kingroot/kinguser/qy;->Ft:F

    aput v2, v1, v4

    iget v2, p0, Lcom/kingroot/kinguser/qy;->Fu:F

    aput v2, v1, v5

    invoke-static {p2, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 62
    const-string v1, "scaleY"

    new-array v2, v6, [F

    iget v3, p0, Lcom/kingroot/kinguser/qy;->Ft:F

    aput v3, v2, v4

    iget v3, p0, Lcom/kingroot/kinguser/qy;->Fu:F

    aput v3, v2, v5

    invoke-static {p2, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v1

    .line 63
    new-array v2, v6, [Lcom/android/animation/ObjectAnimator;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    return-object v2
.end method

.method protected hB()J
    .locals 2

    .prologue
    .line 32
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected hC()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/kingroot/kinguser/qy;->Fl:J

    return-wide v0
.end method

.method protected hD()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/kingroot/kinguser/qy;->Fm:J

    return-wide v0
.end method
