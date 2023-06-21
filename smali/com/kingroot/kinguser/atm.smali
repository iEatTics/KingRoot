.class public Lcom/kingroot/kinguser/atm;
.super Lcom/kingroot/kinguser/ans;
.source "SourceFile"


# instance fields
.field private aBF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

.field private aCF:Lcom/kingroot/kinguser/anx;

.field private aDS:Landroid/widget/ImageView;

.field private aDT:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

.field private aGj:Ljava/lang/String;

.field private aNY:I

.field private aOA:Ljava/util/concurrent/atomic/AtomicInteger;

.field private aOB:Ljava/util/concurrent/atomic/AtomicLong;

.field private aOC:Ljava/util/concurrent/atomic/AtomicLong;

.field private aOD:Ljava/util/concurrent/atomic/AtomicInteger;

.field private aOE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation
.end field

.field private aOF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aOG:Z

.field private aOH:Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener$Stub;

.field private aOI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

.field private final aOJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private aOK:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult$Stub;

.field private aOL:Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;

.field private aOM:Z

.field private final aON:Landroid/widget/AdapterView$OnItemClickListener;

.field private aOO:Lcom/kingroot/kinguser/bed;

.field private aOP:Landroid/view/View$OnClickListener;

.field private aOl:I

.field private aOm:Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;

.field private aOn:Lcom/kingroot/kinguser/atq;

.field private aOo:Lcom/kingroot/kinguser/gamebox/foreground/view/GameboxGridview;

.field aOp:Lcom/kingroot/kinguser/atp$b;

.field private aOq:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;

.field private aOr:Landroid/widget/Button;

.field private aOs:Landroid/widget/ListView;

.field private aOt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ats;",
            ">;"
        }
    .end annotation
.end field

.field private aOu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ato$a;",
            ">;"
        }
    .end annotation
.end field

.field private aOv:Ljava/lang/String;

.field private aOw:Ljava/lang/String;

.field private aOx:Lcom/kingroot/kinguser/ato;

.field private aOy:Lcom/kingroot/kinguser/atp;

.field private aOz:Z

.field private aiS:Lcom/kingroot/kinguser/we$a;

.field private akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field private akD:Lcom/kingroot/kinguser/and$a;

.field private anQ:Lcom/kingroot/kinguser/tk;

.field private awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 268
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ans;-><init>(Landroid/content/Context;)V

    .line 165
    iput v1, p0, Lcom/kingroot/kinguser/atm;->aOl:I

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOt:Ljava/util/List;

    .line 180
    iput-boolean v1, p0, Lcom/kingroot/kinguser/atm;->aOz:Z

    .line 181
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOA:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 182
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lcom/kingroot/kinguser/aav;->qp()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOB:Ljava/util/concurrent/atomic/AtomicLong;

    .line 183
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOC:Ljava/util/concurrent/atomic/AtomicLong;

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOD:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOE:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aBF:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOF:Ljava/util/Map;

    .line 197
    iput-boolean v1, p0, Lcom/kingroot/kinguser/atm;->aOG:Z

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aGj:Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOJ:Ljava/util/List;

    .line 215
    new-instance v0, Lcom/kingroot/kinguser/atm$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/atm$1;-><init>(Lcom/kingroot/kinguser/atm;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aiS:Lcom/kingroot/kinguser/we$a;

    .line 234
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;-><init>(Lcom/kingroot/kinguser/atm;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOK:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult$Stub;

    .line 744
    new-instance v0, Lcom/kingroot/kinguser/atm$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/atm$7;-><init>(Lcom/kingroot/kinguser/atm;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOL:Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;

    .line 977
    iput-boolean v6, p0, Lcom/kingroot/kinguser/atm;->aOM:Z

    .line 1080
    new-instance v0, Lcom/kingroot/kinguser/atm$13;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/atm$13;-><init>(Lcom/kingroot/kinguser/atm;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aON:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1139
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/atm$14;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/atm$14;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOO:Lcom/kingroot/kinguser/bed;

    .line 1218
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;-><init>(Lcom/kingroot/kinguser/atm;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    .line 1316
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$26;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$26;-><init>(Lcom/kingroot/kinguser/atm;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 1345
    new-instance v0, Lcom/kingroot/kinguser/atm$15;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/atm$15;-><init>(Lcom/kingroot/kinguser/atm;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOP:Landroid/view/View$OnClickListener;

    .line 1395
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29;-><init>(Lcom/kingroot/kinguser/atm;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    .line 1439
    new-instance v0, Lcom/kingroot/kinguser/atm$18;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/atm$18;-><init>(Lcom/kingroot/kinguser/atm;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->akD:Lcom/kingroot/kinguser/and$a;

    .line 269
    iput p2, p0, Lcom/kingroot/kinguser/atm;->aOl:I

    .line 270
    return-void
.end method

.method static synthetic A(Lcom/kingroot/kinguser/atm;)Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/kingroot/kinguser/atm;->aOM:Z

    return v0
.end method

.method static synthetic B(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    return-object v0
.end method

.method private Jf()V
    .locals 7

    .prologue
    .line 1468
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOE:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1469
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x0

    new-instance v6, Lcom/kingroot/kinguser/atm$19;

    invoke-direct {v6, p0, v0}, Lcom/kingroot/kinguser/atm$19;-><init>(Lcom/kingroot/kinguser/atm;Ljava/util/ArrayList;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 1484
    return-void
.end method

.method private Pe()V
    .locals 6

    .prologue
    .line 723
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/atm$6;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/atm$6;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 741
    return-void
.end method

.method private Pf()V
    .locals 4

    .prologue
    .line 790
    invoke-static {}, Lcom/kingroot/kinguser/asz;->OL()Lcom/kingroot/kinguser/asz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asz;->OM()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/ate;->OP()J

    move-result-wide v0

    .line 791
    const-wide/32 v2, 0x2bf20

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOL:Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer;->a(Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;)V

    .line 793
    const-string v0, "[\u6e38\u620f\u52a0\u901f] killing"

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;)V

    .line 804
    :goto_0
    return-void

    .line 799
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 800
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 801
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private Pg()V
    .locals 6

    .prologue
    .line 811
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/atm$8;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/atm$8;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 834
    return-void
.end method

.method private Ph()V
    .locals 3

    .prologue
    .line 909
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOt:Ljava/util/List;

    if-nez v0, :cond_1

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 912
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOt:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOt:Ljava/util/List;

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ats;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/ats;->aQc:Z

    if-nez v0, :cond_0

    .line 916
    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/ats;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ats;-><init>()V

    .line 917
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/ats;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 918
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/ats;->mAppName:Ljava/lang/String;

    .line 919
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/ats;->aQc:Z

    .line 920
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/kingroot/kinguser/ats;->aQd:Lcom/android/animation/AnimatorSet;

    .line 921
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOt:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private Pi()V
    .locals 4

    .prologue
    .line 929
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOn:Lcom/kingroot/kinguser/atq;

    if-nez v0, :cond_1

    .line 944
    :cond_0
    return-void

    .line 933
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOn:Lcom/kingroot/kinguser/atq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atq;->Mq()Ljava/util/List;

    move-result-object v2

    .line 934
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 936
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 937
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ats;

    iget-object v0, v0, Lcom/kingroot/kinguser/ats;->aQd:Lcom/android/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 938
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ats;

    iget-object v0, v0, Lcom/kingroot/kinguser/ats;->aQd:Lcom/android/animation/AnimatorSet;

    .line 939
    invoke-virtual {v0}, Lcom/android/animation/AnimatorSet;->end()V

    .line 936
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private Pj()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 959
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOu:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOu:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 961
    new-instance v0, Lcom/kingroot/kinguser/ato$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ato$a;-><init>()V

    .line 962
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOv:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kingroot/kinguser/atm;->aOA:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 963
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    .line 962
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/ato$a;->aPE:Ljava/lang/String;

    .line 964
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070150

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/ato$a;->aPD:Ljava/lang/String;

    .line 966
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    new-instance v0, Lcom/kingroot/kinguser/ato$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ato$a;-><init>()V

    .line 969
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOw:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kingroot/kinguser/atm;->aOB:Ljava/util/concurrent/atomic/AtomicLong;

    .line 970
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    invoke-static {v4, v5, v8}, Lcom/kingroot/kinguser/act;->b(JZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    .line 969
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/ato$a;->aPE:Ljava/lang/String;

    .line 971
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07014e

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/ato$a;->aPD:Ljava/lang/String;

    .line 973
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOx:Lcom/kingroot/kinguser/ato;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ato;->notifyDataSetChanged()V

    .line 975
    return-void
.end method

.method private Pk()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 980
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOm:Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->Pz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    iget-boolean v0, p0, Lcom/kingroot/kinguser/atm;->aOM:Z

    if-eqz v0, :cond_0

    .line 986
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 987
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOq:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;->getLocationInWindow([I)V

    .line 988
    aget v0, v0, v5

    .line 989
    iput-boolean v2, p0, Lcom/kingroot/kinguser/atm;->aOM:Z

    .line 990
    iget-boolean v1, p0, Lcom/kingroot/kinguser/atm;->aOz:Z

    if-nez v1, :cond_2

    .line 991
    iput-boolean v5, p0, Lcom/kingroot/kinguser/atm;->aOz:Z

    .line 992
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOm:Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;

    iget-boolean v2, p0, Lcom/kingroot/kinguser/atm;->aOz:Z

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->setArrowState(Z)V

    .line 993
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOq:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getWholeView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v0, v2, v0

    int-to-float v0, v0

    invoke-static {v1, v3, v4, v0}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;FF)V

    .line 994
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOs:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOs:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v3, v1, v4}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;FF)V

    .line 995
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOs:Landroid/widget/ListView;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/bhk;->d(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 996
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOq:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;

    new-instance v1, Lcom/kingroot/kinguser/atm$9;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atm$9;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bhk;->c(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    .line 1007
    :cond_2
    iput-boolean v2, p0, Lcom/kingroot/kinguser/atm;->aOz:Z

    .line 1008
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOm:Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;

    iget-boolean v2, p0, Lcom/kingroot/kinguser/atm;->aOz:Z

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->setArrowState(Z)V

    .line 1009
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOq:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;

    int-to-float v0, v0

    invoke-static {v1, v3, v0, v4}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;FF)V

    .line 1010
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOs:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOs:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v3, v4, v1}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;FF)V

    .line 1011
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOs:Landroid/widget/ListView;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/bhk;->c(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 1012
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOq:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;

    new-instance v1, Lcom/kingroot/kinguser/atm$10;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atm$10;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bhk;->d(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V

    goto :goto_0
.end method

.method private Pl()V
    .locals 6

    .prologue
    .line 1027
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/atm$11;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/atm$11;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 1052
    return-void
.end method

.method private Pm()V
    .locals 6

    .prologue
    .line 1058
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/atm$12;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/atm$12;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 1078
    return-void
.end method

.method private Pn()V
    .locals 2

    .prologue
    .line 1367
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/asv;->Oy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/atm;->aOG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    :goto_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/atm;->aOG:Z

    if-eqz v0, :cond_0

    .line 1372
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1374
    :cond_0
    return-void

    .line 1368
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private Po()V
    .locals 6

    .prologue
    .line 1377
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/atm$16;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/atm$16;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 1393
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/tk;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->anQ:Lcom/kingroot/kinguser/tk;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atm;Lcom/kingroot/kinguser/tk;)Lcom/kingroot/kinguser/tk;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/kingroot/kinguser/atm;->anQ:Lcom/kingroot/kinguser/tk;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atm;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/kingroot/kinguser/atm;->aOt:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atm;Z)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/atm;->cJ(Z)V

    return-void
.end method

.method private a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 5

    .prologue
    .line 478
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    const v1, 0x4c7bc0

    const/16 v2, 0x14

    const/4 v3, 0x0

    new-instance v4, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$10;

    invoke-direct {v4, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$10;-><init>(Lcom/kingroot/kinguser/atm;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/ams;->b(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 510
    return-void
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    return-object v0
.end method

.method private b(ILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 843
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/kingroot/kinguser/ats;

    if-nez v0, :cond_1

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    check-cast p2, Lcom/kingroot/kinguser/ats;

    .line 849
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOn:Lcom/kingroot/kinguser/atq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOn:Lcom/kingroot/kinguser/atq;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/atq;->aPT:Z

    if-eqz v0, :cond_2

    .line 851
    iget-object v0, p2, Lcom/kingroot/kinguser/ats;->adZ:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/asw;->iS(Ljava/lang/String;)V

    .line 853
    iget-object v0, p2, Lcom/kingroot/kinguser/ats;->adZ:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/asu;->iP(Ljava/lang/String;)V

    .line 854
    invoke-direct {p0}, Lcom/kingroot/kinguser/atm;->Pi()V

    .line 855
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 859
    :cond_2
    iget-boolean v0, p2, Lcom/kingroot/kinguser/ats;->aQc:Z

    if-eqz v0, :cond_3

    .line 862
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddActivity;->c(Landroid/app/Activity;)V

    goto :goto_0

    .line 868
    :cond_3
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p2, Lcom/kingroot/kinguser/ats;->adZ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/atu;->w(Landroid/content/Context;Ljava/lang/String;)V

    .line 870
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    iget-object v1, p2, Lcom/kingroot/kinguser/ats;->adZ:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/aks;->n(Ljava/lang/String;J)V

    .line 871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 872
    iget-object v1, p2, Lcom/kingroot/kinguser/ats;->adZ:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    iget v1, p0, Lcom/kingroot/kinguser/atm;->aOl:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 875
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x187d1

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/ady;->a(ILjava/util/List;)V

    goto :goto_0

    .line 877
    :cond_4
    iget v1, p0, Lcom/kingroot/kinguser/atm;->aOl:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 879
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x187bc

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/ady;->a(ILjava/util/List;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/atm;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/atm;->bf(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/concurrent/CountDownLatch;)V
    .locals 4

    .prologue
    .line 513
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOO:Lcom/kingroot/kinguser/bed;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 514
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/atm;Z)Z
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/kingroot/kinguser/atm;->aOM:Z

    return p1
.end method

.method private bf(Ljava/util/List;)V
    .locals 2
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
    .line 1171
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1172
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1173
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1174
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1175
    return-void
.end method

.method private bh(Ljava/util/List;)V
    .locals 5
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
    .line 1179
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOE:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOE:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/atm;->aOp:Lcom/kingroot/kinguser/atp$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1181
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1183
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1184
    invoke-static {}, Lcom/kingroot/kinguser/atu;->OH()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOt:Ljava/util/List;

    .line 1185
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1186
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 1187
    if-eqz v0, :cond_0

    .line 1190
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/ats;

    .line 1191
    iget-object v1, v1, Lcom/kingroot/kinguser/ats;->adZ:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1192
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1199
    :cond_2
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1201
    new-instance v0, Lcom/kingroot/kinguser/atp$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/atp$a;-><init>()V

    .line 1202
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07015d

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/atp$a;->title:Ljava/lang/String;

    .line 1203
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOE:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 1205
    iget-object v2, p0, Lcom/kingroot/kinguser/atm;->aOE:Ljava/util/ArrayList;

    new-instance v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-direct {v3, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    iget-object v2, p0, Lcom/kingroot/kinguser/atm;->aBF:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1208
    :cond_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/atm;->Jf()V

    .line 1212
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOy:Lcom/kingroot/kinguser/atp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atp;->notifyDataSetChanged()V

    .line 1215
    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult$Stub;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOK:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult$Stub;

    return-object v0
.end method

.method private cJ(Z)V
    .locals 1

    .prologue
    .line 949
    invoke-static {p1}, Lcom/kingroot/kinguser/asv;->cJ(Z)V

    .line 950
    if-nez p1, :cond_0

    .line 951
    invoke-static {}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGuideActivityDialog;->Pd()V

    .line 953
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DW()V

    .line 954
    invoke-direct {p0}, Lcom/kingroot/kinguser/atm;->Po()V

    .line 955
    return-void
.end method

.method public static synthetic d(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/anx;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aCF:Lcom/kingroot/kinguser/anx;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aDT:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/atm;)Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/kingroot/kinguser/atm;->aOG:Z

    return v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/kingroot/kinguser/atm;->Pn()V

    return-void
.end method

.method static synthetic h(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/kingroot/kinguser/atm;->Pk()V

    return-void
.end method

.method public static synthetic i(Lcom/kingroot/kinguser/atm;)Ljava/util/List;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOJ:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOm:Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;

    return-object v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/kingroot/kinguser/atm;->Pl()V

    return-void
.end method

.method static synthetic l(Lcom/kingroot/kinguser/atm;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lcom/kingroot/kinguser/atm;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOF:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic n(Lcom/kingroot/kinguser/atm;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOA:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic o(Lcom/kingroot/kinguser/atm;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOB:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic p(Lcom/kingroot/kinguser/atm;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOC:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic q(Lcom/kingroot/kinguser/atm;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOD:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic r(Lcom/kingroot/kinguser/atm;)Ljava/util/List;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOt:Ljava/util/List;

    return-object v0
.end method

.method static synthetic s(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/atq;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOn:Lcom/kingroot/kinguser/atq;

    return-object v0
.end method

.method static synthetic t(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/kingroot/kinguser/atm;->Ph()V

    return-void
.end method

.method static synthetic u(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/kingroot/kinguser/atm;->Pm()V

    return-void
.end method

.method static synthetic v(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/kingroot/kinguser/atm;->Pf()V

    return-void
.end method

.method private vf()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 462
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 464
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 465
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOJ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 468
    iget-object v2, p0, Lcom/kingroot/kinguser/atm;->aOJ:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v2, p0, Lcom/kingroot/kinguser/atm;->aOE:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 471
    iget-object v2, p0, Lcom/kingroot/kinguser/atm;->aBF:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 472
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/atm;->b(Ljava/util/concurrent/CountDownLatch;)V

    .line 473
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/atm;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 474
    return-void
.end method

.method public static synthetic w(Lcom/kingroot/kinguser/atm;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOE:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic x(Lcom/kingroot/kinguser/atm;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aGj:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic y(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    return-object v0
.end method

.method static synthetic z(Lcom/kingroot/kinguser/atm;)Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/kingroot/kinguser/atm;->aOz:Z

    return v0
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 599
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ans;->a(Landroid/os/Message;)V

    .line 600
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 700
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 602
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/atm;->b(ILjava/lang/Object;)V

    goto :goto_0

    .line 605
    :pswitch_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/atm;->Pg()V

    goto :goto_0

    .line 609
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOn:Lcom/kingroot/kinguser/atq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atq;->notifyDataSetChanged()V

    goto :goto_0

    .line 613
    :pswitch_4
    invoke-direct {p0}, Lcom/kingroot/kinguser/atm;->Pj()V

    goto :goto_0

    .line 617
    :pswitch_5
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOm:Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOD:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->gC(I)V

    goto :goto_0

    .line 621
    :pswitch_6
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOm:Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->Px()V

    goto :goto_0

    .line 625
    :pswitch_7
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOm:Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->setOkState(I)V

    goto :goto_0

    .line 630
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 633
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 634
    new-instance v1, Lcom/kingroot/kinguser/atm$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atm$4;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 647
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/atm;->bh(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    goto :goto_0

    .line 655
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 656
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOF:Ljava/util/Map;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 662
    :pswitch_a
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOn:Lcom/kingroot/kinguser/atq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOn:Lcom/kingroot/kinguser/atq;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/atq;->aPT:Z

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOn:Lcom/kingroot/kinguser/atq;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kingroot/kinguser/atq;->aPT:Z

    .line 665
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 671
    :pswitch_b
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOr:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 674
    :pswitch_c
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOm:Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->Py()V

    goto/16 :goto_0

    .line 678
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 680
    new-instance v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/atm;->aOI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    .line 681
    new-instance v0, Lcom/kingroot/kinguser/atp$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/atp$a;-><init>()V

    .line 682
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0704af

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/atp$a;->title:Ljava/lang/String;

    .line 683
    iput-boolean v3, v0, Lcom/kingroot/kinguser/atp$a;->aPN:Z

    .line 684
    new-instance v1, Lcom/kingroot/kinguser/atm$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atm$5;-><init>(Lcom/kingroot/kinguser/atm;)V

    iput-object v1, v0, Lcom/kingroot/kinguser/atp$a;->aPO:Landroid/view/View$OnClickListener;

    .line 690
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOE:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kingroot/kinguser/atm;->aOE:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 691
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOE:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOE:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/atm;->aOI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 692
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOy:Lcom/kingroot/kinguser/atp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atp;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 600
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method protected ah(Ljava/util/List;)V
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
    .line 264
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aBF:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v2, p0, Lcom/kingroot/kinguser/atm;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-static {p1, v0, v1, v2}, Lcom/kingroot/kinguser/anf;->a(Ljava/util/List;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 265
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 304
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 305
    const v0, 0x7f0300fd

    invoke-virtual {v7, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 308
    const v0, 0x7f0f00d9

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aDS:Landroid/widget/ImageView;

    .line 309
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aDS:Landroid/widget/ImageView;

    new-instance v1, Lcom/kingroot/kinguser/atm$17;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atm$17;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    new-instance v0, Lcom/kingroot/kinguser/anx;

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/anx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aCF:Lcom/kingroot/kinguser/anx;

    .line 316
    const v0, 0x7f0f00da

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aCF:Lcom/kingroot/kinguser/anx;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/anx;->getWholeView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 317
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aCF:Lcom/kingroot/kinguser/anx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->JN()V

    .line 318
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aCF:Lcom/kingroot/kinguser/anx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->Jm()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/atm$20;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atm$20;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    const v0, 0x7f0f00d8

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aDT:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    .line 329
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aDT:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    new-instance v1, Lcom/kingroot/kinguser/atm$21;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atm$21;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    const v0, 0x7f0f000b

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOq:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;

    .line 338
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOq:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;->setHandler(Landroid/os/Handler;)V

    .line 339
    const v0, 0x7f0f02a6

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOP:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v4, Lcom/kingroot/kinguser/atm$22;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/atm$22;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-direct {v1, v2, v3, v9, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 357
    new-instance v0, Lcom/kingroot/kinguser/atp;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/atm;->aGj:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/atm;->aOE:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/kingroot/kinguser/atm;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v5, p0, Lcom/kingroot/kinguser/atm;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 359
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/atp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOy:Lcom/kingroot/kinguser/atp;

    .line 360
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOy:Lcom/kingroot/kinguser/atp;

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->akD:Lcom/kingroot/kinguser/and$a;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/atp;->a(Lcom/kingroot/kinguser/and$a;)V

    .line 361
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOq:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOy:Lcom/kingroot/kinguser/atp;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 362
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOq:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;

    invoke-virtual {v0, v11}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 363
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOq:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aON:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 366
    const v0, 0x7f0f02a5

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOm:Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;

    .line 367
    const v0, 0x7f030094

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOq:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;

    invoke-virtual {v7, v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 368
    const v0, 0x7f0f01f3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/gamebox/foreground/view/GameboxGridview;

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOo:Lcom/kingroot/kinguser/gamebox/foreground/view/GameboxGridview;

    .line 369
    new-instance v0, Lcom/kingroot/kinguser/atp$b;

    invoke-direct {v0}, Lcom/kingroot/kinguser/atp$b;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOp:Lcom/kingroot/kinguser/atp$b;

    .line 370
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOp:Lcom/kingroot/kinguser/atp$b;

    iput-object v1, v0, Lcom/kingroot/kinguser/atp$b;->aPP:Landroid/view/View;

    .line 372
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOo:Lcom/kingroot/kinguser/gamebox/foreground/view/GameboxGridview;

    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameboxGridview;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 374
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOq:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;

    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOm:Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;

    new-instance v1, Lcom/kingroot/kinguser/atm$23;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atm$23;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    new-instance v0, Lcom/kingroot/kinguser/atq;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/atm;->aOt:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/atq;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOn:Lcom/kingroot/kinguser/atq;

    .line 387
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOn:Lcom/kingroot/kinguser/atq;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/atq;->setHandler(Landroid/os/Handler;)V

    .line 388
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOo:Lcom/kingroot/kinguser/gamebox/foreground/view/GameboxGridview;

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOn:Lcom/kingroot/kinguser/atq;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameboxGridview;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 390
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$8;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$8;-><init>(Lcom/kingroot/kinguser/atm;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOH:Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener$Stub;

    .line 409
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOH:Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aso;->a(Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;)V

    .line 411
    const v0, 0x7f0f02a8

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOr:Landroid/widget/Button;

    .line 412
    iget v0, p0, Lcom/kingroot/kinguser/atm;->aOl:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 413
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOr:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 435
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Dd()Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DZ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/kingroot/kinguser/aks;->bQ(Z)V

    .line 438
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/kingroot/kinguser/atm;->aOG:Z

    if-nez v0, :cond_2

    .line 439
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/atm;->cJ(Z)V

    .line 440
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187b5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 445
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07014f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOv:Ljava/lang/String;

    .line 447
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07014d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOw:Ljava/lang/String;

    .line 449
    const v0, 0x7f0f02a7

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOs:Landroid/widget/ListView;

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOu:Ljava/util/ArrayList;

    .line 451
    new-instance v0, Lcom/kingroot/kinguser/ato;

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/atm;->aOu:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ato;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/atm;->aOx:Lcom/kingroot/kinguser/ato;

    .line 453
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOs:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOx:Lcom/kingroot/kinguser/ato;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 454
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0201c2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOs:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 456
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOs:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 458
    return-object v8

    .line 415
    :cond_3
    iget-boolean v0, p0, Lcom/kingroot/kinguser/atm;->aOG:Z

    if-eqz v0, :cond_4

    .line 416
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOr:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 418
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOr:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOr:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/atm$24;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atm$24;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected oI()V
    .locals 3

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/kingroot/kinguser/atm;->Pj()V

    .line 522
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOm:Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/gamebox/foreground/view/GameBoxTitleView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/atm$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atm$2;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 532
    invoke-static {}, Lcom/kingroot/kinguser/amb;->Ib()Lcom/kingroot/kinguser/amb;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/amb;->a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult;)V

    .line 550
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 1

    .prologue
    .line 297
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->oO()Lcom/kingroot/kinguser/yp;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v0, 0x14

    .line 278
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ans;->onCreate(Landroid/os/Bundle;)V

    .line 279
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Ei()V

    .line 281
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aii;->xM()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    const-string v1, "5010006"

    iput-object v1, p0, Lcom/kingroot/kinguser/atm;->aGj:Ljava/lang/String;

    .line 283
    iget v1, p0, Lcom/kingroot/kinguser/atm;->aOl:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x5

    :cond_0
    iput v0, p0, Lcom/kingroot/kinguser/atm;->aNY:I

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aiS:Lcom/kingroot/kinguser/we$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/we;->a(Lcom/kingroot/kinguser/we$a;)V

    .line 292
    invoke-direct {p0}, Lcom/kingroot/kinguser/atm;->vf()V

    .line 293
    return-void

    .line 286
    :cond_1
    const-string v1, "5010001"

    iput-object v1, p0, Lcom/kingroot/kinguser/atm;->aGj:Ljava/lang/String;

    .line 287
    iput v0, p0, Lcom/kingroot/kinguser/atm;->aNY:I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aiS:Lcom/kingroot/kinguser/we$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/we;->b(Lcom/kingroot/kinguser/we$a;)V

    .line 594
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onDestroy()V

    .line 595
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 886
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 888
    iget-boolean v1, p0, Lcom/kingroot/kinguser/atm;->aOz:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/kingroot/kinguser/atm;->aOM:Z

    if-eqz v1, :cond_0

    .line 890
    invoke-direct {p0}, Lcom/kingroot/kinguser/atm;->Pk()V

    .line 902
    :goto_0
    return v0

    .line 895
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOn:Lcom/kingroot/kinguser/atq;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOn:Lcom/kingroot/kinguser/atq;

    iget-boolean v1, v1, Lcom/kingroot/kinguser/atq;->aPT:Z

    if-eqz v1, :cond_1

    .line 897
    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOn:Lcom/kingroot/kinguser/atq;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/kingroot/kinguser/atq;->aPT:Z

    .line 898
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 902
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/ans;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 715
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onPause()V

    .line 716
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 554
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onResume()V

    .line 557
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aDT:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aDT:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    const v1, 0x4c7a90

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->fN(I)V

    .line 561
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/atm;->Pi()V

    .line 564
    iget-object v0, p0, Lcom/kingroot/kinguser/atm;->aOE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 565
    instance-of v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v2, :cond_1

    .line 566
    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 568
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v2

    .line 569
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0703e8

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 568
    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/atm;->Jf()V

    .line 575
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->b(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;)V

    .line 577
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/atm$3;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/atm$3;-><init>(Lcom/kingroot/kinguser/atm;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 587
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atm;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 588
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/kingroot/kinguser/atm;->Pe()V

    .line 706
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;)V

    .line 707
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 708
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aso;->a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 709
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atm;->aOH:Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aso;->b(Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;)V

    .line 710
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onStop()V

    .line 711
    return-void
.end method
