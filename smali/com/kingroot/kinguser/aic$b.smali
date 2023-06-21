.class public Lcom/kingroot/kinguser/aic$b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private ark:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private arm:Z

.field private arp:Lcom/kingroot/kinguser/aic$a;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZLcom/kingroot/kinguser/aic$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/kingroot/kinguser/aic$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aic$b;->ark:Ljava/util/List;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/aic$b;->arm:Z

    .line 108
    iput-object p1, p0, Lcom/kingroot/kinguser/aic$b;->context:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/kingroot/kinguser/aic$b;->ark:Ljava/util/List;

    .line 110
    iput-boolean p3, p0, Lcom/kingroot/kinguser/aic$b;->arm:Z

    .line 111
    iput-object p4, p0, Lcom/kingroot/kinguser/aic$b;->arp:Lcom/kingroot/kinguser/aic$a;

    .line 112
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/aic$b;->ark:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/aic$b;->ark:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 126
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 136
    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/aic$b;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 138
    if-nez p2, :cond_1

    .line 139
    new-instance v1, Lcom/kingroot/kinguser/aic$c;

    invoke-direct {v1, v4}, Lcom/kingroot/kinguser/aic$c;-><init>(Lcom/kingroot/kinguser/aic$1;)V

    .line 140
    const v2, 0x7f030127

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 141
    const v0, 0x7f0f0320

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aic$c;->mTextView:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0f0321

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aic$c;->NE:Landroid/widget/ImageView;

    .line 143
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 148
    :goto_0
    iget-object v2, v1, Lcom/kingroot/kinguser/aic$c;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/aic$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aic$b;->arm:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 151
    iget-object v0, p0, Lcom/kingroot/kinguser/aic$b;->arp:Lcom/kingroot/kinguser/aic$a;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/aic$b;->arp:Lcom/kingroot/kinguser/aic$a;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/aic$a;->dv(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, v1, Lcom/kingroot/kinguser/aic$c;->NE:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    :cond_0
    :goto_1
    return-object p2

    .line 145
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aic$c;

    move-object v1, v0

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, v1, Lcom/kingroot/kinguser/aic$c;->NE:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 159
    :cond_3
    iget-object v0, v1, Lcom/kingroot/kinguser/aic$c;->NE:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
