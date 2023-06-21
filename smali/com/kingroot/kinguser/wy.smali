.class public Lcom/kingroot/kinguser/wy;
.super Landroid/widget/Scroller;
.source "SourceFile"


# instance fields
.field private mDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 7
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/kingroot/kinguser/wy;->mDuration:I

    .line 11
    iput p2, p0, Lcom/kingroot/kinguser/wy;->mDuration:I

    .line 12
    return-void
.end method


# virtual methods
.method public startScroll(IIII)V
    .locals 6

    .prologue
    .line 16
    iget v5, p0, Lcom/kingroot/kinguser/wy;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 17
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    .prologue
    .line 21
    iget v5, p0, Lcom/kingroot/kinguser/wy;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 22
    return-void
.end method
