.class Lcom/kingroot/kinguser/aqa$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aqf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aqa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aKR:Lcom/kingroot/kinguser/aqa;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aqa;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/kingroot/kinguser/aqa$1;->aKR:Lcom/kingroot/kinguser/aqa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 71
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/aqa$1;->aKR:Lcom/kingroot/kinguser/aqa;

    invoke-static {v0}, Lcom/kingroot/kinguser/aqa;->a(Lcom/kingroot/kinguser/aqa;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa$1;->aKR:Lcom/kingroot/kinguser/aqa;

    invoke-static {v0}, Lcom/kingroot/kinguser/aqa;->b(Lcom/kingroot/kinguser/aqa;)Lcom/kingroot/kinguser/apz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apz;->Mq()Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 81
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    .line 83
    iget v1, v0, Lcom/kingroot/kinguser/aqc;->type:I

    if-ne v1, v3, :cond_6

    .line 85
    invoke-static {}, Lcom/kingroot/kinguser/aqd;->MC()Ljava/util/HashMap;

    move-result-object v1

    .line 86
    iget-object v2, v0, Lcom/kingroot/kinguser/aqc;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 87
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 89
    iget-object v2, p0, Lcom/kingroot/kinguser/aqa$1;->aKR:Lcom/kingroot/kinguser/aqa;

    invoke-static {v2}, Lcom/kingroot/kinguser/aqa;->c(Lcom/kingroot/kinguser/aqa;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/apz$c;

    .line 90
    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/apz$c;->a(Lcom/kingroot/kinguser/aqc;Ljava/util/List;)V

    .line 92
    iget-boolean v1, v0, Lcom/kingroot/kinguser/aqc;->akd:Z

    if-nez v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/kingroot/kinguser/aqa$1;->aKR:Lcom/kingroot/kinguser/aqa;

    invoke-static {v1}, Lcom/kingroot/kinguser/aqa;->c(Lcom/kingroot/kinguser/aqa;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 94
    if-eqz p1, :cond_2

    .line 95
    iget-object v1, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v1, v1, Lcom/kingroot/kinguser/aqv;

    if-eqz v1, :cond_3

    .line 97
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x187dc

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 109
    :cond_2
    :goto_1
    iget-boolean v1, v0, Lcom/kingroot/kinguser/aqc;->akd:Z

    if-nez v1, :cond_5

    move v1, v3

    :goto_2
    iput-boolean v1, v0, Lcom/kingroot/kinguser/aqc;->akd:Z

    goto :goto_0

    .line 98
    :cond_3
    iget-object v1, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v1, v1, Lcom/kingroot/kinguser/aqu;

    if-eqz v1, :cond_4

    .line 100
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x187dd

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 101
    :cond_4
    iget-object v1, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v1, v1, Lcom/kingroot/kinguser/aqt;

    if-eqz v1, :cond_2

    .line 103
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x187de

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 109
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 110
    :cond_6
    iget v1, v0, Lcom/kingroot/kinguser/aqc;->type:I

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/kingroot/kinguser/aqc;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 112
    :cond_7
    iget-object v1, p0, Lcom/kingroot/kinguser/aqa$1;->aKR:Lcom/kingroot/kinguser/aqa;

    invoke-static {v1}, Lcom/kingroot/kinguser/aqa;->d(Lcom/kingroot/kinguser/aqa;)Lcom/kingroot/kinguser/aqa$a;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_0

    .line 114
    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/aqa$a;->c(Lcom/kingroot/kinguser/aqc;)V

    goto/16 :goto_0

    .line 116
    :cond_8
    iget v1, v0, Lcom/kingroot/kinguser/aqc;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 117
    iget-object v1, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v1, v1, Lcom/kingroot/kinguser/aqj;

    if-eqz v1, :cond_0

    .line 118
    iget-object v0, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    check-cast v0, Lcom/kingroot/kinguser/aqj;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqj;->MP()V

    .line 119
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188dc

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto/16 :goto_0
.end method

.method public l(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa$1;->aKR:Lcom/kingroot/kinguser/aqa;

    invoke-static {v0}, Lcom/kingroot/kinguser/aqa;->a(Lcom/kingroot/kinguser/aqa;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa$1;->aKR:Lcom/kingroot/kinguser/aqa;

    invoke-static {v0}, Lcom/kingroot/kinguser/aqa;->b(Lcom/kingroot/kinguser/aqa;)Lcom/kingroot/kinguser/apz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apz;->Mq()Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 137
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    .line 138
    iget v1, v0, Lcom/kingroot/kinguser/aqc;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 139
    iget-object v1, p0, Lcom/kingroot/kinguser/aqa$1;->aKR:Lcom/kingroot/kinguser/aqa;

    invoke-static {v1}, Lcom/kingroot/kinguser/aqa;->d(Lcom/kingroot/kinguser/aqa;)Lcom/kingroot/kinguser/aqa$a;

    move-result-object v1

    .line 140
    if-eqz v1, :cond_0

    .line 141
    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/aqa$a;->d(Lcom/kingroot/kinguser/aqc;)V

    goto :goto_0
.end method
