.class public Lcom/kingroot/kinguser/aog;
.super Lcom/kingroot/kinguser/anl;
.source "SourceFile"


# instance fields
.field private aFp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;",
            ">;"
        }
    .end annotation
.end field

.field private aFq:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

.field private aFr:Lcom/kingroot/kinguser/and$a;

.field private aFs:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;

.field private aiS:Lcom/kingroot/kinguser/we$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/anl;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aog;->aFp:Ljava/util/HashMap;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/aog;->aFq:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    .line 146
    new-instance v0, Lcom/kingroot/kinguser/aog$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aog$1;-><init>(Lcom/kingroot/kinguser/aog;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aog;->aFr:Lcom/kingroot/kinguser/and$a;

    .line 168
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3;-><init>(Lcom/kingroot/kinguser/aog;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aog;->aFs:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;

    .line 201
    new-instance v0, Lcom/kingroot/kinguser/aog$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aog$2;-><init>(Lcom/kingroot/kinguser/aog;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aog;->aiS:Lcom/kingroot/kinguser/we$a;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aog;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/kingroot/kinguser/aog;->aFq:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aog;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/aog;->aFs:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/aog;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aog;->aG(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)V
    .locals 3

    .prologue
    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->activityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5;-><init>(Lcom/kingroot/kinguser/aog;)V

    invoke-interface {v1, v0, v2}, Lcom/kingroot/kinguser/ams;->a(Ljava/util/ArrayList;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQueryReservationStateResult;)V

    .line 243
    return-void
.end method

.method private aG(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/aog;->aBF:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/anf;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 114
    new-instance v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    invoke-direct {v3, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    .line 115
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v4, p0, Lcom/kingroot/kinguser/aog;->aBF:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v4, p0, Lcom/kingroot/kinguser/aog;->aFp:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->activityId:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_0
    return-object v1
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/aog;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/aog;->aFp:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/aog;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/aog;->aFq:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    return-object v0
.end method


# virtual methods
.method protected Ja()V
    .locals 5

    .prologue
    .line 125
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/aog;->aBz:I

    const/16 v2, 0x1e

    iget v3, p0, Lcom/kingroot/kinguser/aog;->aon:I

    iget-object v4, p0, Lcom/kingroot/kinguser/aog;->aBI:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/ams;->b(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 126
    return-void
.end method

.method protected oI()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/kingroot/kinguser/anl;->oI()V

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/aog;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->i(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/aog;->aBB:Lcom/kingroot/kinguser/ald;

    iget-object v1, p0, Lcom/kingroot/kinguser/aog;->aFr:Lcom/kingroot/kinguser/and$a;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ald;->a(Lcom/kingroot/kinguser/and$a;)V

    .line 108
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/anl;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const-string v0, "ku_pageReserveGamePage"

    iput-object v0, p0, Lcom/kingroot/kinguser/aog;->TAG:Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0704cf

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aog;->aBy:Ljava/lang/String;

    .line 65
    const v0, 0x4c7bc0

    iput v0, p0, Lcom/kingroot/kinguser/aog;->aBz:I

    .line 66
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1;-><init>(Lcom/kingroot/kinguser/aog;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aog;->aBI:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/aog;->aiS:Lcom/kingroot/kinguser/we$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/we;->a(Lcom/kingroot/kinguser/we$a;)V

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/kingroot/kinguser/aog;->aiS:Lcom/kingroot/kinguser/we$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/we;->b(Lcom/kingroot/kinguser/we$a;)V

    .line 198
    invoke-super {p0}, Lcom/kingroot/kinguser/anl;->onDestroy()V

    .line 199
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 130
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/aog;->aBC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18930

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/aog;->aBC:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    .line 136
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->Ip()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    iput-object v0, p0, Lcom/kingroot/kinguser/aog;->aFq:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    .line 139
    iget-object v1, p0, Lcom/kingroot/kinguser/aog;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationUrl:Ljava/lang/String;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appName:Ljava/lang/String;

    const/16 v3, 0x15

    invoke-static {v1, v2, v0, v3}, Lcom/kingroot/kinguser/webview/WebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/aog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/activitys/AppDetailActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/kingroot/kinguser/anl;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/aog;->aFq:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/aog;->aFq:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aog;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)V

    .line 95
    :cond_0
    return-void
.end method
