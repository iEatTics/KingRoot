.class public Lcom/kingroot/kinguser/agi$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field ajK:Landroid/view/View;

.field amt:Landroid/widget/ImageView;

.field amu:Landroid/widget/TextView;

.field amv:Landroid/widget/TextView;

.field amw:Landroid/widget/ImageView;

.field amx:Landroid/support/v7/widget/RecyclerView;

.field amy:Lcom/kingroot/kinguser/agj;

.field final synthetic amz:Lcom/kingroot/kinguser/agi;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/agi;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 85
    iput-object p1, p0, Lcom/kingroot/kinguser/agi$b;->amz:Lcom/kingroot/kinguser/agi;

    .line 86
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 77
    iput-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amt:Landroid/widget/ImageView;

    .line 78
    iput-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amu:Landroid/widget/TextView;

    .line 79
    iput-object v0, p0, Lcom/kingroot/kinguser/agi$b;->ajK:Landroid/view/View;

    .line 80
    iput-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amv:Landroid/widget/TextView;

    .line 81
    iput-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amw:Landroid/widget/ImageView;

    .line 82
    iput-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amx:Landroid/support/v7/widget/RecyclerView;

    .line 83
    iput-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amy:Lcom/kingroot/kinguser/agj;

    .line 87
    const v0, 0x7f0f010b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amt:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f0f010c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amu:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0f0130

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agi$b;->ajK:Landroid/view/View;

    .line 90
    const v0, 0x7f0f0131

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amv:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0f0132

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amw:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f0f0133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amx:Landroid/support/v7/widget/RecyclerView;

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amx:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amw:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method private g(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/kingroot/kinguser/aic;

    invoke-direct {v1, v0, p1}, Lcom/kingroot/kinguser/aic;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f07031b

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f070325

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f07031f

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v3, Lcom/kingroot/kinguser/aic$b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v0, v2, v4, v5}, Lcom/kingroot/kinguser/aic$b;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/kingroot/kinguser/aic$a;)V

    .line 123
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/aic;->Y(Ljava/util/List;)V

    .line 124
    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/aic;->a(Lcom/kingroot/kinguser/aic$b;)V

    .line 126
    new-instance v0, Lcom/kingroot/kinguser/agi$b$1;

    invoke-direct {v0, p0, v1, p2}, Lcom/kingroot/kinguser/agi$b$1;-><init>(Lcom/kingroot/kinguser/agi$b;Lcom/kingroot/kinguser/aic;I)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aic;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 153
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x18886

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 154
    invoke-virtual {v1}, Lcom/kingroot/kinguser/aic;->show()V

    .line 156
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/agi$c;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amt:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/kingroot/kinguser/agi$c;->amD:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amu:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/kingroot/kinguser/agi$c;->appName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v3, p0, Lcom/kingroot/kinguser/agi$b;->ajK:Landroid/view/View;

    iget-boolean v0, p1, Lcom/kingroot/kinguser/agi$c;->amG:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amv:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/kingroot/kinguser/agi$c;->amE:Landroid/text/Spanned;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    new-instance v0, Lcom/kingroot/kinguser/agj;

    iget-object v3, p1, Lcom/kingroot/kinguser/agi$c;->amF:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/kingroot/kinguser/agj;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amy:Lcom/kingroot/kinguser/agj;

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amx:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/kingroot/kinguser/agi$b;->amy:Lcom/kingroot/kinguser/agj;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/agi$b;->amw:Landroid/widget/ImageView;

    iget-boolean v3, p1, Lcom/kingroot/kinguser/agi$c;->amH:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 101
    goto :goto_0

    :cond_2
    move v1, v2

    .line 105
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/kingroot/kinguser/agi$b;->getAdapterPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/agi$b;->g(Landroid/view/View;I)V

    .line 112
    return-void
.end method
