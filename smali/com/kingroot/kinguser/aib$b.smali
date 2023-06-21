.class public Lcom/kingroot/kinguser/aib$b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aib;
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
            "Lcom/kingroot/kinguser/aib$c;",
            ">;"
        }
    .end annotation
.end field

.field private arl:Lcom/kingroot/kinguser/aib$a;

.field private arm:Z

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZLcom/kingroot/kinguser/aib$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aib$c;",
            ">;Z",
            "Lcom/kingroot/kinguser/aib$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aib$b;->ark:Ljava/util/List;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/aib$b;->arm:Z

    .line 89
    iput-object p1, p0, Lcom/kingroot/kinguser/aib$b;->context:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/kingroot/kinguser/aib$b;->ark:Ljava/util/List;

    .line 91
    iput-boolean p3, p0, Lcom/kingroot/kinguser/aib$b;->arm:Z

    .line 92
    iput-object p4, p0, Lcom/kingroot/kinguser/aib$b;->arl:Lcom/kingroot/kinguser/aib$a;

    .line 93
    return-void
.end method


# virtual methods
.method public dw(I)Lcom/kingroot/kinguser/aib$c;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/aib$b;->ark:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aib$c;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/aib$b;->ark:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/aib$b;->dw(I)Lcom/kingroot/kinguser/aib$c;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/aib$b;->dw(I)Lcom/kingroot/kinguser/aib$c;

    move-result-object v0

    .line 103
    iget v0, v0, Lcom/kingroot/kinguser/aib$c;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 113
    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/aib$b;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 115
    if-nez p2, :cond_1

    .line 116
    new-instance v1, Lcom/kingroot/kinguser/aib$d;

    invoke-direct {v1, v3}, Lcom/kingroot/kinguser/aib$d;-><init>(Lcom/kingroot/kinguser/aib$1;)V

    .line 117
    const v2, 0x7f030127

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 118
    const v0, 0x7f0f0320

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aib$d;->mTextView:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0f0321

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/kingroot/kinguser/aib$d;->NE:Landroid/widget/ImageView;

    .line 120
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 125
    :goto_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/aib$b;->dw(I)Lcom/kingroot/kinguser/aib$c;

    move-result-object v1

    .line 126
    iget-object v2, v0, Lcom/kingroot/kinguser/aib$d;->mTextView:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/kingroot/kinguser/aib$c;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-boolean v2, p0, Lcom/kingroot/kinguser/aib$b;->arm:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 129
    iget v1, v1, Lcom/kingroot/kinguser/aib$c;->id:I

    .line 130
    iget-object v2, p0, Lcom/kingroot/kinguser/aib$b;->arl:Lcom/kingroot/kinguser/aib$a;

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/kingroot/kinguser/aib$b;->arl:Lcom/kingroot/kinguser/aib$a;

    invoke-interface {v2, v1}, Lcom/kingroot/kinguser/aib$a;->dv(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget-object v0, v0, Lcom/kingroot/kinguser/aib$d;->NE:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    :cond_0
    :goto_1
    return-object p2

    .line 122
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aib$d;

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, v0, Lcom/kingroot/kinguser/aib$d;->NE:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 138
    :cond_3
    iget-object v0, v0, Lcom/kingroot/kinguser/aib$d;->NE:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
