.class public Lcom/kingroot/kinguser/ato;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ato$b;,
        Lcom/kingroot/kinguser/ato$a;
    }
.end annotation


# instance fields
.field private aPC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ato$a;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ato$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/kingroot/kinguser/ato;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/kingroot/kinguser/ato;->aPC:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/ato;->aPC:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ato;->aPC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/ato;->aPC:Ljava/util/List;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ato;->aPC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/ato;->aPC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ato$a;

    .line 58
    if-nez p2, :cond_1

    .line 59
    iget-object v1, p0, Lcom/kingroot/kinguser/ato;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300b9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance v2, Lcom/kingroot/kinguser/ato$b;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/ato$b;-><init>(Lcom/kingroot/kinguser/ato;)V

    .line 61
    const v1, 0x7f0f0240

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/ato$b;->aPF:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f0f023f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/ato$b;->aPG:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 69
    :goto_0
    iget-object v2, v0, Lcom/kingroot/kinguser/ato$a;->aPE:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, v1, Lcom/kingroot/kinguser/ato$b;->aPF:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/kingroot/kinguser/ato$a;->aPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    iget-object v1, v1, Lcom/kingroot/kinguser/ato$b;->aPG:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/kingroot/kinguser/ato$a;->aPD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-object p2

    .line 66
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/ato$b;

    goto :goto_0
.end method
