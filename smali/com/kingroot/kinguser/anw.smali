.class public abstract Lcom/kingroot/kinguser/anw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final aEA:Landroid/view/View$OnTouchListener;

.field protected aEz:Lcom/kingroot/kinguser/aoa;

.field protected mView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;Lcom/kingroot/kinguser/aoa;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/kingroot/kinguser/anw$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anw$1;-><init>(Lcom/kingroot/kinguser/anw;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anw;->aEA:Landroid/view/View$OnTouchListener;

    .line 16
    iput-object p1, p0, Lcom/kingroot/kinguser/anw;->mView:Landroid/view/View;

    .line 17
    iput-object p2, p0, Lcom/kingroot/kinguser/anw;->aEz:Lcom/kingroot/kinguser/aoa;

    .line 18
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/anw;->t(Landroid/view/View;)V

    .line 19
    return-void
.end method

.method private t(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 28
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/anw;->aEA:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 30
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    move-object v0, p1

    .line 31
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 32
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/anw;->t(Landroid/view/View;)V

    .line 30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method protected cD(Z)V
    .locals 2

    .prologue
    .line 22
    iget-object v1, p0, Lcom/kingroot/kinguser/anw;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    return-void

    .line 22
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
