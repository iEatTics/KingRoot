.class public Lcom/kingroot/kinguser/atj;
.super Lcom/kingroot/kinguser/acy;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/atj$a;
    }
.end annotation


# instance fields
.field private aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

.field private aDx:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener$Stub;

.field private aGj:Ljava/lang/String;

.field private volatile aNV:I

.field private aNW:Landroid/view/View;

.field private aNX:Landroid/view/View;

.field private aNY:I

.field final aNZ:Lcom/kingroot/kinguser/bed;

.field private aOa:Lcom/kingroot/kinguser/bed;

.field private ahM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/asr;",
            ">;"
        }
    .end annotation
.end field

.field private akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field private akD:Lcom/kingroot/kinguser/and$a;

.field private awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 96
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/acy;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/atj;->aNV:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/atj;->ahM:Ljava/util/List;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/atj;->aGj:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$1;-><init>(Lcom/kingroot/kinguser/atj;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atj;->aDx:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener$Stub;

    .line 177
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/atj$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/atj$2;-><init>(Lcom/kingroot/kinguser/atj;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atj;->aNZ:Lcom/kingroot/kinguser/bed;

    .line 234
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/atj$3;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/atj$3;-><init>(Lcom/kingroot/kinguser/atj;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atj;->aOa:Lcom/kingroot/kinguser/bed;

    .line 419
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7;-><init>(Lcom/kingroot/kinguser/atj;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atj;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 445
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;-><init>(Lcom/kingroot/kinguser/atj;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atj;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    .line 558
    new-instance v0, Lcom/kingroot/kinguser/atj$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/atj$6;-><init>(Lcom/kingroot/kinguser/atj;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atj;->akD:Lcom/kingroot/kinguser/and$a;

    .line 97
    iput-object p1, p0, Lcom/kingroot/kinguser/atj;->mContext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atj;I)I
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/kingroot/kinguser/atj;->aNV:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atj;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atj;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/atj;->bf(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/atj;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bf(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, p0, Lcom/kingroot/kinguser/atj;->aGj:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/kingroot/kinguser/asw;->e(Ljava/lang/String;Ljava/util/List;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atj;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 258
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/atj$4;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/atj$4;-><init>(Lcom/kingroot/kinguser/atj;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 268
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atj;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->eO(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atj;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 271
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 272
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/atj;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->aGj:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/kingroot/kinguser/atj;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    return-object v0
.end method

.method public static synthetic e(Lcom/kingroot/kinguser/atj;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const v7, 0x7f070138

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 291
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/acy;->a(Landroid/os/Message;)V

    .line 295
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 297
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 298
    iput-object v0, p0, Lcom/kingroot/kinguser/atj;->ahM:Ljava/util/List;

    .line 300
    iget-object v1, p0, Lcom/kingroot/kinguser/atj;->Ve:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/kingroot/kinguser/asr$a;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/asr$a;->setData(Ljava/util/List;)V

    .line 301
    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/atj;->U(J)V

    .line 303
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aii;->xM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atj;->aOa:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->Ve:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/kingroot/kinguser/asr$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asr$a;->Op()Ljava/util/List;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/kingroot/kinguser/atj;->aNX:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 312
    new-instance v1, Lcom/kingroot/kinguser/asr;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    .line 313
    invoke-virtual {v2, v7}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/asr;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 314
    new-instance v1, Lcom/kingroot/kinguser/asr;

    iget-object v2, p0, Lcom/kingroot/kinguser/atj;->aNX:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/asr;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 315
    new-instance v1, Lcom/kingroot/kinguser/asr;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070137

    .line 316
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/asr;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-interface {v0, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 317
    iput-object v0, p0, Lcom/kingroot/kinguser/atj;->ahM:Ljava/util/List;

    .line 318
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->Ve:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 319
    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/atj;->U(J)V

    goto :goto_0

    .line 322
    :cond_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/atj;->aNX:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 323
    new-instance v1, Lcom/kingroot/kinguser/asr;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    .line 324
    invoke-virtual {v2, v7}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/asr;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 325
    new-instance v1, Lcom/kingroot/kinguser/asr;

    iget-object v2, p0, Lcom/kingroot/kinguser/atj;->aNX:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/asr;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 326
    iput-object v0, p0, Lcom/kingroot/kinguser/atj;->ahM:Ljava/util/List;

    .line 327
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->Ve:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 328
    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/atj;->U(J)V

    goto/16 :goto_0

    .line 334
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->Ve:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/kingroot/kinguser/asr$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asr$a;->Op()Ljava/util/List;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 340
    new-instance v1, Lcom/kingroot/kinguser/asr;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    .line 341
    invoke-virtual {v2, v7}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/asr;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 342
    new-instance v1, Lcom/kingroot/kinguser/asr;

    iget-object v2, p0, Lcom/kingroot/kinguser/atj;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/asr;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 343
    new-instance v1, Lcom/kingroot/kinguser/asr;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070143

    .line 344
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/asr;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-interface {v0, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 345
    iput-object v0, p0, Lcom/kingroot/kinguser/atj;->ahM:Ljava/util/List;

    .line 346
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->Ve:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 347
    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/atj;->U(J)V

    goto/16 :goto_0

    .line 350
    :cond_2
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 351
    new-instance v1, Lcom/kingroot/kinguser/asr;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    .line 352
    invoke-virtual {v2, v7}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/asr;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 353
    new-instance v1, Lcom/kingroot/kinguser/asr;

    iget-object v2, p0, Lcom/kingroot/kinguser/atj;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/asr;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 354
    iput-object v0, p0, Lcom/kingroot/kinguser/atj;->ahM:Ljava/util/List;

    .line 355
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->Ve:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 356
    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/atj;->U(J)V

    goto/16 :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public ah(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/kingroot/kinguser/atj;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/kingroot/kinguser/atj;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v2, p0, Lcom/kingroot/kinguser/atj;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-static {p1, v0, v1, v2}, Lcom/kingroot/kinguser/anf;->a(Ljava/util/List;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 94
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 7

    .prologue
    .line 157
    new-instance v0, Lcom/kingroot/kinguser/asr$a;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/atj;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/atj;->aGj:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/atj;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v5, p0, Lcom/kingroot/kinguser/atj;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    iget-object v6, p0, Lcom/kingroot/kinguser/atj;->akD:Lcom/kingroot/kinguser/and$a;

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/asr$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 162
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/acy;->i(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->ahM:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->aNW:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->Vd:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->aNW:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->Vd:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected oG()Landroid/view/View;
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/kingroot/kinguser/acy;->oG()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected oI()V
    .locals 4

    .prologue
    .line 141
    invoke-super {p0}, Lcom/kingroot/kinguser/acy;->oI()V

    .line 143
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atj;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300dd

    invoke-virtual {p0}, Lcom/kingroot/kinguser/atj;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/atj;->aNW:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->aNW:Landroid/view/View;

    const v1, 0x7f0f00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 145
    const-wide/32 v2, 0x7f070144

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/atj;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0075

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->aNW:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 148
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 149
    iget-object v1, p0, Lcom/kingroot/kinguser/atj;->aNW:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atj;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/atj;->aNW:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->Vd:Landroid/widget/ListView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0201c0

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 153
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 131
    new-instance v0, Lcom/kingroot/kinguser/atk;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/atj;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/32 v2, 0x7f070143

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/atj;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/atk;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/asr;

    .line 393
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/asr;->aNt:Z

    .line 396
    iget-object v1, v0, Lcom/kingroot/kinguser/asr;->aNr:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/asu;->iO(Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/atj$5;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/atj$5;-><init>(Lcom/kingroot/kinguser/atj;Lcom/kingroot/kinguser/asr;)V

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 407
    check-cast p1, Landroid/widget/Button;

    .line 408
    invoke-virtual {p1}, Landroid/widget/Button;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const-wide/32 v0, 0x7f070142

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/atj;->V(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e005f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 411
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e010a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 412
    invoke-virtual {p1, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->Ve:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 416
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/atj;->U(J)V

    .line 417
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/acy;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aii;->xM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x5

    iput v0, p0, Lcom/kingroot/kinguser/atj;->aNY:I

    .line 107
    const-string v0, "5010004"

    iput-object v0, p0, Lcom/kingroot/kinguser/atj;->aGj:Ljava/lang/String;

    .line 114
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/atj$1;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/atj$1;-><init>(Lcom/kingroot/kinguser/atj;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 127
    return-void

    .line 109
    :cond_0
    const/16 v0, 0x14

    iput v0, p0, Lcom/kingroot/kinguser/atj;->aNY:I

    .line 110
    const-string v0, "5010001"

    iput-object v0, p0, Lcom/kingroot/kinguser/atj;->aGj:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 370
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atj;->aDx:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->b(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener;)V

    .line 371
    invoke-super {p0}, Lcom/kingroot/kinguser/acy;->onResume()V

    .line 372
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atj;->aNZ:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 373
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/kingroot/kinguser/atj;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, p0, Lcom/kingroot/kinguser/atj;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    .line 375
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703e8

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 377
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 381
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atj;->aDx:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener;)V

    .line 382
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atj;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 383
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atj;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aso;->a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 384
    invoke-super {p0}, Lcom/kingroot/kinguser/acy;->onStop()V

    .line 385
    return-void
.end method
