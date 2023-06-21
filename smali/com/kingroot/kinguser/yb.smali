.class public Lcom/kingroot/kinguser/yb;
.super Lcom/kingroot/kinguser/yd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kingroot/kinguser/yd;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 16
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 17
    check-cast p1, Landroid/widget/TextView;

    .line 18
    const-string v0, "color"

    iget-object v1, p0, Lcom/kingroot/kinguser/yb;->UV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/yb;->UT:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/xy;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    :cond_0
    return-void
.end method
