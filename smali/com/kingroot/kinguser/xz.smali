.class public Lcom/kingroot/kinguser/xz;
.super Lcom/kingroot/kinguser/yd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/kingroot/kinguser/yd;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 20
    const-string v0, "color"

    iget-object v1, p0, Lcom/kingroot/kinguser/xz;->UV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/xz;->UT:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/xy;->getColor(I)I

    move-result v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    const-string v0, "drawable"

    iget-object v1, p0, Lcom/kingroot/kinguser/xz;->UV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/xz;->UT:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 27
    invoke-static {p1, v0}, Lcom/kingroot/kinguser/wx;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
