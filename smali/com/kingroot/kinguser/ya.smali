.class public Lcom/kingroot/kinguser/ya;
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
    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    const-string v0, "drawable"

    iget-object v1, p0, Lcom/kingroot/kinguser/ya;->UV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    check-cast p1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/ya;->UT:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
