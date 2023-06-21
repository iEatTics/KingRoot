.class public Lcom/kingroot/kinguser/aga;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aga$b;,
        Lcom/kingroot/kinguser/aga$e;,
        Lcom/kingroot/kinguser/aga$c;,
        Lcom/kingroot/kinguser/aga$a;,
        Lcom/kingroot/kinguser/aga$d;,
        Lcom/kingroot/kinguser/aga$f;
    }
.end annotation


# instance fields
.field private ajB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aga$a;",
            ">;"
        }
    .end annotation
.end field

.field private ajC:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/aga$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/kingroot/kinguser/aga$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aga$a;",
            ">;",
            "Lcom/kingroot/kinguser/aga$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/kingroot/kinguser/aga;->ajB:Ljava/util/List;

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/aga;->ajC:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aga;->ajC:Ljava/lang/ref/WeakReference;

    .line 31
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aga;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/aga;->ajC:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/aga;->ajB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/aga;->ajB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aga$a;

    iget v0, v0, Lcom/kingroot/kinguser/aga$a;->type:I

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/aga;->ajB:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aga$a;

    .line 54
    iget v1, v0, Lcom/kingroot/kinguser/aga$a;->type:I

    packed-switch v1, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 56
    :pswitch_0
    check-cast p1, Lcom/kingroot/kinguser/aga$f;

    .line 57
    check-cast v0, Lcom/kingroot/kinguser/aga$e;

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/aga$f;->a(Lcom/kingroot/kinguser/aga$e;)V

    goto :goto_0

    .line 60
    :pswitch_1
    check-cast v0, Lcom/kingroot/kinguser/aga$c;

    .line 61
    check-cast p1, Lcom/kingroot/kinguser/aga$d;

    .line 62
    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/aga$d;->a(Lcom/kingroot/kinguser/aga$c;)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    packed-switch p2, :pswitch_data_0

    .line 48
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    new-instance v0, Lcom/kingroot/kinguser/aga$f;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300da

    .line 43
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/aga$f;-><init>(Lcom/kingroot/kinguser/aga;Landroid/view/View;)V

    goto :goto_0

    .line 45
    :pswitch_1
    new-instance v0, Lcom/kingroot/kinguser/aga$d;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300a0

    .line 46
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/aga$d;-><init>(Lcom/kingroot/kinguser/aga;Landroid/view/View;)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
