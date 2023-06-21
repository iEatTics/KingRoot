.class public Lcom/kingroot/kinguser/afi;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/afi$a;,
        Lcom/kingroot/kinguser/afi$b;
    }
.end annotation


# instance fields
.field private acx:Landroid/widget/ImageView;

.field private acy:Landroid/widget/TextView;

.field private afK:[Ljava/lang/String;

.field ahA:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/kingroot/kinguser/aex$a;",
            ">;"
        }
    .end annotation
.end field

.field private ahB:Lcom/kingroot/kinguser/adi;

.field private ahC:Landroid/widget/ImageView;

.field private ahD:Lcom/kingroot/kinguser/bjs;

.field private ahE:Lcom/kingroot/kinguser/bed;

.field private ahF:Lcom/kingroot/kinguser/bed;

.field private ahq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aex$a;",
            ">;"
        }
    .end annotation
.end field

.field private ahr:Lcom/kingroot/kinguser/adh;

.field private ahs:Landroid/view/View$OnClickListener;

.field private aht:Lcom/kingroot/kinguser/afh;

.field private ahu:Landroid/widget/Button;

.field private ahv:Landroid/widget/RelativeLayout;

.field private ahw:Lcom/kingroot/common/uilib/KBaseListView;

.field private ahx:Landroid/widget/TextView;

.field private ahy:Lcom/kingroot/kinguser/afi$b;

.field ahz:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/kingroot/kinguser/aex$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 97
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->ahr:Lcom/kingroot/kinguser/adh;

    .line 306
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/afi$3;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/afi$3;-><init>(Lcom/kingroot/kinguser/afi;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->ahE:Lcom/kingroot/kinguser/bed;

    .line 404
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/afi$4;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/afi$4;-><init>(Lcom/kingroot/kinguser/afi;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->ahF:Lcom/kingroot/kinguser/bed;

    .line 98
    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->afK:[Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->ahz:Ljava/util/HashSet;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->ahq:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->ahA:Ljava/util/HashSet;

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/afi;)Lcom/kingroot/kinguser/afh;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->aht:Lcom/kingroot/kinguser/afh;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/afi;Lcom/kingroot/kinguser/bjs;)Lcom/kingroot/kinguser/bjs;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kingroot/kinguser/afi;->ahD:Lcom/kingroot/kinguser/bjs;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/afi;Lcom/kingroot/kinguser/aex$a;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/afi;->c(Lcom/kingroot/kinguser/aex$a;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/afi;)Lcom/kingroot/kinguser/bjs;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahD:Lcom/kingroot/kinguser/bjs;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/afi;)Ljava/util/List;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahq:Ljava/util/List;

    return-object v0
.end method

.method private c(Lcom/kingroot/kinguser/aex$a;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 430
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 432
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    :try_start_0
    iget-object v3, p1, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    .line 436
    invoke-static {v3}, Lcom/kingroot/kinguser/aff;->eZ(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    if-nez v0, :cond_2

    .line 437
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 448
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 449
    if-eqz v0, :cond_3

    .line 450
    const/4 v0, 0x7

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 453
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 454
    return-void

    .line 439
    :cond_2
    :try_start_1
    iget-object v1, p1, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    const/4 v3, 0x1

    iput v3, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v1

    .line 442
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 452
    :cond_3
    const/4 v0, 0x6

    iput v0, v1, Landroid/os/Message;->arg2:I

    goto :goto_1
.end method

.method private vf()V
    .locals 2

    .prologue
    .line 292
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/afi;->ahE:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 293
    return-void
.end method

.method private vh()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->dismiss()V

    .line 460
    :cond_0
    return-void
.end method

.method private vi()V
    .locals 4

    .prologue
    .line 502
    new-instance v0, Lcom/kingroot/kinguser/bjt;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bjt;-><init>(Landroid/content/Context;)V

    .line 503
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjt;->show()V

    .line 504
    const-wide/32 v2, 0x7f07024a

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/afi;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjt;->setTitleText(Ljava/lang/String;)V

    .line 505
    const-wide/32 v2, 0x7f07021c

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/afi;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjt;->ma(Ljava/lang/String;)V

    .line 506
    const-wide/32 v2, 0x7f0700c9

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/afi;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjt;->lK(Ljava/lang/String;)V

    .line 507
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjt;->iY(I)V

    .line 508
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 221
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->a(Landroid/os/Message;)V

    .line 222
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 289
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 224
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahr:Lcom/kingroot/kinguser/adh;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahr:Lcom/kingroot/kinguser/adh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adh;->dismiss()V

    .line 227
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->ahr:Lcom/kingroot/kinguser/adh;

    .line 228
    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->oR()V

    goto :goto_0

    .line 231
    :pswitch_2
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/afi;->U(J)V

    goto :goto_0

    .line 234
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    .line 235
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/afi$2;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/afi$2;-><init>(Lcom/kingroot/kinguser/afi;Lcom/kingroot/kinguser/aex$a;)V

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0

    .line 246
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 247
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->acy:Landroid/widget/TextView;

    const v1, 0x7f070095

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahC:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->acx:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 250
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->acx:Landroid/widget/ImageView;

    const v1, 0x7f0202b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 252
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 253
    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 255
    :cond_2
    const-wide/32 v0, 0x7f070369

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/afi;->V(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    .line 256
    invoke-direct {p0}, Lcom/kingroot/kinguser/afi;->vh()V

    goto :goto_0

    .line 263
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/kingroot/kinguser/aex$a;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/kingroot/kinguser/aex$a;

    if-eqz v0, :cond_3

    .line 266
    iget-object v1, p0, Lcom/kingroot/kinguser/afi;->ahq:Ljava/util/List;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->aht:Lcom/kingroot/kinguser/afh;

    iget-object v1, p0, Lcom/kingroot/kinguser/afi;->ahq:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/afh;->setData(Ljava/util/List;)V

    .line 269
    :cond_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/afi;->vh()V

    .line 270
    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->oR()V

    goto/16 :goto_0

    .line 276
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 278
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 279
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 283
    :pswitch_7
    invoke-direct {p0}, Lcom/kingroot/kinguser/afi;->vh()V

    .line 284
    invoke-direct {p0}, Lcom/kingroot/kinguser/afi;->vi()V

    goto/16 :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public i(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahx:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->vg()V

    .line 214
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahx:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahx:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahx:Landroid/widget/TextView;

    const-wide/32 v2, 0x7f070380

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/afi;->V(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kingroot/kinguser/afi;->ahq:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected oG()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 140
    new-instance v0, Lcom/kingroot/kinguser/afi$a;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/afi$a;-><init>(Lcom/kingroot/kinguser/afi;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->ahs:Landroid/view/View$OnClickListener;

    .line 141
    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030044

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 143
    const v0, 0x7f0f000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->ahx:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahx:Landroid/widget/TextView;

    const-wide/32 v2, 0x7f070380

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/afi;->V(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    new-instance v0, Lcom/kingroot/kinguser/afi$b;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/afi$b;-><init>(Lcom/kingroot/kinguser/afi;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->ahy:Lcom/kingroot/kinguser/afi$b;

    .line 147
    const v0, 0x7f0f013d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->ahv:Landroid/widget/RelativeLayout;

    .line 148
    const v0, 0x7f0f000f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->ahu:Landroid/widget/Button;

    .line 150
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahu:Landroid/widget/Button;

    iget-object v2, p0, Lcom/kingroot/kinguser/afi;->ahy:Lcom/kingroot/kinguser/afi$b;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v0, 0x7f0f000b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/KBaseListView;

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->ahw:Lcom/kingroot/common/uilib/KBaseListView;

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahw:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->getImageFetcher()Lcom/kingroot/kinguser/acr;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/common/uilib/KBaseListView;->b(Lcom/kingroot/kinguser/acr;)V

    .line 154
    new-instance v0, Lcom/kingroot/kinguser/afh;

    iget-object v2, p0, Lcom/kingroot/kinguser/afi;->ahs:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/kingroot/kinguser/afi;->afK:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/kingroot/kinguser/afh;-><init>(Landroid/view/View$OnClickListener;[Ljava/lang/String;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->aht:Lcom/kingroot/kinguser/afh;

    .line 155
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahw:Lcom/kingroot/common/uilib/KBaseListView;

    iget-object v2, p0, Lcom/kingroot/kinguser/afi;->aht:Lcom/kingroot/kinguser/afh;

    invoke-virtual {v0, v2}, Lcom/kingroot/common/uilib/KBaseListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahw:Lcom/kingroot/common/uilib/KBaseListView;

    new-instance v2, Lcom/kingroot/kinguser/afi$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/afi$1;-><init>(Lcom/kingroot/kinguser/afi;)V

    invoke-virtual {v0, v2}, Lcom/kingroot/common/uilib/KBaseListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 171
    return-object v1
.end method

.method protected oI()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 177
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->oI()V

    .line 179
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 182
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 183
    const v2, 0x7f070393

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 184
    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v1, p0, Lcom/kingroot/kinguser/afi;->ahw:Lcom/kingroot/common/uilib/KBaseListView;

    invoke-virtual {v1, v0}, Lcom/kingroot/common/uilib/KBaseListView;->setEmptyView(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahr:Lcom/kingroot/kinguser/adh;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/kingroot/kinguser/adh;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/adh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->ahr:Lcom/kingroot/kinguser/adh;

    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahr:Lcom/kingroot/kinguser/adh;

    const v1, 0x7f0701f1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adh;->cp(I)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahr:Lcom/kingroot/kinguser/adh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adh;->show()V

    .line 193
    invoke-direct {p0}, Lcom/kingroot/kinguser/afi;->vf()V

    .line 194
    return-void
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 107
    new-instance v0, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/32 v2, 0x7f07037f

    .line 108
    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/afi;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    return-object v0
.end method

.method public oR()V
    .locals 0

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->ve()V

    .line 199
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->oR()V

    .line 200
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-static {}, Lcom/kingroot/kinguser/adt;->sY()Lcom/kingroot/kinguser/ado;

    move-result-object v0

    const-class v1, Lcom/kingroot/kinguser/bjs;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/ado;->f(Ljava/lang/Class;)Lcom/kingroot/kinguser/adq;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bjs;

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->ahD:Lcom/kingroot/kinguser/bjs;

    .line 116
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/kingroot/kinguser/afi;->vd()V

    .line 122
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onDestroy()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/afi;->ahD:Lcom/kingroot/kinguser/bjs;

    .line 124
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 297
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onStart()V

    .line 299
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 303
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onStop()V

    .line 304
    return-void
.end method

.method public vd()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahB:Lcom/kingroot/kinguser/adi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->dismiss()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahr:Lcom/kingroot/kinguser/adh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahr:Lcom/kingroot/kinguser/adh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adh;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->ahr:Lcom/kingroot/kinguser/adh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adh;->dismiss()V

    .line 136
    :cond_1
    return-void
.end method

.method public ve()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/afi;->aht:Lcom/kingroot/kinguser/afh;

    iget-object v1, p0, Lcom/kingroot/kinguser/afi;->ahq:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/afh;->Z(Ljava/util/List;)V

    .line 217
    return-void
.end method

.method public vg()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 346
    iget-object v1, p0, Lcom/kingroot/kinguser/afi;->ahz:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 347
    :goto_0
    if-eqz v1, :cond_2

    .line 348
    iget-object v1, p0, Lcom/kingroot/kinguser/afi;->ahu:Landroid/widget/Button;

    const-wide/32 v2, 0x7f070376

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/afi;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/afi;->ahv:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kingroot/kinguser/afi;->ahq:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 353
    return-void

    :cond_1
    move v1, v0

    .line 346
    goto :goto_0

    .line 350
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/afi;->ahu:Landroid/widget/Button;

    const-wide/32 v4, 0x7f070377

    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/afi;->V(J)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingroot/kinguser/afi;->ahz:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
