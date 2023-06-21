.class public Lcom/kingroot/kinguser/agb;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/agb$f;,
        Lcom/kingroot/kinguser/agb$g;,
        Lcom/kingroot/kinguser/agb$h;,
        Lcom/kingroot/kinguser/agb$b;,
        Lcom/kingroot/kinguser/agb$d;,
        Lcom/kingroot/kinguser/agb$e;,
        Lcom/kingroot/kinguser/agb$a;,
        Lcom/kingroot/kinguser/agb$c;
    }
.end annotation


# instance fields
.field private ajB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agb$e;",
            ">;"
        }
    .end annotation
.end field

.field private ajC:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/agb$g;",
            ">;"
        }
    .end annotation
.end field

.field private ajQ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/agb$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/kingroot/kinguser/agb$g;Lcom/kingroot/kinguser/agb$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agb$e;",
            ">;",
            "Lcom/kingroot/kinguser/agb$g;",
            "Lcom/kingroot/kinguser/agb$f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/kingroot/kinguser/agb;->ajB:Ljava/util/List;

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/agb;->ajC:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/agb;->ajC:Ljava/lang/ref/WeakReference;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agb;->ajQ:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/agb;->ajQ:Ljava/lang/ref/WeakReference;

    .line 48
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/agb;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/agb;->ajC:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/agb;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/agb;->ajQ:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/agb;->ajB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/agb;->ajB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agb$e;

    iget v0, v0, Lcom/kingroot/kinguser/agb$e;->type:I

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/agb;->ajB:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agb$e;

    .line 73
    iget-object v1, p0, Lcom/kingroot/kinguser/agb;->ajB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_0

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/agb$e;->akf:Z

    .line 77
    :cond_0
    iget v1, v0, Lcom/kingroot/kinguser/agb$e;->type:I

    packed-switch v1, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 79
    :pswitch_0
    check-cast p1, Lcom/kingroot/kinguser/agb$c;

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/agb$c;->a(Lcom/kingroot/kinguser/agb$e;)V

    goto :goto_0

    .line 82
    :pswitch_1
    check-cast p1, Lcom/kingroot/kinguser/agb$a;

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/agb$a;->a(Lcom/kingroot/kinguser/agb$e;)V

    goto :goto_0

    .line 77
    nop

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

    .line 57
    packed-switch p2, :pswitch_data_0

    .line 65
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    new-instance v0, Lcom/kingroot/kinguser/agb$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300a2

    .line 60
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/agb$c;-><init>(Lcom/kingroot/kinguser/agb;Landroid/view/View;)V

    goto :goto_0

    .line 62
    :pswitch_1
    new-instance v0, Lcom/kingroot/kinguser/agb$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300a1

    .line 63
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/agb$a;-><init>(Lcom/kingroot/kinguser/agb;Landroid/view/View;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
