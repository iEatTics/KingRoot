.class public Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field final bwA:Ljava/lang/Runnable;

.field private bwz:I

.field private mAnimating:Z

.field private mNumber:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber$1;-><init>(Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;->bwA:Ljava/lang/Runnable;

    .line 15
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;)I
    .locals 1

    .prologue
    .line 7
    iget v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;->mNumber:I

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;I)I
    .locals 0

    .prologue
    .line 7
    iput p1, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;->bwz:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;Z)Z
    .locals 0

    .prologue
    .line 7
    iput-boolean p1, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;->mAnimating:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;)I
    .locals 1

    .prologue
    .line 7
    iget v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;->bwz:I

    return v0
.end method


# virtual methods
.method public setNumber(I)V
    .locals 4

    .prologue
    .line 18
    iget v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;->mNumber:I

    if-ne v0, p1, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    iput p1, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;->mNumber:I

    .line 24
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;->mAnimating:Z

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;->bwA:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;->bwA:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3c

    invoke-virtual {p0, v0, v2, v3}, Lcom/kingroot/kinguser/ztool/autostartmgr/KmGradualChangeNumber;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
