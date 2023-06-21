.class public Lcom/kingroot/kinguser/ald;
.super Lcom/kingroot/kinguser/wr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ald$a;
    }
.end annotation


# instance fields
.field private ahM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation
.end field

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

.field private aoj:Lcom/kingroot/kinguser/alf;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;",
            "Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;",
            "Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/kingroot/kinguser/wr;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ald;->akC:Ljava/util/HashMap;

    .line 384
    new-instance v0, Lcom/kingroot/kinguser/ald$8;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ald$8;-><init>(Lcom/kingroot/kinguser/ald;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ald;->akE:Lcom/kingroot/kinguser/apv$b;

    .line 63
    iput-object p1, p0, Lcom/kingroot/kinguser/ald;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/kingroot/kinguser/ald;->ahM:Ljava/util/List;

    .line 65
    iput-object p3, p0, Lcom/kingroot/kinguser/ald;->akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    .line 66
    iput-object p4, p0, Lcom/kingroot/kinguser/ald;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ald;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/ald;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ald;)Lcom/kingroot/kinguser/and$a;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/ald;->akD:Lcom/kingroot/kinguser/and$a;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/ald;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/ald;->akC:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/alf;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/kingroot/kinguser/ald;->aoj:Lcom/kingroot/kinguser/alf;

    .line 420
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/and$a;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/kingroot/kinguser/ald;->akD:Lcom/kingroot/kinguser/and$a;

    .line 412
    return-void
.end method

.method public fd(I)Lcom/kingroot/kinguser/ame;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/ald;->ahM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/ald;->ahM:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ald;->ahM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/ald;->fd(I)Lcom/kingroot/kinguser/ame;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 89
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ald;->ahM:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ald;->ahM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    invoke-interface {v0}, Lcom/kingroot/kinguser/ame;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/ald;->ahM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 102
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/ald;->getItemViewType(I)I

    move-result v5

    .line 103
    packed-switch v5, :pswitch_data_0

    .line 359
    :cond_0
    :goto_0
    :pswitch_0
    return-object p2

    .line 105
    :pswitch_1
    instance-of v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 106
    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 107
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/ald$a;

    iget v2, v2, Lcom/kingroot/kinguser/ald$a;->type:I

    if-eq v2, v5, :cond_4

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/ald;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300a8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 110
    new-instance v3, Lcom/kingroot/kinguser/ald$a;

    invoke-direct {v3}, Lcom/kingroot/kinguser/ald$a;-><init>()V

    .line 111
    iput v5, v3, Lcom/kingroot/kinguser/ald$a;->type:I

    .line 112
    const v2, 0x7f0f00d1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/kingroot/kinguser/ald$a;->afV:Landroid/widget/TextView;

    .line 113
    const v2, 0x7f0f0220

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awc:Landroid/widget/TextView;

    .line 114
    const v2, 0x7f0f0221

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awd:Landroid/widget/TextView;

    .line 115
    const v2, 0x7f0f0148

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    .line 116
    const v2, 0x7f0f00f4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 117
    const v2, 0x7f0f0222

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awh:Landroid/widget/LinearLayout;

    .line 118
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v3

    .line 122
    :goto_1
    if-eqz v2, :cond_3

    .line 123
    iget-object v3, v2, Lcom/kingroot/kinguser/ald$a;->afV:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v3, v2, Lcom/kingroot/kinguser/ald$a;->awc:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v5

    const v6, 0x7f0703e1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->downloadCount:I

    int-to-long v10, v9

    .line 125
    invoke-static {v10, v11}, Lcom/kingroot/kinguser/anf;->bP(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 124
    invoke-virtual {v5, v6, v7}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->fileSize:J

    .line 125
    invoke-static {v6, v7}, Lcom/kingroot/kinguser/anf;->bQ(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v3, v2, Lcom/kingroot/kinguser/ald$a;->awd:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->describe:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v3, v2, Lcom/kingroot/kinguser/ald$a;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v4, Lcom/kingroot/kinguser/ald$1;

    invoke-direct {v4, p0, v1}, Lcom/kingroot/kinguser/ald$1;-><init>(Lcom/kingroot/kinguser/ald;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    invoke-virtual {v3, v4}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v3, v2, Lcom/kingroot/kinguser/ald$a;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iget-object v4, v2, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setTag(Ljava/lang/Object;)V

    .line 136
    iget-object v3, v2, Lcom/kingroot/kinguser/ald$a;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V

    .line 138
    iget-object v3, v2, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Landroid/widget/ImageView;)V

    .line 140
    iget-object v3, v2, Lcom/kingroot/kinguser/ald$a;->awh:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Landroid/widget/LinearLayout;)V

    .line 141
    iget-boolean v3, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->isExpand:Z

    if-eqz v3, :cond_5

    .line 143
    iget-object v3, p0, Lcom/kingroot/kinguser/ald;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v3, v1}, Lcom/kingroot/kinguser/alf;->b(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 148
    :goto_2
    iget-object v3, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    iget-object v4, v2, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    iget-object v3, p0, Lcom/kingroot/kinguser/ald;->akC:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v2, v2, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    const v3, 0x7f02010d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v2

    iget-object v3, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/ald;->akE:Lcom/kingroot/kinguser/apv$b;

    invoke-virtual {v2, v3, v4}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 154
    :cond_2
    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v2

    .line 155
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0703e8

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/ald;->akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iget-object v5, p0, Lcom/kingroot/kinguser/ald;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 154
    invoke-static {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    .line 159
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ald;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/ald;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-interface {v1, v2, v3, v0}, Lcom/kingroot/kinguser/anc;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V

    goto/16 :goto_0

    .line 120
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/ald$a;

    goto/16 :goto_1

    .line 145
    :cond_5
    iget-object v3, v2, Lcom/kingroot/kinguser/ald$a;->awh:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 164
    :pswitch_2
    instance-of v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 165
    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    .line 166
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/ald$a;

    iget v2, v2, Lcom/kingroot/kinguser/ald$a;->type:I

    if-eq v2, v5, :cond_9

    .line 167
    :cond_6
    iget-object v2, p0, Lcom/kingroot/kinguser/ald;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300ac

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 169
    new-instance v3, Lcom/kingroot/kinguser/ald$a;

    invoke-direct {v3}, Lcom/kingroot/kinguser/ald$a;-><init>()V

    .line 170
    iput v5, v3, Lcom/kingroot/kinguser/ald$a;->type:I

    .line 171
    const v2, 0x7f0f00d1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/kingroot/kinguser/ald$a;->afV:Landroid/widget/TextView;

    .line 172
    const v2, 0x7f0f0220

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awc:Landroid/widget/TextView;

    .line 173
    const v2, 0x7f0f0221

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awd:Landroid/widget/TextView;

    .line 174
    const v2, 0x7f0f0148

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    .line 175
    const v2, 0x7f0f0228

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awf:Landroid/widget/ImageView;

    .line 176
    const v2, 0x7f0f0229

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awg:Landroid/widget/ImageView;

    .line 177
    const v2, 0x7f0f00f4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 178
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 182
    :goto_3
    if-eqz v3, :cond_8

    .line 183
    iget-object v2, v3, Lcom/kingroot/kinguser/ald$a;->afV:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awc:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v5

    const v6, 0x7f070405

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-wide v10, v9, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationCount:J

    .line 185
    invoke-static {v10, v11}, Lcom/kingroot/kinguser/anf;->bP(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 184
    invoke-virtual {v5, v6, v7}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v5, v5, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->publicDesc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awd:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->describe:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v4, Lcom/kingroot/kinguser/ald$2;

    invoke-direct {v4, p0, v1}, Lcom/kingroot/kinguser/ald$2;-><init>(Lcom/kingroot/kinguser/ald;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)V

    invoke-virtual {v2, v4}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iget-object v4, v3, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setTag(Ljava/lang/Object;)V

    .line 197
    iget-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V

    .line 199
    iget-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->a(Landroid/widget/ImageView;)V

    .line 201
    iget-object v2, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->iconUrl:Ljava/lang/String;

    iget-object v4, v3, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 202
    iget-object v2, p0, Lcom/kingroot/kinguser/ald;->akC:Ljava/util/HashMap;

    iget-object v4, v3, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    const v4, 0x7f02010d

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v2

    iget-object v4, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->iconUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingroot/kinguser/ald;->akE:Lcom/kingroot/kinguser/apv$b;

    invoke-virtual {v2, v4, v5}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 206
    iget-object v2, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->bottomPics:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->bottomPics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_7

    .line 208
    iget-object v4, p0, Lcom/kingroot/kinguser/ald;->akC:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/kingroot/kinguser/ald$a;->awf:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->bottomPics:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;->miniUrl:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v4, p0, Lcom/kingroot/kinguser/ald;->akC:Ljava/util/HashMap;

    iget-object v3, v3, Lcom/kingroot/kinguser/ald$a;->awg:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->bottomPics:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;->miniUrl:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v3

    iget-object v2, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->bottomPics:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;->miniUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/ald;->akE:Lcom/kingroot/kinguser/apv$b;

    invoke-virtual {v3, v2, v4}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 211
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v3

    iget-object v2, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->bottomPics:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;->miniUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/ald;->akE:Lcom/kingroot/kinguser/apv$b;

    invoke-virtual {v3, v2, v4}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 215
    :cond_7
    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v2

    .line 216
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0703e8

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/ald;->akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iget-object v5, p0, Lcom/kingroot/kinguser/ald;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 215
    invoke-static {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    .line 220
    :cond_8
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ald;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/ald;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-interface {v1, v2, v3, v0}, Lcom/kingroot/kinguser/anc;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V

    goto/16 :goto_0

    .line 180
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/ald$a;

    move-object v3, v2

    goto/16 :goto_3

    .line 225
    :pswitch_3
    instance-of v0, v0, Lcom/kingroot/kinguser/amf;

    if-eqz v0, :cond_0

    .line 226
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ald$a;

    iget v0, v0, Lcom/kingroot/kinguser/ald$a;->type:I

    if-eq v0, v5, :cond_0

    .line 227
    :cond_a
    iget-object v0, p0, Lcom/kingroot/kinguser/ald;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030099

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 228
    const v0, 0x7f0f01fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200af

    sget v2, Lcom/kingroot/kinguser/bgv;->bgg:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    new-instance v0, Lcom/kingroot/kinguser/ald$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ald$a;-><init>()V

    .line 230
    iput v5, v0, Lcom/kingroot/kinguser/ald$a;->type:I

    .line 231
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 237
    :pswitch_4
    instance-of v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    if-eqz v1, :cond_0

    move-object v4, v0

    .line 238
    check-cast v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    .line 239
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ald$a;

    iget v0, v0, Lcom/kingroot/kinguser/ald$a;->type:I

    if-eq v0, v5, :cond_d

    .line 240
    :cond_b
    iget-object v0, p0, Lcom/kingroot/kinguser/ald;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 242
    new-instance v3, Lcom/kingroot/kinguser/ald$a;

    invoke-direct {v3}, Lcom/kingroot/kinguser/ald$a;-><init>()V

    .line 243
    iput v5, v3, Lcom/kingroot/kinguser/ald$a;->type:I

    .line 244
    const v0, 0x7f0f00d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/kingroot/kinguser/ald$a;->afV:Landroid/widget/TextView;

    .line 245
    const v0, 0x7f0f022c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/kingroot/kinguser/ald$a;->awi:Landroid/widget/TextView;

    .line 246
    const v0, 0x7f0f022d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/kingroot/kinguser/ald$a;->awj:Landroid/widget/TextView;

    .line 247
    const v0, 0x7f0f0221

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/ExpandableTextView;

    iput-object v0, v3, Lcom/kingroot/kinguser/ald$a;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    .line 248
    const v0, 0x7f0f022e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/kingroot/kinguser/ald$a;->alk:Landroid/widget/ImageView;

    .line 249
    const v0, 0x7f0f0148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    .line 250
    const v0, 0x7f0f00f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v0, v3, Lcom/kingroot/kinguser/ald$a;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 251
    const v0, 0x7f0f022f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/kingroot/kinguser/ald$a;->awl:Landroid/widget/TextView;

    .line 252
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 256
    :goto_4
    if-eqz v3, :cond_0

    .line 257
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 258
    iget-object v1, v3, Lcom/kingroot/kinguser/ald$a;->afV:Landroid/widget/TextView;

    iget-object v2, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, v3, Lcom/kingroot/kinguser/ald$a;->awl:Landroid/widget/TextView;

    const v2, 0x7f07047c

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v1, v3, Lcom/kingroot/kinguser/ald$a;->awl:Landroid/widget/TextView;

    new-instance v2, Lcom/kingroot/kinguser/ald$3;

    invoke-direct {v2, p0, p1}, Lcom/kingroot/kinguser/ald$3;-><init>(Lcom/kingroot/kinguser/ald;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    iget-wide v6, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteDiffPkgSize:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_e

    .line 269
    iget-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awi:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/kingroot/kinguser/ald$a;->awi:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x10

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 271
    iget-wide v6, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteDiffPkgSize:J

    invoke-static {v6, v7}, Lcom/kingroot/kinguser/anf;->bQ(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :goto_5
    iget-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awi:Landroid/widget/TextView;

    iget-wide v6, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteSize:J

    invoke-static {v6, v7}, Lcom/kingroot/kinguser/anf;->bQ(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v2, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->oldVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const v2, 0x7f07048d

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget-object v2, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awj:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070488

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->remoteNewFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    const-string v0, "\\n"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 284
    iget-object v0, v3, Lcom/kingroot/kinguser/ald$a;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-virtual {v0, v5}, Lcom/kingcore/uilib/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, v3, Lcom/kingroot/kinguser/ald$a;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Lcom/kingcore/uilib/ExpandableTextView;->setAnimationDuration(J)V

    .line 286
    iget-object v0, v3, Lcom/kingroot/kinguser/ald$a;->alk:Landroid/widget/ImageView;

    new-instance v1, Lcom/kingroot/kinguser/ald$4;

    invoke-direct {v1, p0, v3}, Lcom/kingroot/kinguser/ald$4;-><init>(Lcom/kingroot/kinguser/ald;Lcom/kingroot/kinguser/ald$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, v3, Lcom/kingroot/kinguser/ald$a;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    new-instance v1, Lcom/kingroot/kinguser/ald$5;

    invoke-direct {v1, p0, v3}, Lcom/kingroot/kinguser/ald$5;-><init>(Lcom/kingroot/kinguser/ald;Lcom/kingroot/kinguser/ald$a;)V

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ExpandableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v6, v3, Lcom/kingroot/kinguser/ald$a;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    new-instance v0, Lcom/kingroot/kinguser/ald$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/ald$6;-><init>(Lcom/kingroot/kinguser/ald;Ljava/lang/String;Lcom/kingroot/kinguser/ald$a;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/kingcore/uilib/ExpandableTextView;->setExpandListener(Lcom/kingcore/uilib/ExpandableTextView$a;)V

    .line 323
    iget-boolean v0, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->isExpand:Z

    if-eqz v0, :cond_f

    .line 324
    iget-object v0, v3, Lcom/kingroot/kinguser/ald$a;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ExpandableTextView;->gG()Z

    .line 330
    :goto_6
    iget-object v0, v3, Lcom/kingroot/kinguser/ald$a;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v1, Lcom/kingroot/kinguser/ald$7;

    invoke-direct {v1, p0, v4}, Lcom/kingroot/kinguser/ald$7;-><init>(Lcom/kingroot/kinguser/ald;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;)V

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, v3, Lcom/kingroot/kinguser/ald$a;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iget-object v1, v3, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setTag(Ljava/lang/Object;)V

    .line 339
    iget-object v0, v3, Lcom/kingroot/kinguser/ald$a;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V

    .line 341
    iget-object v0, v3, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->a(Landroid/widget/ImageView;)V

    .line 343
    iget-object v0, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->iconUrl:Ljava/lang/String;

    iget-object v1, v3, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 344
    iget-object v0, p0, Lcom/kingroot/kinguser/ald;->akC:Ljava/util/HashMap;

    iget-object v1, v3, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    iget-object v2, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, v3, Lcom/kingroot/kinguser/ald$a;->awb:Landroid/widget/ImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 346
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->iconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/ald;->akE:Lcom/kingroot/kinguser/apv$b;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 349
    :cond_c
    invoke-virtual {v4}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    .line 350
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703e8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ald;->akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iget-object v3, p0, Lcom/kingroot/kinguser/ald;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 349
    invoke-static {v4, v0, v1, v2, v3}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    goto/16 :goto_0

    .line 254
    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ald$a;

    move-object v3, v0

    goto/16 :goto_4

    .line 274
    :cond_e
    iget-object v2, v3, Lcom/kingroot/kinguser/ald$a;->awi:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/kingroot/kinguser/ald$a;->awi:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    and-int/lit8 v5, v5, -0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto/16 :goto_5

    .line 326
    :cond_f
    iget-object v0, v3, Lcom/kingroot/kinguser/ald$a;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ExpandableTextView;->gH()Z

    goto :goto_6

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
