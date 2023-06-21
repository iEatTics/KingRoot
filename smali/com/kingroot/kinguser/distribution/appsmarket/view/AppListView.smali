.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;
.super Lcom/kingroot/common/uilib/TransparentListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView$a;
    }
.end annotation


# instance fields
.field private aCH:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView$a;

.field private aCI:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aCJ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aCK:Landroid/view/View;

.field private aCL:Landroid/widget/ProgressBar;

.field private mHeaderView:Landroid/view/View;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/TransparentListView;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->G(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/kingroot/common/uilib/TransparentListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->G(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/common/uilib/TransparentListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->G(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private G(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCK:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCK:Landroid/view/View;

    const v1, 0x7f0f00c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCL:Landroid/widget/ProgressBar;

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCK:Landroid/view/View;

    const v1, 0x7f0f00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->mTextView:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCK:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->addFooterView(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCL:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->mTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 62
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->setFriction(F)V

    .line 66
    :cond_0
    return-void
.end method

.method private Jr()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCL:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->mTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anf;->a(Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    .line 105
    return-void
.end method

.method private Js()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCL:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->mTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anf;->b(Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    .line 109
    return-void
.end method


# virtual methods
.method public Jp()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 94
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->Js()V

    .line 95
    return-void
.end method

.method public Jq()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->Js()V

    .line 100
    return-void
.end method

.method public Jt()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCK:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->removeFooterView(Landroid/view/View;)Z

    .line 122
    return-void
.end method

.method public i(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->mHeaderView:Landroid/view/View;

    .line 118
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCI:Ljava/util/concurrent/atomic/AtomicBoolean;

    add-int v0, p2, p3

    if-ne p4, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 86
    :cond_0
    return-void

    .line 82
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCI:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCH:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView$a;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->Jr()V

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCH:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView$a;->Je()V

    .line 78
    :cond_0
    return-void
.end method

.method public setLoadMoreListener(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView$a;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->aCH:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView$a;

    .line 90
    return-void
.end method
