.class Lcom/kingroot/kinguser/anp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anp;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aCZ:Lcom/kingroot/kinguser/anp;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anp;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/kingroot/kinguser/anp$1;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$1;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/anp;->a(Lcom/kingroot/kinguser/anp;I)V

    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$1;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/anp;->b(Lcom/kingroot/kinguser/anp;I)V

    .line 127
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1892c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 128
    return-void
.end method
