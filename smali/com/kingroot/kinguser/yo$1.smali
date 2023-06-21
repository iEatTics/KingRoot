.class Lcom/kingroot/kinguser/yo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/yo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic VB:Lcom/kingroot/kinguser/yo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/yo;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/kingroot/kinguser/yo$1;->VB:Lcom/kingroot/kinguser/yo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/yo$1;->VB:Lcom/kingroot/kinguser/yo;

    iget-object v1, p0, Lcom/kingroot/kinguser/yo$1;->VB:Lcom/kingroot/kinguser/yo;

    iget v1, v1, Lcom/kingroot/kinguser/yo;->VA:I

    iput v1, v0, Lcom/kingroot/kinguser/yo;->Vz:I

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/yo$1;->VB:Lcom/kingroot/kinguser/yo;

    iput p1, v0, Lcom/kingroot/kinguser/yo;->VA:I

    .line 108
    iget-object v1, p0, Lcom/kingroot/kinguser/yo$1;->VB:Lcom/kingroot/kinguser/yo;

    iget-object v0, p0, Lcom/kingroot/kinguser/yo$1;->VB:Lcom/kingroot/kinguser/yo;

    iget-object v0, v0, Lcom/kingroot/kinguser/yo;->Vc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ym;

    invoke-virtual {v1, p1, v0}, Lcom/kingroot/kinguser/yo;->a(ILcom/kingroot/kinguser/ym;)V

    .line 109
    return-void
.end method
