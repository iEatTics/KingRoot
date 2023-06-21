.class public Lcom/kingroot/kinguser/bev;
.super Lcom/kingroot/kinguser/ada;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bev;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/bev;->abx:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public Zz()V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/bev;->abx:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/bev;->abx:Landroid/view/ViewGroup;

    const-wide/16 v2, 0x3e8

    new-instance v1, Lcom/kingroot/kinguser/bev$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bev$1;-><init>(Lcom/kingroot/kinguser/bev;)V

    invoke-static {v0, v2, v3, v1}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;JLcom/android/animation/AnimatorListenerAdapter;)V

    .line 64
    :cond_0
    return-void
.end method

.method public hz(I)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/bev;->abE:Landroid/view/View;

    const v1, 0x7f0e010a

    invoke-static {v1}, Lcom/kingroot/kinguser/bgi;->getColor(I)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;II)V

    .line 68
    return-void
.end method

.method protected oI()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 26
    invoke-super {p0}, Lcom/kingroot/kinguser/ada;->oI()V

    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/bev;->abA:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/bev;->abx:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 29
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bev;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0336

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bev;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0339

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bev;->abE:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/bev;->abE:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 33
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bev;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f032f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 34
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    const v2, 0x7f0202cd

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/wx;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/bev;->abz:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    const v2, 0x7f0e00ec

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/xy;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/bev;->abw:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    const v2, 0x7f0202cc

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/bev;->abw:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    const v2, 0x7f0202d6

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/wx;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 41
    return-void
.end method

.method protected oY()Landroid/view/View;
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bev;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030135

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
