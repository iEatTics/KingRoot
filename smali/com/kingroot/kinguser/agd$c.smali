.class Lcom/kingroot/kinguser/agd$c;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private final ahN:Landroid/view/View$OnClickListener;

.field private ahP:Landroid/widget/ImageView;

.field final synthetic akG:Lcom/kingroot/kinguser/agd;

.field private final akP:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

.field private akQ:Landroid/view/View;

.field private akR:Landroid/widget/TextView;

.field private akS:Landroid/widget/ImageView;

.field private akT:Landroid/widget/TextView;

.field private akU:Lcom/kingroot/kinguser/agd$a;

.field private akV:Lcom/kingcore/uilib/ProgressWhell;

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
.method constructor <init>(Lcom/kingroot/kinguser/agd;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/kingcore/uilib/ProgressWhell;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/agd$b;)V
    .locals 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/kingroot/kinguser/agd$c;->akG:Lcom/kingroot/kinguser/agd;

    .line 207
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akz:Ljava/lang/ref/WeakReference;

    .line 194
    new-instance v0, Lcom/kingroot/kinguser/agd$c$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/agd$c$1;-><init>(Lcom/kingroot/kinguser/agd$c;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/agd$c;->ahN:Landroid/view/View$OnClickListener;

    .line 208
    iput-object p2, p0, Lcom/kingroot/kinguser/agd$c;->akQ:Landroid/view/View;

    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akQ:Landroid/view/View;

    iget-object v1, p0, Lcom/kingroot/kinguser/agd$c;->ahN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iput-object p3, p0, Lcom/kingroot/kinguser/agd$c;->akR:Landroid/widget/TextView;

    .line 211
    iput-object p4, p0, Lcom/kingroot/kinguser/agd$c;->akS:Landroid/widget/ImageView;

    .line 212
    iput-object p5, p0, Lcom/kingroot/kinguser/agd$c;->ahP:Landroid/widget/ImageView;

    .line 213
    iput-object p6, p0, Lcom/kingroot/kinguser/agd$c;->akT:Landroid/widget/TextView;

    .line 214
    iput-object p7, p0, Lcom/kingroot/kinguser/agd$c;->akV:Lcom/kingcore/uilib/ProgressWhell;

    .line 215
    iput-object p8, p0, Lcom/kingroot/kinguser/agd$c;->akP:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 216
    if-eqz p9, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akz:Ljava/lang/ref/WeakReference;

    .line 217
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/agd$c;)Lcom/kingroot/kinguser/agd$a;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akU:Lcom/kingroot/kinguser/agd$a;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/agd$c;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akz:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private c(Lcom/kingroot/kinguser/agd$a;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 234
    iget-object v1, p0, Lcom/kingroot/kinguser/agd$c;->akR:Landroid/widget/TextView;

    iget-boolean v0, p1, Lcom/kingroot/kinguser/agd$a;->akN:Z

    if-eqz v0, :cond_1

    .line 235
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f07045a

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/kingroot/kinguser/agd$a;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 234
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p1, Lcom/kingroot/kinguser/agd$a;->akO:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v0, :cond_2

    .line 239
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/agd$c;->akQ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/agd$c;->akQ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p1, Lcom/kingroot/kinguser/agd$a;->akO:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/anc;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V

    .line 241
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akQ:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akP:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v0, v5}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akS:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v0, p1, Lcom/kingroot/kinguser/agd$a;->akO:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/agd$c;->ahP:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akG:Lcom/kingroot/kinguser/agd;

    invoke-static {v0}, Lcom/kingroot/kinguser/agd;->a(Lcom/kingroot/kinguser/agd;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/agd$c;->ahP:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/kingroot/kinguser/agd$a;->akO:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->ahP:Landroid/widget/ImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/agd$a;->akO:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/agd$c;->akG:Lcom/kingroot/kinguser/agd;

    invoke-static {v2}, Lcom/kingroot/kinguser/agd;->b(Lcom/kingroot/kinguser/agd;)Lcom/kingroot/kinguser/apv$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 252
    :cond_0
    iget-object v0, p1, Lcom/kingroot/kinguser/agd$a;->akO:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, p0, Lcom/kingroot/kinguser/agd$c;->akP:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V

    .line 253
    iget-object v0, p1, Lcom/kingroot/kinguser/agd$a;->akO:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, p1, Lcom/kingroot/kinguser/agd$a;->akO:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    .line 254
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0700d6

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/agd$c;->akG:Lcom/kingroot/kinguser/agd;

    iget-object v3, v3, Lcom/kingroot/kinguser/agd;->akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iget-object v4, p0, Lcom/kingroot/kinguser/agd$c;->akG:Lcom/kingroot/kinguser/agd;

    iget-object v4, v4, Lcom/kingroot/kinguser/agd;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 253
    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    .line 256
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akP:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v1, Lcom/kingroot/kinguser/agd$c$2;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/agd$c$2;-><init>(Lcom/kingroot/kinguser/agd$c;Lcom/kingroot/kinguser/agd$a;)V

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :goto_1
    return-void

    .line 235
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kinguser/agd$a;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akQ:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 268
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akP:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v0, v7}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akS:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    iget-object v1, p0, Lcom/kingroot/kinguser/agd$c;->akS:Landroid/widget/ImageView;

    iget-boolean v0, p1, Lcom/kingroot/kinguser/agd$a;->akL:Z

    if-eqz v0, :cond_3

    const v0, 0x7f02020a

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->ahP:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/kingroot/kinguser/agd$a;->akK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 270
    :cond_3
    const v0, 0x7f02020c

    goto :goto_2
.end method


# virtual methods
.method b(Lcom/kingroot/kinguser/agd$a;)V
    .locals 2
    .param p1    # Lcom/kingroot/kinguser/agd$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 220
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akR:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 221
    :cond_0
    iput-object p1, p0, Lcom/kingroot/kinguser/agd$c;->akU:Lcom/kingroot/kinguser/agd$a;

    .line 223
    iget v0, p1, Lcom/kingroot/kinguser/agd$a;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 224
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/agd$c;->c(Lcom/kingroot/kinguser/agd$a;)V

    goto :goto_0

    .line 226
    :cond_1
    iget v0, p1, Lcom/kingroot/kinguser/agd$a;->type:I

    if-nez v0, :cond_2

    .line 227
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/agd$c;->d(Lcom/kingroot/kinguser/agd$a;)V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akR:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/agd$a;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method d(Lcom/kingroot/kinguser/agd$a;)V
    .locals 5

    .prologue
    const v4, 0x7f0e0077

    const v2, 0x7f0e001a

    const/4 v3, 0x0

    .line 276
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akR:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/agd$a;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->ahP:Landroid/widget/ImageView;

    iget v1, p1, Lcom/kingroot/kinguser/agd$a;->akJ:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 278
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akV:Lcom/kingcore/uilib/ProgressWhell;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akQ:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 280
    iget v0, p1, Lcom/kingroot/kinguser/agd$a;->status:I

    packed-switch v0, :pswitch_data_0

    .line 304
    :goto_0
    return-void

    .line 282
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akT:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 283
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akT:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/agd$a;->akM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 286
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akT:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akT:Landroid/widget/TextView;

    const v1, 0x7f070455

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 290
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akT:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akT:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/agd$a;->akM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akQ:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akT:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0019

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akT:Landroid/widget/TextView;

    const v1, 0x7f070456

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 297
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akV:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0, v3}, Lcom/kingcore/uilib/ProgressWhell;->setVisibility(I)V

    goto :goto_0

    .line 300
    :pswitch_4
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akT:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c;->akT:Landroid/widget/TextView;

    const v1, 0x7f070457

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
