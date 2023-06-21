.class public Lcom/kingroot/kinguser/axq;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/auj$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/axq$b;,
        Lcom/kingroot/kinguser/axq$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aSm:I

.field private aVv:Lcom/kingroot/kinguser/bcp;

.field private aYb:Z

.field private aYj:Landroid/os/CountDownTimer;

.field private aZM:Lcom/kingroot/kinguser/wq;

.field private baM:Lcom/kingroot/kinguser/bii;

.field private baN:Lcom/kingroot/kinguser/auj$a;

.field private baO:Landroid/view/View;

.field private baP:Landroid/view/View;

.field private baQ:Lcom/kingroot/kinguser/bco;

.field private baR:Lcom/kingroot/kinguser/bcc;

.field private baS:Z

.field private baT:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private baU:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private baV:Lcom/kingroot/kinguser/beu;

.field private final baW:Landroid/view/View$OnClickListener;

.field private final baX:Lcom/kingroot/kinguser/axq$a;

.field private final baY:Lcom/kingroot/kinguser/axq$b;

.field private final baZ:Landroid/view/View$OnClickListener;

.field private final bba:Landroid/view/View$OnClickListener;

.field private final bbb:Landroid/view/View$OnClickListener;

.field private final bbc:Landroid/view/View$OnClickListener;

.field private final bbd:Landroid/view/View$OnClickListener;

.field private final bbe:Lcom/kingcore/uilib/ClipView$b;

.field private final bbf:Lcom/kingcore/uilib/ClipView$b;

.field private mContentView:Landroid/view/View;

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->asd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RootProcessPage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/axq;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x2710

    const/4 v6, 0x0

    .line 117
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/axq;->mStartTime:J

    .line 82
    new-instance v0, Lcom/kingroot/kinguser/axq$1;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/axq$1;-><init>(Lcom/kingroot/kinguser/axq;JJ)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->aYj:Landroid/os/CountDownTimer;

    .line 95
    iput-boolean v6, p0, Lcom/kingroot/kinguser/axq;->aYb:Z

    .line 107
    iput-boolean v6, p0, Lcom/kingroot/kinguser/axq;->baS:Z

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->baT:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->baU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 705
    new-instance v0, Lcom/kingroot/kinguser/axq$10;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axq$10;-><init>(Lcom/kingroot/kinguser/axq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->baW:Landroid/view/View$OnClickListener;

    .line 719
    new-instance v0, Lcom/kingroot/kinguser/axq$11;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axq$11;-><init>(Lcom/kingroot/kinguser/axq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->baX:Lcom/kingroot/kinguser/axq$a;

    .line 757
    new-instance v0, Lcom/kingroot/kinguser/axq$12;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axq$12;-><init>(Lcom/kingroot/kinguser/axq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->baY:Lcom/kingroot/kinguser/axq$b;

    .line 778
    new-instance v0, Lcom/kingroot/kinguser/axq$13;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axq$13;-><init>(Lcom/kingroot/kinguser/axq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->baZ:Landroid/view/View$OnClickListener;

    .line 791
    new-instance v0, Lcom/kingroot/kinguser/axq$14;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axq$14;-><init>(Lcom/kingroot/kinguser/axq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->bba:Landroid/view/View$OnClickListener;

    .line 802
    new-instance v0, Lcom/kingroot/kinguser/axq$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axq$2;-><init>(Lcom/kingroot/kinguser/axq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->bbb:Landroid/view/View$OnClickListener;

    .line 816
    new-instance v0, Lcom/kingroot/kinguser/axq$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axq$3;-><init>(Lcom/kingroot/kinguser/axq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->bbc:Landroid/view/View$OnClickListener;

    .line 833
    new-instance v0, Lcom/kingroot/kinguser/axq$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axq$4;-><init>(Lcom/kingroot/kinguser/axq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->bbd:Landroid/view/View$OnClickListener;

    .line 850
    new-instance v0, Lcom/kingroot/kinguser/axq$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axq$5;-><init>(Lcom/kingroot/kinguser/axq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->bbe:Lcom/kingcore/uilib/ClipView$b;

    .line 897
    new-instance v0, Lcom/kingroot/kinguser/axq$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axq$6;-><init>(Lcom/kingroot/kinguser/axq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->bbf:Lcom/kingcore/uilib/ClipView$b;

    .line 118
    return-void
.end method

.method private TU()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axq;->aYb:Z

    .line 283
    invoke-static {}, Lcom/kingroot/kinguser/aiy;->yI()Lcom/kingroot/kinguser/aiy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aiy;->yJ()V

    .line 284
    return-void
.end method

.method private TV()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axq;->aYb:Z

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axq;Lcom/kingroot/kinguser/bcp;)Lcom/kingroot/kinguser/bcp;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/kingroot/kinguser/axq;->aVv:Lcom/kingroot/kinguser/bcp;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axq;Lcom/kingroot/kinguser/bii;)Lcom/kingroot/kinguser/bii;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/kingroot/kinguser/axq;->baM:Lcom/kingroot/kinguser/bii;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axq;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baT:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axq;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/kingroot/kinguser/axq;->baS:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/bcp;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->aVv:Lcom/kingroot/kinguser/bcp;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/auj$a;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baN:Lcom/kingroot/kinguser/auj$a;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/axq;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/axq;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/axq;)Lcom/kingroot/kinguser/bii;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baM:Lcom/kingroot/kinguser/bii;

    return-object v0
.end method

.method private hC(I)V
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/aiy;->a(Landroid/app/Activity;I)V

    .line 302
    return-void
.end method


# virtual methods
.method public Ql()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 320
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bco;->Ql()V

    .line 321
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->baR:Lcom/kingroot/kinguser/bcc;

    .line 322
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bcc;->Xi()Lcom/kingroot/kinguser/bck;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bck;->getWholeView()Landroid/view/View;

    move-result-object v1

    .line 321
    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/wq;->a(ILandroid/view/View;)Landroid/view/View;

    .line 324
    :cond_0
    return-void
.end method

.method public Qm()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 352
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18859

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 354
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 355
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 356
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bco;->Qm()V

    .line 357
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baR:Lcom/kingroot/kinguser/bcc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcc;->Xj()Lcom/kingroot/kinguser/bcj;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->baY:Lcom/kingroot/kinguser/axq$b;

    invoke-virtual {v1, v6}, Lcom/kingroot/kinguser/axq$b;->dv(Z)V

    .line 361
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcj;->Xp()Landroid/widget/Button;

    move-result-object v1

    .line 362
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcj;->Xr()Landroid/widget/TextView;

    move-result-object v2

    .line 363
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcj;->Xq()Landroid/widget/Button;

    move-result-object v3

    .line 365
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f0701ec

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v4, p0, Lcom/kingroot/kinguser/axq;->baY:Lcom/kingroot/kinguser/axq$b;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07028a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->bbc:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcj;->getWholeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/kingroot/kinguser/wq;->a(ILandroid/view/View;)Landroid/view/View;

    .line 371
    return-void
.end method

.method public Qn()V
    .locals 8

    .prologue
    const v7, 0x7f07026c

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 535
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1885d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 537
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 538
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 539
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07028c

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bco;->kC(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baV:Lcom/kingroot/kinguser/beu;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/beu;->it(I)V

    .line 545
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188ac

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 549
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baR:Lcom/kingroot/kinguser/bcc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcc;->Xd()Lcom/kingroot/kinguser/bci;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bci;->Xn()Landroid/widget/Button;

    move-result-object v1

    .line 551
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 552
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 553
    iget-object v2, p0, Lcom/kingroot/kinguser/axq;->baZ:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bci;->getWholeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/kingroot/kinguser/wq;->a(ILandroid/view/View;)Landroid/view/View;

    .line 570
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baR:Lcom/kingroot/kinguser/bcc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcc;->Xj()Lcom/kingroot/kinguser/bcj;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcj;->Xp()Landroid/widget/Button;

    move-result-object v1

    .line 560
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcj;->Xr()Landroid/widget/TextView;

    move-result-object v2

    .line 561
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcj;->Xq()Landroid/widget/Button;

    move-result-object v3

    .line 563
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f070353

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v4, p0, Lcom/kingroot/kinguser/axq;->baW:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v4, 0x7f070354

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->baZ:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcj;->getWholeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/kingroot/kinguser/wq;->a(ILandroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method

.method public Qo()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 682
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 683
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 684
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bco;->Qo()V

    .line 685
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baR:Lcom/kingroot/kinguser/bcc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcc;->Xh()Lcom/kingroot/kinguser/bcm;

    move-result-object v0

    .line 686
    new-instance v1, Lcom/kingroot/kinguser/axq$9;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axq$9;-><init>(Lcom/kingroot/kinguser/axq;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bcm;->d(Landroid/view/View$OnClickListener;)V

    .line 701
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    const/4 v2, 0x1

    .line 702
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcm;->getWholeView()Landroid/view/View;

    move-result-object v0

    .line 701
    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/wq;->a(ILandroid/view/View;)Landroid/view/View;

    .line 703
    return-void
.end method

.method protected TT()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->aYj:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->aYj:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 298
    :cond_0
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    const-wide/16 v8, 0x9c4

    const-wide/16 v6, 0x0

    const/16 v5, 0x27d9

    const/4 v1, 0x1

    .line 215
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->a(Landroid/os/Message;)V

    .line 218
    invoke-direct {p0}, Lcom/kingroot/kinguser/axq;->TV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_4

    .line 224
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axq;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axq;->TT()V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 232
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v5, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 234
    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Lcom/kingroot/kinguser/aix;->dI(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    iget-wide v4, p0, Lcom/kingroot/kinguser/axq;->mStartTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/kingroot/kinguser/axq;->mStartTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 237
    iget-wide v4, p0, Lcom/kingroot/kinguser/axq;->mStartTime:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v8

    if-gez v4, :cond_3

    .line 240
    iget-wide v4, p0, Lcom/kingroot/kinguser/axq;->mStartTime:J

    add-long/2addr v4, v8

    sub-long v2, v4, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 246
    :cond_2
    iget-wide v4, p0, Lcom/kingroot/kinguser/axq;->mStartTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/kingroot/kinguser/axq;->mStartTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 247
    iget-wide v4, p0, Lcom/kingroot/kinguser/axq;->mStartTime:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v10

    if-gez v4, :cond_3

    .line 250
    iget-wide v4, p0, Lcom/kingroot/kinguser/axq;->mStartTime:J

    add-long/2addr v4, v10

    sub-long v2, v4, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 258
    :cond_3
    iget v0, v1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axq;->hC(I)V

    .line 261
    invoke-direct {p0}, Lcom/kingroot/kinguser/axq;->TU()V

    goto :goto_0

    .line 262
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 266
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbv;->dC(Z)V

    .line 267
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbv;->WN()I

    move-result v0

    .line 269
    const/16 v1, 0x80

    if-ne v0, v1, :cond_5

    .line 270
    const/4 v0, 0x2

    .line 273
    :cond_5
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axq;->hC(I)V

    .line 275
    invoke-direct {p0}, Lcom/kingroot/kinguser/axq;->TU()V

    goto/16 :goto_0
.end method

.method public a(Lcloudsdk/ext/kr/RootExtInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 330
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18859

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 334
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bco;->Xt()V

    .line 335
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baR:Lcom/kingroot/kinguser/bcc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcc;->Xg()Lcom/kingroot/kinguser/bch;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->baY:Lcom/kingroot/kinguser/axq$b;

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/axq$b;->dv(Z)V

    .line 337
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->baY:Lcom/kingroot/kinguser/axq$b;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bch;->e(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->bbc:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bch;->f(Landroid/view/View$OnClickListener;)V

    .line 339
    if-eqz p1, :cond_0

    .line 340
    iget v1, p1, Lcloudsdk/ext/kr/RootExtInfo;->useTime:I

    iget v2, p1, Lcloudsdk/ext/kr/RootExtInfo;->succRate:I

    iget v3, p1, Lcloudsdk/ext/kr/RootExtInfo;->succUsers:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bch;->i(III)V

    .line 345
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bch;->getWholeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/wq;->a(ILandroid/view/View;)Landroid/view/View;

    .line 346
    return-void

    .line 343
    :cond_0
    const/16 v1, 0x78

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bch;->i(III)V

    goto :goto_0
.end method

.method public a(Lcloudsdk/ext/kr/RootExtInfo;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 377
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18859

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 379
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 380
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 381
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bco;->Xv()V

    .line 382
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baR:Lcom/kingroot/kinguser/bcc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcc;->Xf()Lcom/kingroot/kinguser/bcn;

    move-result-object v0

    .line 383
    if-eqz p2, :cond_0

    .line 386
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->baV:Lcom/kingroot/kinguser/beu;

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/beu;->it(I)V

    .line 388
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x1885d

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 389
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->baZ:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bcn;->f(Landroid/view/View$OnClickListener;)V

    .line 396
    :goto_0
    if-eqz p1, :cond_1

    .line 397
    iget v1, p1, Lcloudsdk/ext/kr/RootExtInfo;->useTime:I

    iget v2, p1, Lcloudsdk/ext/kr/RootExtInfo;->succRate:I

    iget v3, p1, Lcloudsdk/ext/kr/RootExtInfo;->succUsers:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bcn;->i(III)V

    .line 403
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->bbb:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bcn;->e(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcn;->getWholeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/wq;->a(ILandroid/view/View;)Landroid/view/View;

    .line 405
    return-void

    .line 392
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x188b3

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 393
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07028a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bcn;->kA(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->bbc:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bcn;->f(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 400
    :cond_1
    const/16 v1, 0x78

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bcn;->i(III)V

    goto :goto_1
.end method

.method public a(Lcom/kingroot/kinguser/auj$a;)V
    .locals 1

    .prologue
    .line 306
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/auj$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->baN:Lcom/kingroot/kinguser/auj$a;

    .line 307
    return-void
.end method

.method public cR(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 520
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 521
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 522
    if-eqz p1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->bbf:Lcom/kingcore/uilib/ClipView$b;

    invoke-virtual {v0, v3, v1}, Lcom/kingroot/kinguser/bco;->a(ZLcom/kingcore/uilib/ClipView$b;)V

    .line 527
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/wq;->remove(I)V

    .line 528
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->bbe:Lcom/kingcore/uilib/ClipView$b;

    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/bco;->a(ZLcom/kingcore/uilib/ClipView$b;)V

    goto :goto_0
.end method

.method public cS(Z)V
    .locals 13

    .prologue
    .line 621
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18860

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 622
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baU:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 623
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 624
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/akj;->aT(Landroid/content/Context;)Lcom/kingroot/kinguser/akj;

    move-result-object v12

    .line 625
    if-eqz p1, :cond_0

    .line 626
    invoke-virtual {v12}, Lcom/kingroot/kinguser/akj;->AC()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {v12, v0, v1}, Lcom/kingroot/kinguser/akj;->am(J)V

    .line 627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/kingroot/kinguser/akj;->al(J)V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->bba:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bco;->g(Landroid/view/View$OnClickListener;)V

    .line 631
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bco;->Xu()V

    .line 632
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    .line 633
    invoke-virtual {v12}, Lcom/kingroot/kinguser/akj;->AB()J

    move-result-wide v2

    .line 634
    invoke-virtual {v12}, Lcom/kingroot/kinguser/akj;->AC()J

    move-result-wide v4

    .line 635
    invoke-virtual {v12}, Lcom/kingroot/kinguser/akj;->AE()J

    move-result-wide v6

    .line 636
    invoke-virtual {v12}, Lcom/kingroot/kinguser/akj;->AF()J

    move-result-wide v8

    .line 637
    invoke-virtual {v12}, Lcom/kingroot/kinguser/akj;->AG()I

    move-result v10

    .line 638
    invoke-virtual {v12}, Lcom/kingroot/kinguser/akj;->AH()Z

    move-result v11

    move v1, p1

    .line 632
    invoke-virtual/range {v0 .. v11}, Lcom/kingroot/kinguser/bco;->a(ZJJJJIZ)V

    .line 640
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188ac

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 644
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188b3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 646
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baR:Lcom/kingroot/kinguser/bcc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcc;->Xd()Lcom/kingroot/kinguser/bci;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bci;->Xn()Landroid/widget/Button;

    move-result-object v1

    .line 648
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07028a

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 649
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 650
    iget-object v2, p0, Lcom/kingroot/kinguser/axq;->bbc:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bci;->getWholeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/wq;->a(ILandroid/view/View;)Landroid/view/View;

    .line 672
    :goto_0
    invoke-virtual {v12}, Lcom/kingroot/kinguser/akj;->AJ()V

    .line 674
    invoke-virtual {v12}, Lcom/kingroot/kinguser/akj;->AC()J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/kingroot/kinguser/akj;->ak(J)V

    .line 675
    invoke-virtual {v12}, Lcom/kingroot/kinguser/akj;->AF()J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/kingroot/kinguser/akj;->an(J)V

    .line 677
    return-void

    .line 655
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188b3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 657
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baR:Lcom/kingroot/kinguser/bcc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcc;->Xj()Lcom/kingroot/kinguser/bcj;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcj;->Xp()Landroid/widget/Button;

    move-result-object v1

    .line 660
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcj;->Xr()Landroid/widget/TextView;

    move-result-object v2

    .line 661
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcj;->Xq()Landroid/widget/Button;

    move-result-object v3

    .line 663
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f070353

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v4, p0, Lcom/kingroot/kinguser/axq;->baW:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v4, 0x7f070354

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07028a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->bbc:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcj;->getWholeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/wq;->a(ILandroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method

.method public cT(Z)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const v10, 0x7f07026a

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 576
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 577
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 578
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/akj;->aT(Landroid/content/Context;)Lcom/kingroot/kinguser/akj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akj;->AC()J

    move-result-wide v0

    .line 579
    iget-object v2, p0, Lcom/kingroot/kinguser/axq;->baR:Lcom/kingroot/kinguser/bcc;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bcc;->Xj()Lcom/kingroot/kinguser/bcj;

    move-result-object v2

    .line 581
    iget-object v3, p0, Lcom/kingroot/kinguser/axq;->baX:Lcom/kingroot/kinguser/axq$a;

    invoke-virtual {v3, v8}, Lcom/kingroot/kinguser/axq$a;->dx(Z)V

    .line 582
    invoke-virtual {v2}, Lcom/kingroot/kinguser/bcj;->Xp()Landroid/widget/Button;

    move-result-object v3

    .line 583
    invoke-virtual {v2}, Lcom/kingroot/kinguser/bcj;->Xr()Landroid/widget/TextView;

    move-result-object v4

    .line 584
    invoke-virtual {v2}, Lcom/kingroot/kinguser/bcj;->Xq()Landroid/widget/Button;

    move-result-object v5

    .line 586
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v6

    const v7, 0x7f070288

    invoke-virtual {v6, v7}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v6, p0, Lcom/kingroot/kinguser/axq;->baX:Lcom/kingroot/kinguser/axq$a;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v6, 0x7f070289

    invoke-virtual {v3, v6}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    if-eqz p1, :cond_1

    .line 590
    cmp-long v3, v0, v12

    if-lez v3, :cond_0

    .line 591
    iget-object v3, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    new-array v6, v9, [Ljava/lang/Object;

    .line 592
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v8

    .line 591
    invoke-virtual {v4, v10, v6}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/bco;->kC(Ljava/lang/String;)V

    .line 598
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baV:Lcom/kingroot/kinguser/beu;

    invoke-virtual {v0, v8}, Lcom/kingroot/kinguser/beu;->it(I)V

    .line 599
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07026c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baZ:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bcj;->getWholeView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/kingroot/kinguser/wq;->a(ILandroid/view/View;)Landroid/view/View;

    .line 615
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    .line 595
    invoke-static {}, Lcom/kingroot/kinguser/aus;->EQ()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 594
    invoke-virtual {v1, v10, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bco;->kC(Ljava/lang/String;)V

    goto :goto_0

    .line 603
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v3

    const v4, 0x188b3

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 604
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f07028a

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v3, p0, Lcom/kingroot/kinguser/axq;->bbc:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    cmp-long v3, v0, v12

    if-lez v3, :cond_2

    .line 607
    iget-object v3, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    .line 608
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v8

    .line 607
    invoke-virtual {v4, v10, v5}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/bco;->kB(Ljava/lang/String;)V

    goto :goto_1

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    .line 611
    invoke-static {}, Lcom/kingroot/kinguser/aus;->EQ()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 610
    invoke-virtual {v1, v10, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bco;->kB(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public d(IIIII)V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 411
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 412
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baR:Lcom/kingroot/kinguser/bcc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcc;->Xe()Lcom/kingroot/kinguser/bcl;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->baT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18862

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 419
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baV:Lcom/kingroot/kinguser/beu;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/beu;->it(I)V

    .line 420
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bco;->ic(I)V

    .line 421
    new-instance v0, Lcom/kingroot/kinguser/bcl;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bcl;-><init>(Landroid/content/Context;)V

    .line 422
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->baR:Lcom/kingroot/kinguser/bcc;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bcc;->a(Lcom/kingroot/kinguser/bcl;)V

    .line 423
    if-ne p1, v2, :cond_0

    .line 425
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 426
    const v2, 0x7f07013e

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bcl;->kx(Ljava/lang/String;)V

    .line 427
    const v2, 0x7f07013d

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bcl;->ky(Ljava/lang/String;)V

    .line 428
    const v2, 0x7f07013c

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bcl;->kz(Ljava/lang/String;)V

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcl;->getWholeView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/kingroot/kinguser/wq;->a(ILandroid/view/View;)Landroid/view/View;

    .line 433
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcl;->Xs()V

    .line 436
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bcl;->ia(I)V

    .line 437
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axq;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/axq$8;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/axq$8;-><init>(Lcom/kingroot/kinguser/axq;Lcom/kingroot/kinguser/bcl;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 463
    :cond_1
    :goto_0
    const/16 v1, 0x64

    if-ne p5, v1, :cond_3

    .line 466
    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/bcl;->ib(I)V

    .line 471
    :goto_1
    return-void

    .line 458
    :cond_2
    if-ne p2, v6, :cond_1

    .line 460
    invoke-virtual {v0, p3, p4}, Lcom/kingroot/kinguser/bcl;->ae(II)V

    goto :goto_0

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    invoke-virtual {v0, p5}, Lcom/kingroot/kinguser/bco;->setPercentage(I)V

    goto :goto_1
.end method

.method public e(IIIII)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 477
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 478
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baR:Lcom/kingroot/kinguser/bcc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcc;->Xe()Lcom/kingroot/kinguser/bcl;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->baT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18862

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 485
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bco;->ic(I)V

    .line 486
    new-instance v0, Lcom/kingroot/kinguser/bcl;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bcl;-><init>(Landroid/content/Context;)V

    .line 487
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->baR:Lcom/kingroot/kinguser/bcc;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bcc;->a(Lcom/kingroot/kinguser/bcl;)V

    .line 488
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 490
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 491
    const v2, 0x7f07013e

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bcl;->kx(Ljava/lang/String;)V

    .line 492
    const v2, 0x7f07013d

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bcl;->ky(Ljava/lang/String;)V

    .line 493
    const v2, 0x7f07013c

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bcl;->kz(Ljava/lang/String;)V

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcl;->getWholeView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/kingroot/kinguser/wq;->a(ILandroid/view/View;)Landroid/view/View;

    .line 497
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcl;->Xs()V

    .line 499
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bcl;->ib(I)V

    .line 501
    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/bcl;->ib(I)V

    .line 503
    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/bcl;->ia(I)V

    .line 508
    :cond_1
    :goto_0
    const/16 v1, 0x64

    if-ne p5, v1, :cond_3

    .line 510
    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/bcl;->ib(I)V

    .line 515
    :goto_1
    return-void

    .line 504
    :cond_2
    if-ne p2, v5, :cond_1

    .line 506
    invoke-virtual {v0, p3, p4}, Lcom/kingroot/kinguser/bcl;->ae(II)V

    goto :goto_0

    .line 514
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    invoke-virtual {v0, p5}, Lcom/kingroot/kinguser/bco;->setPercentage(I)V

    goto :goto_1
.end method

.method protected oG()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 182
    new-instance v0, Lcom/kingroot/kinguser/wq;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axq;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/wq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wq;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->mContentView:Landroid/view/View;

    .line 184
    new-instance v2, Lcom/kingroot/kinguser/bcc;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axq;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->mContentView:Landroid/view/View;

    const v4, 0x7f0f0106

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v0}, Lcom/kingroot/kinguser/bcc;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/kingroot/kinguser/axq;->baR:Lcom/kingroot/kinguser/bcc;

    .line 185
    new-instance v0, Lcom/kingroot/kinguser/bco;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axq;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/bco;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bco;->getWholeView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->baO:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baQ:Lcom/kingroot/kinguser/bco;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bco;->XB()V

    .line 188
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    iget-object v2, p0, Lcom/kingroot/kinguser/axq;->baO:Landroid/view/View;

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2, v1, v3}, Lcom/kingroot/kinguser/wq;->b(Landroid/view/View;IF)Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    iget-object v2, p0, Lcom/kingroot/kinguser/axq;->baP:Landroid/view/View;

    const v3, 0x3ecccccc    # 0.39999998f

    invoke-virtual {v0, v2, v8, v3}, Lcom/kingroot/kinguser/wq;->b(Landroid/view/View;IF)Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/wq;->a(IIIII)V

    .line 194
    iget-object v2, p0, Lcom/kingroot/kinguser/axq;->aZM:Lcom/kingroot/kinguser/wq;

    move v3, v8

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/kingroot/kinguser/wq;->a(IIIII)V

    .line 197
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->mContentView:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/axq$7;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axq$7;-><init>(Lcom/kingroot/kinguser/axq;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baN:Lcom/kingroot/kinguser/auj$a;

    iget v1, p0, Lcom/kingroot/kinguser/axq;->aSm:I

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auj$a;->cX(I)V

    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 174
    new-instance v0, Lcom/kingroot/kinguser/beu;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axq;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/32 v2, 0x7f07007c

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axq;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/beu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axq;->baV:Lcom/kingroot/kinguser/beu;

    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baV:Lcom/kingroot/kinguser/beu;

    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->bbd:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beu;->m(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baV:Lcom/kingroot/kinguser/beu;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18857

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 127
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aks;->cm(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axq;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 129
    iput v3, p0, Lcom/kingroot/kinguser/axq;->aSm:I

    .line 130
    if-eqz v0, :cond_0

    .line 131
    const-string v1, "root_process_state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/axq;->aSm:I

    .line 132
    iget-object v1, p0, Lcom/kingroot/kinguser/axq;->baN:Lcom/kingroot/kinguser/auj$a;

    const-string v2, "fix_with_result"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/auj$a;->cQ(Z)V

    .line 136
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/axq;->aSm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/axq;->mStartTime:J

    .line 141
    invoke-static {}, Lcom/kingroot/kinguser/aiy;->yI()Lcom/kingroot/kinguser/aiy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axq;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aiy;->a(Landroid/os/Handler;)V

    .line 142
    invoke-static {}, Lcom/kingroot/kinguser/aiy;->yI()Lcom/kingroot/kinguser/aiy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aiy;->ll()V

    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->aYj:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 147
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baM:Lcom/kingroot/kinguser/bii;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baM:Lcom/kingroot/kinguser/bii;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bii;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baM:Lcom/kingroot/kinguser/bii;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bii;->dismiss()V

    .line 910
    :cond_0
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onDestroy()V

    .line 911
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 153
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axq;->baS:Z

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axq;->baS:Z

    .line 156
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baN:Lcom/kingroot/kinguser/auj$a;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auj$a;->cX(I)V

    .line 165
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/axq;->baN:Lcom/kingroot/kinguser/auj$a;

    const/16 v1, 0x1f4

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auj$a;->gQ(I)V

    .line 169
    :cond_1
    return-void
.end method
