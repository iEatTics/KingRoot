.class public Lcom/kingroot/kinguser/apz;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/asf$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/apz$c;,
        Lcom/kingroot/kinguser/apz$a;,
        Lcom/kingroot/kinguser/apz$b;
    }
.end annotation


# instance fields
.field private aKq:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/aqf;",
            ">;"
        }
    .end annotation
.end field

.field private aKr:Z

.field private aKs:Lcom/kingroot/kinguser/apz$b;

.field private final ajB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqc;",
            ">;"
        }
    .end annotation
.end field

.field private alJ:Lcom/kingroot/kinguser/asf;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aqf;Lcom/kingroot/kinguser/apz$b;)V
    .locals 2
    .param p2    # Lcom/kingroot/kinguser/apz$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/apz;->ajB:Ljava/util/List;

    .line 49
    iput-object v1, p0, Lcom/kingroot/kinguser/apz;->aKq:Ljava/lang/ref/WeakReference;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/apz;->aKr:Z

    .line 53
    iput-object v1, p0, Lcom/kingroot/kinguser/apz;->aKs:Lcom/kingroot/kinguser/apz$b;

    .line 64
    if-eqz p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/apz;->aKq:Ljava/lang/ref/WeakReference;

    .line 68
    :cond_0
    iput-object p2, p0, Lcom/kingroot/kinguser/apz;->aKs:Lcom/kingroot/kinguser/apz$b;

    .line 69
    return-void
.end method

.method private Mp()Lcom/kingroot/kinguser/aqf;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/apz;->aKq:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/apz;->aKq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqf;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Mq()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v1, p0, Lcom/kingroot/kinguser/apz;->ajB:Ljava/util/List;

    monitor-enter v1

    .line 165
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kingroot/kinguser/apz;->ajB:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public aZ(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqc;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 145
    if-nez p1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/apz;->ajB:Ljava/util/List;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/apz;->ajB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    iget-object v0, p0, Lcom/kingroot/kinguser/apz;->ajB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    iget v0, v0, Lcom/kingroot/kinguser/aqc;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 157
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 160
    :cond_1
    invoke-static {p1}, Lcom/kingroot/kinguser/aqd;->ba(Ljava/util/List;)V

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cG(Z)V
    .locals 0

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/kingroot/kinguser/apz;->aKr:Z

    .line 318
    return-void
.end method

.method public da(I)Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(FF)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/apz;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 290
    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/kingroot/kinguser/apz;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 261
    iget-object v1, p0, Lcom/kingroot/kinguser/apz;->ajB:Ljava/util/List;

    monitor-enter v1

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/apz;->ajB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 171
    iget-object v1, p0, Lcom/kingroot/kinguser/apz;->ajB:Ljava/util/List;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/apz;->ajB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    iget v0, v0, Lcom/kingroot/kinguser/aqc;->type:I

    monitor-exit v1

    return v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 3

    .prologue
    .line 272
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 274
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 275
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/kingroot/kinguser/apz;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 124
    new-instance v0, Lcom/kingroot/kinguser/asf;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/kingroot/kinguser/asf;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/asf$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/apz;->alJ:Lcom/kingroot/kinguser/asf;

    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/apz;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kingroot/kinguser/apz;->alJ:Lcom/kingroot/kinguser/asf;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 126
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    iget-object v3, p0, Lcom/kingroot/kinguser/apz;->ajB:Ljava/util/List;

    monitor-enter v3

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/apz;->ajB:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 181
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 187
    :cond_1
    check-cast p1, Lcom/kingroot/kinguser/apz$c;

    .line 189
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    .line 190
    iget v3, p1, Lcom/kingroot/kinguser/apz$c;->aKF:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v2, p1, Lcom/kingroot/kinguser/apz$c;->Vv:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/kingroot/kinguser/aqc;->title:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/kingroot/kinguser/aqc;->title:Ljava/lang/String;

    :goto_1
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v1, p1, Lcom/kingroot/kinguser/apz$c;->aKz:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/kingroot/kinguser/aqc;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p1, Lcom/kingroot/kinguser/apz$c;->aKt:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/kingroot/kinguser/aqc;->aKX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p1, Lcom/kingroot/kinguser/apz$c;->aKy:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/kingroot/kinguser/aqc;->akK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 193
    :cond_2
    const-string v1, ""

    goto :goto_1

    .line 200
    :pswitch_2
    iget-object v2, p1, Lcom/kingroot/kinguser/apz$c;->Vv:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/kingroot/kinguser/aqc;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v2, p1, Lcom/kingroot/kinguser/apz$c;->aKA:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/kingroot/kinguser/aqc;->aKV:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v2, p1, Lcom/kingroot/kinguser/apz$c;->aKy:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/kingroot/kinguser/aqc;->akK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-boolean v2, v0, Lcom/kingroot/kinguser/aqc;->akd:Z

    if-eqz v2, :cond_3

    .line 204
    iput-boolean v1, v0, Lcom/kingroot/kinguser/aqc;->akd:Z

    .line 206
    :cond_3
    iget-object v0, p1, Lcom/kingroot/kinguser/apz$c;->alk:Landroid/widget/ImageView;

    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 210
    :pswitch_3
    iget-object v3, p1, Lcom/kingroot/kinguser/apz$c;->Vv:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/kingroot/kinguser/aqc;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v3, p1, Lcom/kingroot/kinguser/apz$c;->aKA:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/kingroot/kinguser/aqc;->aKV:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v0, v0, Lcom/kingroot/kinguser/aqc;->aKV:Ljava/lang/String;

    :goto_2
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, p2, 0x1

    if-le v0, v3, :cond_5

    .line 213
    const/4 v3, 0x2

    add-int/lit8 v0, p2, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    iget v0, v0, Lcom/kingroot/kinguser/aqc;->type:I

    if-eq v3, v0, :cond_5

    .line 214
    iget-object v0, p1, Lcom/kingroot/kinguser/apz$c;->aKG:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 211
    :cond_4
    const-string v0, ""

    goto :goto_2

    .line 218
    :cond_5
    iget-object v0, p1, Lcom/kingroot/kinguser/apz$c;->aKG:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 222
    :pswitch_4
    check-cast p1, Lcom/kingroot/kinguser/apz$a;

    .line 223
    iget-object v2, p1, Lcom/kingroot/kinguser/apz$a;->aKt:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/kingroot/kinguser/aqc;->aKW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v2, p1, Lcom/kingroot/kinguser/apz$a;->aKu:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/kingroot/kinguser/aqc;->aKV:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/kingroot/kinguser/apz;->ajB:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    .line 227
    iget-object v0, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v0, v0, Lcom/kingroot/kinguser/aqi;

    if-eqz v0, :cond_6

    .line 228
    const/4 v0, 0x1

    .line 232
    :goto_3
    if-eqz v0, :cond_7

    .line 233
    iget-object v0, p1, Lcom/kingroot/kinguser/apz$a;->aKu:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    const v2, 0x7f0e00eb

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/xy;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 235
    :cond_7
    iget-object v0, p1, Lcom/kingroot/kinguser/apz$a;->aKu:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    const v2, 0x7f0e00ea

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/xy;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 241
    :pswitch_5
    iget-object v2, p1, Lcom/kingroot/kinguser/apz$c;->Vv:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/kingroot/kinguser/aqc;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v2, p1, Lcom/kingroot/kinguser/apz$c;->aKz:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/kingroot/kinguser/aqc;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v2, p1, Lcom/kingroot/kinguser/apz$c;->aKD:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/kingroot/kinguser/aqc;->aLa:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v0, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v0, v0, Lcom/kingroot/kinguser/aqj;

    if-eqz v0, :cond_0

    .line 245
    iget-boolean v0, p0, Lcom/kingroot/kinguser/apz;->aKr:Z

    if-eqz v0, :cond_8

    .line 246
    iget-object v0, p1, Lcom/kingroot/kinguser/apz$c;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 248
    :cond_8
    iget-object v0, p1, Lcom/kingroot/kinguser/apz$c;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_3

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    packed-switch p2, :pswitch_data_0

    .line 114
    :pswitch_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 76
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b7

    .line 77
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    invoke-static {v1, v4, v3}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;IZ)V

    .line 117
    :goto_1
    new-instance v0, Lcom/kingroot/kinguser/apz$c;

    invoke-direct {p0}, Lcom/kingroot/kinguser/apz;->Mp()Lcom/kingroot/kinguser/aqf;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/kingroot/kinguser/apz$c;-><init>(Landroid/view/View;ILcom/kingroot/kinguser/aqf;)V

    goto :goto_0

    .line 82
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b5

    .line 83
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 84
    invoke-static {v1, v3, v3}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;IZ)V

    goto :goto_1

    .line 88
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b8

    .line 89
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 93
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b6

    .line 94
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 97
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;IZ)V

    goto :goto_1

    .line 102
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007c

    .line 103
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 104
    new-instance v0, Lcom/kingroot/kinguser/apz$a;

    invoke-direct {p0}, Lcom/kingroot/kinguser/apz;->Mp()Lcom/kingroot/kinguser/aqf;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/kingroot/kinguser/apz$a;-><init>(Landroid/view/View;ILcom/kingroot/kinguser/aqf;)V

    goto :goto_0

    .line 108
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b4

    .line 109
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 110
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;IZ)V

    goto :goto_1

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public t(IZ)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/apz;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 130
    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/apz;->alJ:Lcom/kingroot/kinguser/asf;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/kingroot/kinguser/apz;->alJ:Lcom/kingroot/kinguser/asf;

    invoke-virtual {v1, v0, p2}, Lcom/kingroot/kinguser/asf;->b(Landroid/view/View;Z)Z

    goto :goto_0
.end method

.method public vM()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public vN()V
    .locals 2

    .prologue
    .line 299
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->eC(I)V

    .line 300
    return-void
.end method
