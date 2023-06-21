.class public Lcom/kingroot/kinguser/alc;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/alc$a;,
        Lcom/kingroot/kinguser/alc$b;
    }
.end annotation


# instance fields
.field private ahM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/amc;",
            ">;"
        }
    .end annotation
.end field

.field private alK:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/alc$a;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/kingroot/kinguser/alc$a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/amc;",
            ">;",
            "Lcom/kingroot/kinguser/alc$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/alc;->alK:Ljava/lang/ref/WeakReference;

    .line 29
    iput-object p2, p0, Lcom/kingroot/kinguser/alc;->ahM:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/kingroot/kinguser/alc;->mContext:Landroid/content/Context;

    .line 31
    if-eqz p3, :cond_0

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alc;->alK:Ljava/lang/ref/WeakReference;

    .line 34
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/alc;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/alc;->alK:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/alc;->ahM:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alc;->ahM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/alc;->ahM:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amc;

    .line 45
    check-cast p1, Lcom/kingroot/kinguser/alc$b;

    .line 46
    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/alc$b;->a(Lcom/kingroot/kinguser/amc;)V

    .line 47
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lcom/kingroot/kinguser/alc$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/alc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300a6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/alc$b;-><init>(Lcom/kingroot/kinguser/alc;Landroid/view/View;)V

    return-object v0
.end method
