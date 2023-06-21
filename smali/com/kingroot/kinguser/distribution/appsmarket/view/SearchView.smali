.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private aAF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aFG:Landroid/widget/TextView;

.field private aFH:I

.field private aFI:Ljava/lang/String;

.field private aFJ:Ljava/lang/Runnable;

.field private ahP:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->aFH:I

    .line 77
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$2;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->aFJ:Ljava/lang/Runnable;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030124

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    const v0, 0x7f0f031d

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->aFG:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0f031c

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->ahP:Landroid/widget/ImageView;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->aFH:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->aFJ:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->aFI:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->aAF:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->aFH:I

    return v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->aAF:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)I
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->aFH:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->aFH:I

    return v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->aFI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->aFG:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public JT()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->aFJ:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->d(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public fN(I)V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/anh;->IW()Lcom/kingroot/kinguser/anh;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)V

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/anh;->a(ILcom/kingroot/kinguser/anh$a;)V

    goto :goto_0
.end method

.method public getCurHotWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->aFI:Ljava/lang/String;

    return-object v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 45
    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->JT()V

    .line 48
    :cond_0
    return-void
.end method
