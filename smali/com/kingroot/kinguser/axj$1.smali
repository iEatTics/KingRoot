.class Lcom/kingroot/kinguser/axj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axj;->oG()Landroid/view/View;
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
    .line 107
    iput-object p1, p0, Lcom/kingroot/kinguser/axj$1;->aZj:Lcom/kingroot/kinguser/axj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/axj$1;->aZj:Lcom/kingroot/kinguser/axj;

    invoke-static {v0}, Lcom/kingroot/kinguser/axj;->a(Lcom/kingroot/kinguser/axj;)Lcom/kingcore/uilib/VerticalViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axj$1;->aZj:Lcom/kingroot/kinguser/axj;

    invoke-static {v1}, Lcom/kingroot/kinguser/axj;->a(Lcom/kingroot/kinguser/axj;)Lcom/kingcore/uilib/VerticalViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingcore/uilib/VerticalViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingcore/uilib/VerticalViewPager;->setCurrentItem(IZ)V

    .line 111
    return-void
.end method
