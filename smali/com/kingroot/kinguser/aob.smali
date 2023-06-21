.class public Lcom/kingroot/kinguser/aob;
.super Lcom/kingroot/kinguser/anl;
.source "SourceFile"


# instance fields
.field private aEO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private aEP:Lcom/kingroot/kinguser/bed;

.field private aEQ:Lcom/kingroot/kinguser/and$a;

.field private aER:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/anl;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aob;->aEO:Ljava/util/List;

    .line 101
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/aob$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/aob$1;-><init>(Lcom/kingroot/kinguser/aob;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aob;->aEP:Lcom/kingroot/kinguser/bed;

    .line 134
    new-instance v0, Lcom/kingroot/kinguser/aob$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aob$2;-><init>(Lcom/kingroot/kinguser/aob;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aob;->aEQ:Lcom/kingroot/kinguser/and$a;

    .line 174
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/IgnoreUpdatePage$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/IgnoreUpdatePage$3;-><init>(Lcom/kingroot/kinguser/aob;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aob;->aER:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aob;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/aob;->aEO:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aob;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/kingroot/kinguser/aob;->aEO:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/aob;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/aob;->aER:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;

    return-object v0
.end method


# virtual methods
.method protected Ja()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aob;->aEP:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 99
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aob;->aBB:Lcom/kingroot/kinguser/ald;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ald;->notifyDataSetChanged()V

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/aob;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/aob;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/aob;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ProgressWhell;->gT()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected oI()V
    .locals 4

    .prologue
    .line 64
    invoke-super {p0}, Lcom/kingroot/kinguser/anl;->oI()V

    .line 65
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aob;->Jg()Lcom/kingroot/kinguser/ano;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ano;->Jn()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/aob;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->setLoadMoreListener(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView$a;)V

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/aob;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->Jt()V

    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/aob;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0f0278

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v2, 0x7f070480

    .line 70
    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/aob;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/aob;->aBB:Lcom/kingroot/kinguser/ald;

    iget-object v1, p0, Lcom/kingroot/kinguser/aob;->aEQ:Lcom/kingroot/kinguser/and$a;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ald;->a(Lcom/kingroot/kinguser/and$a;)V

    .line 72
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/anl;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string v0, "ku_pageIgnoreUpdatePage"

    iput-object v0, p0, Lcom/kingroot/kinguser/aob;->TAG:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070481

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aob;->aBy:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/aob;->aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    .line 53
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 132
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/kingroot/kinguser/anl;->onResume()V

    .line 59
    return-void
.end method
