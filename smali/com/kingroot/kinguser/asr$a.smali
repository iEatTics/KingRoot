.class public Lcom/kingroot/kinguser/asr$a;
.super Lcom/kingroot/kinguser/wr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/asr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private aGj:Ljava/lang/String;

.field protected ahM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/asr;",
            ">;"
        }
    .end annotation
.end field

.field private ahN:Landroid/view/View$OnClickListener;

.field private akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

.field private akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

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

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/kingroot/kinguser/wr;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/asr$a;->ahM:Ljava/util/List;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/asr$a;->aGj:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/asr$a;->akC:Ljava/util/HashMap;

    .line 105
    new-instance v0, Lcom/kingroot/kinguser/asr$a$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/asr$a$1;-><init>(Lcom/kingroot/kinguser/asr$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/asr$a;->akE:Lcom/kingroot/kinguser/apv$b;

    .line 97
    iput-object p1, p0, Lcom/kingroot/kinguser/asr$a;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/kingroot/kinguser/asr$a;->aGj:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/kingroot/kinguser/asr$a;->ahN:Landroid/view/View$OnClickListener;

    .line 100
    iput-object p4, p0, Lcom/kingroot/kinguser/asr$a;->akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    .line 101
    iput-object p5, p0, Lcom/kingroot/kinguser/asr$a;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 102
    iput-object p6, p0, Lcom/kingroot/kinguser/asr$a;->akD:Lcom/kingroot/kinguser/and$a;

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/asr$a;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$a;->akC:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/asr$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$a;->aGj:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/asr$a;)Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$a;->akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/asr$a;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$a;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/asr$a;)Lcom/kingroot/kinguser/and$a;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$a;->akD:Lcom/kingroot/kinguser/and$a;

    return-object v0
.end method


# virtual methods
.method public Op()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/asr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$a;->ahM:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$a;->ahM:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$a;->ahM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/asr$a;->gy(I)Lcom/kingroot/kinguser/asr;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 151
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$a;->ahM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/asr;

    iget v0, v0, Lcom/kingroot/kinguser/asr;->mType:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0f0221

    const/4 v10, 0x0

    .line 167
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/asr$a;->gy(I)Lcom/kingroot/kinguser/asr;

    move-result-object v2

    .line 168
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/asr$a;->getItemViewType(I)I

    move-result v1

    .line 169
    packed-switch v1, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    return-object p2

    .line 171
    :pswitch_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/asr$c;

    iget v0, v0, Lcom/kingroot/kinguser/asr$c;->type:I

    if-eq v0, v1, :cond_2

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300fc

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 174
    new-instance v0, Lcom/kingroot/kinguser/asr$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/asr$a;->ahN:Landroid/view/View$OnClickListener;

    invoke-direct {v0, p2, v1}, Lcom/kingroot/kinguser/asr$b;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 175
    const/4 v1, 0x2

    iput v1, v0, Lcom/kingroot/kinguser/asr$b;->type:I

    .line 176
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 178
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/asr$b;

    .line 179
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/asr$a;->gy(I)Lcom/kingroot/kinguser/asr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingroot/kinguser/asr$a;->getImageFetcher()Lcom/kingroot/kinguser/acr;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/asr$b;->a(Lcom/kingroot/kinguser/asr;Lcom/kingroot/kinguser/acr;)V

    goto :goto_0

    .line 184
    :pswitch_1
    iget-object v0, v2, Lcom/kingroot/kinguser/asr;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 185
    iget-object p2, v2, Lcom/kingroot/kinguser/asr;->mView:Landroid/view/View;

    goto :goto_0

    .line 192
    :pswitch_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/asr$c;

    iget v0, v0, Lcom/kingroot/kinguser/asr$c;->type:I

    if-eq v0, v1, :cond_4

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bd

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 195
    new-instance v1, Lcom/kingroot/kinguser/asr$e;

    invoke-direct {v1}, Lcom/kingroot/kinguser/asr$e;-><init>()V

    .line 196
    const v0, 0x7f0f0241

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/asr$e;->aFj:Landroid/widget/TextView;

    .line 197
    iput v10, v1, Lcom/kingroot/kinguser/asr$e;->type:I

    .line 198
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 202
    :goto_1
    iget-object v0, v0, Lcom/kingroot/kinguser/asr$e;->aFj:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/kingroot/kinguser/asr;->aNq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 200
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/asr$e;

    goto :goto_1

    .line 207
    :pswitch_3
    iget-object v2, v2, Lcom/kingroot/kinguser/asr;->aNs:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 209
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/asr$c;

    iget v0, v0, Lcom/kingroot/kinguser/asr$c;->type:I

    if-eq v0, v1, :cond_8

    .line 210
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a8

    invoke-virtual {v0, v1, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 212
    new-instance v1, Lcom/kingroot/kinguser/asr$d;

    invoke-direct {v1}, Lcom/kingroot/kinguser/asr$d;-><init>()V

    .line 213
    const/4 v0, 0x3

    iput v0, v1, Lcom/kingroot/kinguser/asr$d;->type:I

    .line 214
    const v0, 0x7f0f00d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/asr$d;->afV:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f0f0220

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/asr$d;->awc:Landroid/widget/TextView;

    .line 216
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/asr$d;->awd:Landroid/widget/TextView;

    .line 217
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 218
    const v0, 0x7f0f0148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/kingroot/kinguser/asr$d;->awb:Landroid/widget/ImageView;

    .line 219
    const v0, 0x7f0f00f4

    .line 220
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v0, v1, Lcom/kingroot/kinguser/asr$d;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 221
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 226
    :goto_2
    if-eqz v0, :cond_7

    .line 227
    iget-object v1, v0, Lcom/kingroot/kinguser/asr$d;->afV:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, v0, Lcom/kingroot/kinguser/asr$d;->awc:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f0703e1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->downloadCount:I

    int-to-long v8, v7

    .line 229
    invoke-static {v8, v9}, Lcom/kingroot/kinguser/anf;->bP(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 228
    invoke-virtual {v4, v5, v6}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->fileSize:J

    .line 229
    invoke-static {v4, v5}, Lcom/kingroot/kinguser/anf;->bQ(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, v0, Lcom/kingroot/kinguser/asr$d;->awd:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->describe:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, v0, Lcom/kingroot/kinguser/asr$d;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iget-object v3, v0, Lcom/kingroot/kinguser/asr$d;->awb:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setTag(Ljava/lang/Object;)V

    .line 233
    iget-object v1, v0, Lcom/kingroot/kinguser/asr$d;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V

    .line 235
    iget-object v1, v0, Lcom/kingroot/kinguser/asr$d;->awb:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Landroid/widget/ImageView;)V

    .line 237
    iget-object v1, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    iget-object v3, v0, Lcom/kingroot/kinguser/asr$d;->awb:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 238
    iget-object v1, p0, Lcom/kingroot/kinguser/asr$a;->akC:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/kingroot/kinguser/asr$d;->awb:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v1, v0, Lcom/kingroot/kinguser/asr$d;->awb:Landroid/widget/ImageView;

    const v3, 0x7f02010d

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v1

    iget-object v3, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/asr$a;->akE:Lcom/kingroot/kinguser/apv$b;

    invoke-virtual {v1, v3, v4}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 242
    :cond_6
    iget-object v0, v0, Lcom/kingroot/kinguser/asr$d;->awe:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v1, Lcom/kingroot/kinguser/asr$a$2;

    invoke-direct {v1, p0, v2}, Lcom/kingroot/kinguser/asr$a$2;-><init>(Lcom/kingroot/kinguser/asr$a;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    invoke-virtual {v2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    .line 259
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v3, 0x7f0703e8

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kingroot/kinguser/asr$a;->akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iget-object v4, p0, Lcom/kingroot/kinguser/asr$a;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 258
    invoke-static {v2, v0, v1, v3, v4}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    .line 263
    :cond_7
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/asr$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kingroot/kinguser/asr$a;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-interface {v0, v1, v3, v2}, Lcom/kingroot/kinguser/anc;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V

    goto/16 :goto_0

    .line 223
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/asr$d;

    goto/16 :goto_2

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x4

    return v0
.end method

.method public gy(I)Lcom/kingroot/kinguser/asr;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$a;->ahM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/asr;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/asr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, Lcom/kingroot/kinguser/asr$a;->ahM:Ljava/util/List;

    .line 143
    return-void
.end method
