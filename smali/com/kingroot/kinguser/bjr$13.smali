.class Lcom/kingroot/kinguser/bjr$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjr;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byr:Lcom/kingroot/kinguser/bjr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjr;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$13;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$13;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjr;->i(Lcom/kingroot/kinguser/bjr;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 484
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$13;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjr;->k(Lcom/kingroot/kinguser/bjr;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bjr$13;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v1}, Lcom/kingroot/kinguser/bjr;->j(Lcom/kingroot/kinguser/bjr;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 488
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
