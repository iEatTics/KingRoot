.class Lcom/kingroot/kinguser/axj$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axj;->n(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aZj:Lcom/kingroot/kinguser/axj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axj;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/kingroot/kinguser/axj$6;->aZj:Lcom/kingroot/kinguser/axj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/axj$6;->aZj:Lcom/kingroot/kinguser/axj;

    invoke-static {v1}, Lcom/kingroot/kinguser/axj;->a(Lcom/kingroot/kinguser/axj;)Lcom/kingcore/uilib/VerticalViewPager;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_0

    .line 228
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 229
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Lcom/kingcore/uilib/VerticalViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 233
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/kingcore/uilib/VerticalViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method
