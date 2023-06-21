.class public Lcom/kingroot/kinguser/qe;
.super Lcom/kingroot/kinguser/qj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/qe$a;,
        Lcom/kingroot/kinguser/qe$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/qm;)V
    .locals 3

    .prologue
    .line 65
    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/kingroot/kinguser/qe;-><init>(Lcom/kingroot/kinguser/qm;FFF)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/qm;FFF)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/kingroot/kinguser/qj;-><init>(Lcom/kingroot/kinguser/qm;FFF)V

    .line 81
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 95
    invoke-static {p1}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/bhi;->setTranslationX(F)V

    .line 96
    return-void
.end method

.method protected a(Landroid/view/View;FLandroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 100
    invoke-static {p1}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/bhi;->setTranslationX(F)V

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    sub-float v0, p2, v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 102
    return-void
.end method

.method protected hn()Lcom/kingroot/kinguser/qj$e;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/kingroot/kinguser/qe$b;

    invoke-direct {v0}, Lcom/kingroot/kinguser/qe$b;-><init>()V

    return-object v0
.end method

.method protected ho()Lcom/kingroot/kinguser/qj$a;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/kingroot/kinguser/qe$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/qe$a;-><init>()V

    return-object v0
.end method
