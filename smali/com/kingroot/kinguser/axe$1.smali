.class Lcom/kingroot/kinguser/axe$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXW:Lcom/kingroot/kinguser/axe;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axe;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/kingroot/kinguser/axe$1;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 98
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 102
    if-gtz v0, :cond_1

    .line 103
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0703d2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/axe$1;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v1}, Lcom/kingroot/kinguser/axe;->a(Lcom/kingroot/kinguser/axe;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f07045d

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axe$1;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v0}, Lcom/kingroot/kinguser/axe;->b(Lcom/kingroot/kinguser/axe;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/axe$1;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v0}, Lcom/kingroot/kinguser/axe;->b(Lcom/kingroot/kinguser/axe;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/axe$1;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v0}, Lcom/kingroot/kinguser/axe;->b(Lcom/kingroot/kinguser/axe;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agd$a;

    .line 112
    iget-object v3, p0, Lcom/kingroot/kinguser/axe$1;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v3}, Lcom/kingroot/kinguser/axe;->c(Lcom/kingroot/kinguser/axe;)Landroid/util/SparseArray;

    move-result-object v3

    iget v4, v0, Lcom/kingroot/kinguser/agd$a;->id:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axe$1;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v0}, Lcom/kingroot/kinguser/axe;->d(Lcom/kingroot/kinguser/axe;)Lcom/kingroot/kinguser/agd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agd;->notifyDataSetChanged()V

    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/axe$1;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v0}, Lcom/kingroot/kinguser/axe;->e(Lcom/kingroot/kinguser/axe;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/axe$1;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/axe;->a(Lcom/kingroot/kinguser/axe;Z)Z

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/axe$1;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v0}, Lcom/kingroot/kinguser/axe;->f(Lcom/kingroot/kinguser/axe;)V

    goto/16 :goto_0

    .line 123
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 124
    if-gtz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/axe$1;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v0}, Lcom/kingroot/kinguser/axe;->g(Lcom/kingroot/kinguser/axe;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 127
    :cond_3
    iget-object v3, p0, Lcom/kingroot/kinguser/axe$1;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v3}, Lcom/kingroot/kinguser/axe;->g(Lcom/kingroot/kinguser/axe;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v3, p0, Lcom/kingroot/kinguser/axe$1;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v3}, Lcom/kingroot/kinguser/axe;->h(Lcom/kingroot/kinguser/axe;)Landroid/widget/Button;

    move-result-object v3

    .line 129
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f07045c

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 129
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1890e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto/16 :goto_0

    .line 136
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axe$1;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v0}, Lcom/kingroot/kinguser/axe;->c(Lcom/kingroot/kinguser/axe;)Landroid/util/SparseArray;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agd$a;

    .line 137
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v1, :cond_4

    move v2, v1

    .line 138
    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 139
    if-eqz v2, :cond_5

    .line 140
    iput v6, v0, Lcom/kingroot/kinguser/agd$a;->status:I

    .line 141
    invoke-static {v1}, Lcom/kingroot/kinguser/bgh;->jf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/agd$a;->akM:Ljava/lang/String;

    .line 146
    :goto_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axe$1;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v0}, Lcom/kingroot/kinguser/axe;->d(Lcom/kingroot/kinguser/axe;)Lcom/kingroot/kinguser/agd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agd;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 143
    :cond_5
    const/4 v1, 0x4

    iput v1, v0, Lcom/kingroot/kinguser/agd$a;->status:I

    goto :goto_3

    .line 150
    :pswitch_4
    iget-object v0, p0, Lcom/kingroot/kinguser/axe$1;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v0}, Lcom/kingroot/kinguser/axe;->h(Lcom/kingroot/kinguser/axe;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 151
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 152
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 154
    if-gtz v0, :cond_6

    .line 156
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f070451

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_4
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    .line 168
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axe$1;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v1}, Lcom/kingroot/kinguser/axe;->i(Lcom/kingroot/kinguser/axe;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto/16 :goto_0

    .line 157
    :cond_6
    if-gt v3, v0, :cond_7

    .line 159
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f070452

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 162
    :cond_7
    sub-int/2addr v3, v0

    .line 163
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f070453

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
