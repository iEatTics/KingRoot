.class public Lcom/kingroot/kinguser/aic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aic$a;,
        Lcom/kingroot/kinguser/aic$b;,
        Lcom/kingroot/kinguser/aic$c;
    }
.end annotation


# static fields
.field public static aro:F


# instance fields
.field private Vd:Landroid/widget/ListView;

.field private ari:Landroid/widget/PopupWindow;

.field private ark:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private arn:Lcom/kingroot/kinguser/aic$b;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/high16 v0, 0x430c0000    # 140.0f

    sput v0, Lcom/kingroot/kinguser/aic;->aro:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/kingroot/kinguser/aic;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/kingroot/kinguser/aic;->mView:Landroid/view/View;

    .line 43
    return-void
.end method


# virtual methods
.method public Y(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/aic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aic;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/aic;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030132

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    iput-object p1, p0, Lcom/kingroot/kinguser/aic;->ark:Ljava/util/List;

    .line 54
    const v0, 0x7f0f000b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aic;->Vd:Landroid/widget/ListView;

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/aic;->Vd:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/kingroot/kinguser/aic;->arn:Lcom/kingroot/kinguser/aic$b;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    new-instance v0, Landroid/widget/PopupWindow;

    sget v2, Lcom/kingroot/kinguser/aic;->aro:F

    invoke-static {v2}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aic;->ari:Landroid/widget/PopupWindow;

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/aic;->ari:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0201fb

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/aic;->ari:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/aic;->ari:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/aic;->ari:Landroid/widget/PopupWindow;

    const v1, 0x7f0d0046

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 63
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/aic$b;)V
    .locals 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/kingroot/kinguser/aic;->arn:Lcom/kingroot/kinguser/aic$b;

    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/aic;->Vd:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kingroot/kinguser/aic;->arn:Lcom/kingroot/kinguser/aic$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/aic;->ari:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/aic;->ari:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/aic;->ari:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 87
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/aic;->Vd:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 71
    iget-object v1, p0, Lcom/kingroot/kinguser/aic;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 74
    iget-object v1, p0, Lcom/kingroot/kinguser/aic;->ari:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/kingroot/kinguser/aic;->mView:Landroid/view/View;

    const/16 v3, 0x30

    const/4 v4, 0x0

    aget v4, v0, v4

    iget-object v5, p0, Lcom/kingroot/kinguser/aic;->mView:Landroid/view/View;

    .line 75
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

    iget-object v5, p0, Lcom/kingroot/kinguser/aic;->mView:Landroid/view/View;

    .line 76
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 74
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 77
    return-void
.end method
