.class Lcom/kingroot/kinguser/bjr$a;
.super Lcom/kingroot/kinguser/acw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic byr:Lcom/kingroot/kinguser/bjr;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bjr;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$a;->byr:Lcom/kingroot/kinguser/bjr;

    .line 1264
    invoke-direct {p0, p2, p3}, Lcom/kingroot/kinguser/acw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1266
    return-void
.end method


# virtual methods
.method public jt(I)V
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$a;->abA:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$a;->abA:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1278
    :cond_0
    return-void
.end method

.method protected oI()V
    .locals 3

    .prologue
    .line 1282
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjr$a;->ck(I)V

    .line 1283
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjr$a;->aq(Z)V

    .line 1284
    new-instance v0, Lcom/kingroot/kinguser/bjr$a$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjr$a$1;-><init>(Lcom/kingroot/kinguser/bjr$a;)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjr$a;->c(Landroid/view/View$OnClickListener;)V

    .line 1292
    new-instance v0, Lcom/kingroot/kinguser/bjr$a$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjr$a$2;-><init>(Lcom/kingroot/kinguser/bjr$a;)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjr$a;->b(Landroid/view/View$OnClickListener;)V

    .line 1304
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjr$a;->sg()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0110

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1305
    return-void
.end method

.method protected pa()V
    .locals 2

    .prologue
    .line 1270
    invoke-super {p0}, Lcom/kingroot/kinguser/acw;->pa()V

    .line 1271
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f02020d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjr$a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 1272
    return-void
.end method
