.class public Lcom/kingroot/kinguser/aib;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aib$a;,
        Lcom/kingroot/kinguser/aib$d;,
        Lcom/kingroot/kinguser/aib$c;,
        Lcom/kingroot/kinguser/aib$b;
    }
.end annotation


# instance fields
.field private Vd:Landroid/widget/ListView;

.field private ari:Landroid/widget/PopupWindow;

.field private arj:Lcom/kingroot/kinguser/aib$b;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/kingroot/kinguser/aib;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/kingroot/kinguser/aib;->mView:Landroid/view/View;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/aib$b;)V
    .locals 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/kingroot/kinguser/aib;->arj:Lcom/kingroot/kinguser/aib$b;

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/aib;->Vd:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kingroot/kinguser/aib;->arj:Lcom/kingroot/kinguser/aib$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/aib;->ari:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/aib;->ari:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/aib;->ari:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 80
    :cond_0
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/aib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aib;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/aib;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030132

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    const v0, 0x7f0f000b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aib;->Vd:Landroid/widget/ListView;

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/aib;->Vd:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/kingroot/kinguser/aib;->arj:Lcom/kingroot/kinguser/aib$b;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    new-instance v0, Landroid/widget/PopupWindow;

    sget v2, Lcom/kingroot/kinguser/aic;->aro:F

    invoke-static {v2}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aib;->ari:Landroid/widget/PopupWindow;

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/aib;->ari:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0201fb

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/aib;->ari:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/aib;->ari:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/aib;->ari:Landroid/widget/PopupWindow;

    const v1, 0x7f0d0046

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 56
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/aib;->Vd:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 64
    iget-object v1, p0, Lcom/kingroot/kinguser/aib;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 67
    iget-object v1, p0, Lcom/kingroot/kinguser/aib;->ari:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/kingroot/kinguser/aib;->mView:Landroid/view/View;

    const/16 v3, 0x30

    const/4 v4, 0x0

    aget v4, v0, v4

    iget-object v5, p0, Lcom/kingroot/kinguser/aib;->mView:Landroid/view/View;

    .line 68
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    aget v0, v0, v5

    iget-object v5, p0, Lcom/kingroot/kinguser/aib;->mView:Landroid/view/View;

    .line 69
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 67
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 70
    return-void
.end method
