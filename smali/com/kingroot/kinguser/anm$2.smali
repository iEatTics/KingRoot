.class Lcom/kingroot/kinguser/anm$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBZ:Lcom/kingroot/kinguser/anm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anm;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/kingroot/kinguser/anm$2;->aBZ:Lcom/kingroot/kinguser/anm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kingroot/kinguser/anm$2;->aBZ:Lcom/kingroot/kinguser/anm;

    iget-object v1, p0, Lcom/kingroot/kinguser/anm$2;->aBZ:Lcom/kingroot/kinguser/anm;

    invoke-static {v1}, Lcom/kingroot/kinguser/anm;->b(Lcom/kingroot/kinguser/anm;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anm;->a(Lcom/kingroot/kinguser/anm;I)I

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/anm$2;->aBZ:Lcom/kingroot/kinguser/anm;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/anm;->b(Lcom/kingroot/kinguser/anm;I)I

    .line 182
    iget-object v1, p0, Lcom/kingroot/kinguser/anm$2;->aBZ:Lcom/kingroot/kinguser/anm;

    iget-object v0, p0, Lcom/kingroot/kinguser/anm$2;->aBZ:Lcom/kingroot/kinguser/anm;

    invoke-static {v0}, Lcom/kingroot/kinguser/anm;->c(Lcom/kingroot/kinguser/anm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ym;

    invoke-virtual {v1, p1, v0}, Lcom/kingroot/kinguser/anm;->a(ILcom/kingroot/kinguser/ym;)V

    .line 183
    return-void
.end method
