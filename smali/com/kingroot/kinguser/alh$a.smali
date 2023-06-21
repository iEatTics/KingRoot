.class public Lcom/kingroot/kinguser/alh$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public awQ:Landroid/widget/ImageView;

.field public awR:Landroid/widget/TextView;

.field public awS:Landroid/widget/ImageView;

.field final synthetic awT:Lcom/kingroot/kinguser/alh;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alh;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lcom/kingroot/kinguser/alh$a;->awT:Lcom/kingroot/kinguser/alh;

    .line 69
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 70
    const v0, 0x7f0f0261

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alh$a;->awQ:Landroid/widget/ImageView;

    .line 71
    const v0, 0x7f0f0250

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alh$a;->awR:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0f0262

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alh$a;->awS:Landroid/widget/ImageView;

    .line 73
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/alh$b;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 76
    iget v0, p1, Lcom/kingroot/kinguser/alh$b;->type:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alh$a;->awQ:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/alh$a;->awS:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/alh$a;->awR:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/alh$b;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/alh$a;->awR:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/alh$a;->awS:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/alh$a;->awQ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/alh$a;->awS:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/alh$a;->awR:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/alh$b;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/alh$a;->awR:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/alh$a;->awT:Lcom/kingroot/kinguser/alh;

    invoke-static {v0}, Lcom/kingroot/kinguser/alh;->a(Lcom/kingroot/kinguser/alh;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/kingroot/kinguser/alh$a;->getAdapterPosition()I

    move-result v0

    .line 100
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/alh$a;->awT:Lcom/kingroot/kinguser/alh;

    invoke-static {v1}, Lcom/kingroot/kinguser/alh;->b(Lcom/kingroot/kinguser/alh;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/alh$b;

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 110
    :sswitch_0
    iget-object v1, p0, Lcom/kingroot/kinguser/alh$a;->awT:Lcom/kingroot/kinguser/alh;

    invoke-static {v1}, Lcom/kingroot/kinguser/alh;->a(Lcom/kingroot/kinguser/alh;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/alh$c;

    iget-object v0, v0, Lcom/kingroot/kinguser/alh$b;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/alh$a;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/kingroot/kinguser/alh$c;->A(Ljava/lang/String;I)V

    goto :goto_0

    .line 107
    :sswitch_1
    iget-object v1, p0, Lcom/kingroot/kinguser/alh$a;->awT:Lcom/kingroot/kinguser/alh;

    invoke-static {v1}, Lcom/kingroot/kinguser/alh;->a(Lcom/kingroot/kinguser/alh;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/alh$c;

    iget-object v0, v0, Lcom/kingroot/kinguser/alh$b;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/alh$a;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/kingroot/kinguser/alh$c;->z(Ljava/lang/String;I)V

    goto :goto_0

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x7f0f0250 -> :sswitch_0
        0x7f0f0262 -> :sswitch_1
    .end sparse-switch
.end method
