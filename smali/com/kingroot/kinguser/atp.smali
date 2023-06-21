.class public Lcom/kingroot/kinguser/atp;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/atp$a;,
        Lcom/kingroot/kinguser/atp$b;,
        Lcom/kingroot/kinguser/atp$c;
    }
.end annotation


# instance fields
.field private aOt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation
.end field

.field private aPI:Landroid/view/View;

.field private aPJ:I

.field private aPK:Ljava/lang/String;

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

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;",
            "Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;",
            "Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/atp;->aPJ:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/atp;->aPK:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/atp;->akC:Ljava/util/HashMap;

    .line 354
    new-instance v0, Lcom/kingroot/kinguser/atp$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/atp$4;-><init>(Lcom/kingroot/kinguser/atp;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atp;->akE:Lcom/kingroot/kinguser/apv$b;

    .line 64
    iput-object p1, p0, Lcom/kingroot/kinguser/atp;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/kingroot/kinguser/atp;->aPK:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/kingroot/kinguser/atp;->aOt:Ljava/util/List;

    .line 67
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/atp;->aPJ:I

    .line 68
    iput-object p4, p0, Lcom/kingroot/kinguser/atp;->akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    .line 69
    iput-object p5, p0, Lcom/kingroot/kinguser/atp;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 70
    iput-object p6, p0, Lcom/kingroot/kinguser/atp;->mHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atp;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/atp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/atp;)Lcom/kingroot/kinguser/and$a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/atp;->akD:Lcom/kingroot/kinguser/and$a;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/atp;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/atp;->akC:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public Pv()Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/atp;->aPI:Landroid/view/View;

    return-object v0
.end method

.method public a(Lcom/kingroot/kinguser/and$a;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/kingroot/kinguser/atp;->akD:Lcom/kingroot/kinguser/and$a;

    .line 381
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/atp;->aOt:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atp;->aOt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/atp;->aOt:Ljava/util/List;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atp;->aOt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 92
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/atp;->aOt:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atp;->aOt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 98
    invoke-interface {v0}, Lcom/kingroot/kinguser/ame;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/atp;->aOt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 110
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/atp;->getItemViewType(I)I

    move-result v2

    .line 111
    packed-switch v2, :pswitch_data_0

    .line 299
    :cond_0
    :goto_0
    :pswitch_0
    return-object p2

    .line 113
    :pswitch_1
    instance-of v1, v0, Lcom/kingroot/kinguser/atp$b;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Lcom/kingroot/kinguser/atp$b;

    .line 115
    iget-object v1, v0, Lcom/kingroot/kinguser/atp$b;->aPP:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, v0, Lcom/kingroot/kinguser/atp$b;->aPP:Landroid/view/View;

    iput-object v1, p0, Lcom/kingroot/kinguser/atp;->aPI:Landroid/view/View;

    .line 117
    iget-object p2, v0, Lcom/kingroot/kinguser/atp$b;->aPP:Landroid/view/View;

    goto :goto_0

    .line 124
    :pswitch_2
    instance-of v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    if-eqz v1, :cond_0

    .line 125
    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    .line 126
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/atp$c;

    iget v1, v1, Lcom/kingroot/kinguser/atp$c;->type:I

    if-eq v1, v2, :cond_6

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/atp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300ac

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 129
    new-instance v2, Lcom/kingroot/kinguser/atp$c;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/atp$c;-><init>(Lcom/kingroot/kinguser/atp;)V

    .line 130
    const/4 v1, 0x6

    iput v1, v2, Lcom/kingroot/kinguser/atp$c;->type:I

    .line 131
    const v1, 0x7f0f00d1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/atp$c;->afV:Landroid/widget/TextView;

    .line 132
    const v1, 0x7f0f0220

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/atp$c;->awc:Landroid/widget/TextView;

    .line 133
    const v1, 0x7f0f0221

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/atp$c;->awd:Landroid/widget/TextView;

    .line 134
    const v1, 0x7f0f0148

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/kingroot/kinguser/atp$c;->awb:Landroid/widget/ImageView;

    .line 135
    const v1, 0x7f0f0228

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/kingroot/kinguser/atp$c;->aPQ:Landroid/widget/ImageView;

    .line 136
    const v1, 0x7f0f0229

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/kingroot/kinguser/atp$c;->aPR:Landroid/widget/ImageView;

    .line 137
    const v1, 0x7f0f00f4

    .line 138
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v1, v2, Lcom/kingroot/kinguser/atp$c;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 140
    const v1, 0x7f0f00d4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v1, v2, Lcom/kingroot/kinguser/atp$c;->afV:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0e0066

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v1, v2, Lcom/kingroot/kinguser/atp$c;->awc:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0e0060

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v1, v2, Lcom/kingroot/kinguser/atp$c;->awd:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0e0060

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    new-instance v1, Lcom/kingroot/kinguser/atp$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/atp$1;-><init>(Lcom/kingroot/kinguser/atp;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v3, v2

    .line 157
    :goto_1
    if-eqz v0, :cond_0

    .line 158
    iget-object v1, v3, Lcom/kingroot/kinguser/atp$c;->afV:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, v3, Lcom/kingroot/kinguser/atp$c;->awc:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f070405

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-wide v8, v8, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationCount:J

    .line 160
    invoke-static {v8, v9}, Lcom/kingroot/kinguser/anf;->bP(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 159
    invoke-virtual {v4, v5, v6}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v4, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->publicDesc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, v3, Lcom/kingroot/kinguser/atp$c;->awd:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->describe:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, v3, Lcom/kingroot/kinguser/atp$c;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v2, Lcom/kingroot/kinguser/atp$2;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/atp$2;-><init>(Lcom/kingroot/kinguser/atp;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)V

    invoke-virtual {v1, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v1, v3, Lcom/kingroot/kinguser/atp$c;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iget-object v2, v3, Lcom/kingroot/kinguser/atp$c;->awb:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setTag(Ljava/lang/Object;)V

    .line 173
    iget-object v1, v3, Lcom/kingroot/kinguser/atp$c;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V

    .line 175
    iget-object v1, v3, Lcom/kingroot/kinguser/atp$c;->awb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->a(Landroid/widget/ImageView;)V

    .line 177
    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->iconUrl:Ljava/lang/String;

    iget-object v2, v3, Lcom/kingroot/kinguser/atp$c;->awb:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/kingroot/kinguser/atp;->akC:Ljava/util/HashMap;

    iget-object v2, v3, Lcom/kingroot/kinguser/atp$c;->awb:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, v3, Lcom/kingroot/kinguser/atp$c;->awb:Landroid/widget/ImageView;

    const v2, 0x7f02010d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v1

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->iconUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/atp;->akE:Lcom/kingroot/kinguser/apv$b;

    invoke-virtual {v1, v2, v4}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 183
    :cond_2
    const-string v2, ""

    .line 184
    const-string v1, ""

    .line 186
    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->bottomPics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    .line 187
    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->bottomPics:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;

    iget-object v2, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;->miniUrl:Ljava/lang/String;

    .line 188
    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->bottomPics:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;->miniUrl:Ljava/lang/String;

    .line 191
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v3, Lcom/kingroot/kinguser/atp$c;->aPQ:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 192
    iget-object v4, p0, Lcom/kingroot/kinguser/atp;->akC:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/kingroot/kinguser/atp$c;->aPQ:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/atp;->akE:Lcom/kingroot/kinguser/apv$b;

    invoke-virtual {v4, v2, v5}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 196
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v3, Lcom/kingroot/kinguser/atp$c;->aPR:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 197
    iget-object v2, p0, Lcom/kingroot/kinguser/atp;->akC:Ljava/util/HashMap;

    iget-object v3, v3, Lcom/kingroot/kinguser/atp$c;->aPR:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/atp;->akE:Lcom/kingroot/kinguser/apv$b;

    invoke-virtual {v2, v1, v3}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 202
    :cond_5
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    .line 203
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703e8

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/atp;->akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iget-object v4, p0, Lcom/kingroot/kinguser/atp;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 202
    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    goto/16 :goto_0

    .line 154
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/atp$c;

    move-object v3, v1

    goto/16 :goto_1

    .line 210
    :pswitch_3
    instance-of v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v1, :cond_0

    .line 211
    iget v1, p0, Lcom/kingroot/kinguser/atp;->aPJ:I

    if-le v1, p1, :cond_7

    .line 212
    iput p1, p0, Lcom/kingroot/kinguser/atp;->aPJ:I

    .line 214
    :cond_7
    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 215
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/atp$c;

    iget v1, v1, Lcom/kingroot/kinguser/atp$c;->type:I

    if-eq v1, v2, :cond_b

    .line 216
    :cond_8
    iget-object v1, p0, Lcom/kingroot/kinguser/atp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300be

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 218
    new-instance v2, Lcom/kingroot/kinguser/atp$c;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/atp$c;-><init>(Lcom/kingroot/kinguser/atp;)V

    .line 219
    const/4 v1, 0x1

    iput v1, v2, Lcom/kingroot/kinguser/atp$c;->type:I

    .line 220
    const v1, 0x7f0f00d1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/atp$c;->afV:Landroid/widget/TextView;

    .line 221
    const v1, 0x7f0f0220

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/atp$c;->awc:Landroid/widget/TextView;

    .line 222
    const v1, 0x7f0f0221

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/atp$c;->awd:Landroid/widget/TextView;

    .line 223
    const v1, 0x7f0f0148

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/kingroot/kinguser/atp$c;->awb:Landroid/widget/ImageView;

    .line 224
    const v1, 0x7f0f00f4

    .line 225
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v1, v2, Lcom/kingroot/kinguser/atp$c;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 226
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 231
    :goto_2
    if-eqz v1, :cond_a

    .line 232
    iget-object v2, v1, Lcom/kingroot/kinguser/atp$c;->afV:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v2, v1, Lcom/kingroot/kinguser/atp$c;->awc:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f0703e1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->downloadCount:I

    int-to-long v8, v8

    .line 234
    invoke-static {v8, v9}, Lcom/kingroot/kinguser/anf;->bP(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 233
    invoke-virtual {v4, v5, v6}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->fileSize:J

    .line 234
    invoke-static {v4, v5}, Lcom/kingroot/kinguser/anf;->bQ(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v2, v1, Lcom/kingroot/kinguser/atp$c;->awd:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->describe:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v2, v1, Lcom/kingroot/kinguser/atp$c;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iget-object v3, v1, Lcom/kingroot/kinguser/atp$c;->awb:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setTag(Ljava/lang/Object;)V

    .line 238
    iget-object v2, v1, Lcom/kingroot/kinguser/atp$c;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V

    .line 240
    iget-object v2, v1, Lcom/kingroot/kinguser/atp$c;->awb:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Landroid/widget/ImageView;)V

    .line 242
    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/kingroot/kinguser/atp$c;->awb:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 243
    iget-object v2, p0, Lcom/kingroot/kinguser/atp;->akC:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/kingroot/kinguser/atp$c;->awb:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v2, v1, Lcom/kingroot/kinguser/atp$c;->awb:Landroid/widget/ImageView;

    const v3, 0x7f02010d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v2

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/atp;->akE:Lcom/kingroot/kinguser/apv$b;

    invoke-virtual {v2, v3, v4}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 247
    :cond_9
    iget-object v1, v1, Lcom/kingroot/kinguser/atp$c;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v2, Lcom/kingroot/kinguser/atp$3;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/atp$3;-><init>(Lcom/kingroot/kinguser/atp;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    invoke-virtual {v1, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    .line 262
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703e8

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/atp;->akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iget-object v4, p0, Lcom/kingroot/kinguser/atp;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 261
    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    .line 265
    :cond_a
    iget-object v1, p0, Lcom/kingroot/kinguser/atp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    iget v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->jumptype:I

    const/4 v4, -0x1

    iget-object v5, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 269
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/atp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/atp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-interface {v1, v2, v3, v0}, Lcom/kingroot/kinguser/anc;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V

    goto/16 :goto_0

    .line 228
    :cond_b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/atp$c;

    goto/16 :goto_2

    .line 274
    :pswitch_4
    instance-of v1, v0, Lcom/kingroot/kinguser/atp$a;

    if-eqz v1, :cond_0

    .line 275
    check-cast v0, Lcom/kingroot/kinguser/atp$a;

    .line 276
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/atp$c;

    iget v1, v1, Lcom/kingroot/kinguser/atp$c;->type:I

    if-eq v1, v2, :cond_d

    .line 277
    :cond_c
    iget-object v1, p0, Lcom/kingroot/kinguser/atp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300bc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 279
    new-instance v2, Lcom/kingroot/kinguser/atp$c;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/atp$c;-><init>(Lcom/kingroot/kinguser/atp;)V

    .line 280
    const/4 v1, 0x5

    iput v1, v2, Lcom/kingroot/kinguser/atp$c;->type:I

    .line 281
    const v1, 0x7f0f0076

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/atp$c;->ajP:Landroid/widget/TextView;

    .line 282
    const v1, 0x7f0f00d2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/kingroot/kinguser/atp$c;->aPS:Landroid/view/View;

    .line 283
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 287
    :goto_3
    iget-object v2, v1, Lcom/kingroot/kinguser/atp$c;->ajP:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/kingroot/kinguser/atp$a;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-boolean v2, v0, Lcom/kingroot/kinguser/atp$a;->aPN:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/kingroot/kinguser/atp$a;->aPO:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, v1, Lcom/kingroot/kinguser/atp$c;->aPS:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v1, v1, Lcom/kingroot/kinguser/atp$c;->aPS:Landroid/view/View;

    iget-object v0, v0, Lcom/kingroot/kinguser/atp$a;->aPO:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 285
    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/atp$c;

    goto :goto_3

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x7

    return v0
.end method
