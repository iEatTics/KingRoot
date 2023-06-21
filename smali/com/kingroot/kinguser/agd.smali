.class public Lcom/kingroot/kinguser/agd;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/agd$c;,
        Lcom/kingroot/kinguser/agd$a;,
        Lcom/kingroot/kinguser/agd$b;
    }
.end annotation


# instance fields
.field public akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

.field public akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field private akC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private akD:Lcom/kingroot/kinguser/and$a;

.field private akE:Lcom/kingroot/kinguser/apv$b;

.field private aky:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agd$a;",
            ">;"
        }
    .end annotation
.end field

.field private akz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/agd$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/kingroot/kinguser/agd$b;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agd$a;",
            ">;",
            "Lcom/kingroot/kinguser/agd$b;",
            "Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;",
            "Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/agd;->akz:Ljava/lang/ref/WeakReference;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/agd;->akC:Ljava/util/HashMap;

    .line 307
    new-instance v0, Lcom/kingroot/kinguser/and$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/and$a;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/agd;->akD:Lcom/kingroot/kinguser/and$a;

    .line 309
    new-instance v0, Lcom/kingroot/kinguser/agd$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/agd$2;-><init>(Lcom/kingroot/kinguser/agd;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/agd;->akE:Lcom/kingroot/kinguser/apv$b;

    .line 50
    iput-object p1, p0, Lcom/kingroot/kinguser/agd;->aky:Ljava/util/List;

    .line 51
    iput-object p3, p0, Lcom/kingroot/kinguser/agd;->akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    .line 52
    iput-object p4, p0, Lcom/kingroot/kinguser/agd;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 53
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/agd;->akz:Ljava/lang/ref/WeakReference;

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/agd;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/agd;->akC:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/agd;)Lcom/kingroot/kinguser/apv$b;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/agd;->akE:Lcom/kingroot/kinguser/apv$b;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/agd;)Lcom/kingroot/kinguser/and$a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/agd;->akD:Lcom/kingroot/kinguser/and$a;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/agd;->aky:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/agd;->aky:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agd$a;

    iget v0, v0, Lcom/kingroot/kinguser/agd$a;->type:I

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/agd;->aky:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agd;->aky:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agd$a;

    .line 117
    check-cast p1, Lcom/kingroot/kinguser/agd$c;

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/agd$c;->b(Lcom/kingroot/kinguser/agd$a;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 10

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 64
    if-nez p2, :cond_1

    .line 65
    const v1, 0x7f0300b2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 66
    const v0, 0x7f0f0235

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/kingcore/uilib/ProgressWhell;

    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e0019

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/kingcore/uilib/ProgressWhell;->setBarColor(I)V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    .line 69
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/kingcore/uilib/ProgressWhell;->setBarWidth(I)V

    .line 70
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/kingcore/uilib/ProgressWhell;->setCircleRadius(I)V

    .line 71
    new-instance v0, Lcom/kingroot/kinguser/agd$1;

    invoke-direct {v0, p0, v7}, Lcom/kingroot/kinguser/agd$1;-><init>(Lcom/kingroot/kinguser/agd;Lcom/kingcore/uilib/ProgressWhell;)V

    invoke-virtual {v7, v0}, Lcom/kingcore/uilib/ProgressWhell;->setCallback(Lcom/kingcore/uilib/ProgressWhell$a;)V

    .line 81
    new-instance v0, Lcom/kingroot/kinguser/agd$c;

    const v1, 0x7f0f0204

    .line 82
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    const v1, 0x7f0f0075

    .line 84
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v1, 0x7f0f0236

    .line 85
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/kingroot/kinguser/agd;->akz:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v9, 0x0

    :goto_0
    move-object v1, p0

    .line 88
    invoke-direct/range {v0 .. v9}, Lcom/kingroot/kinguser/agd$c;-><init>(Lcom/kingroot/kinguser/agd;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/kingcore/uilib/ProgressWhell;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/agd$b;)V

    .line 102
    :goto_1
    return-object v0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/agd;->akz:Ljava/lang/ref/WeakReference;

    .line 88
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/agd$b;

    move-object v9, v1

    goto :goto_0

    .line 89
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 90
    const v1, 0x7f0300b1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 91
    const v0, 0x7f0f0234

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 92
    new-instance v0, Lcom/kingroot/kinguser/agd$c;

    const v1, 0x7f0f0204

    .line 93
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v1, 0x7f0f0233

    .line 94
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v1, 0x7f0f0075

    .line 95
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/kingroot/kinguser/agd;->akz:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_2

    const/4 v9, 0x0

    :goto_2
    move-object v1, p0

    .line 99
    invoke-direct/range {v0 .. v9}, Lcom/kingroot/kinguser/agd$c;-><init>(Lcom/kingroot/kinguser/agd;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/kingcore/uilib/ProgressWhell;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/agd$b;)V

    goto :goto_1

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/agd;->akz:Ljava/lang/ref/WeakReference;

    .line 99
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/agd$b;

    move-object v9, v1

    goto :goto_2

    .line 101
    :cond_3
    const v1, 0x7f0300da

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 102
    new-instance v0, Lcom/kingroot/kinguser/agd$c;

    const v1, 0x7f0f0076

    .line 103
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/kingroot/kinguser/agd$c;-><init>(Lcom/kingroot/kinguser/agd;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/kingcore/uilib/ProgressWhell;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/agd$b;)V

    goto :goto_1
.end method
