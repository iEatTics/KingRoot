.class public Lcom/kingroot/kinguser/bet;
.super Lcom/kingroot/kinguser/acw;
.source "SourceFile"


# static fields
.field private static final bly:I


# instance fields
.field private blA:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/axm;",
            ">;"
        }
    .end annotation
.end field

.field private blB:Lcom/kingcore/uilib/RootStatusView;

.field private blC:Landroid/widget/ImageView;

.field private blD:Lcom/kingroot/kinguser/anx;

.field private blz:Lcom/kingroot/kinguser/aib;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e010a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/bet;->bly:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/kingroot/kinguser/axm;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/acw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bet;->blA:Ljava/lang/ref/WeakReference;

    .line 68
    return-void
.end method

.method private Zx()Lcom/kingroot/kinguser/axm;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->blA:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->blA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/axm;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Zy()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aib$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    new-instance v1, Lcom/kingroot/kinguser/aib$c;

    const/4 v2, 0x1

    .line 146
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f070304

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/kingroot/kinguser/aib$c;-><init>(ILjava/lang/String;)V

    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v1, Lcom/kingroot/kinguser/aib$c;

    const/4 v2, 0x4

    .line 148
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f070306

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/kingroot/kinguser/aib$c;-><init>(ILjava/lang/String;)V

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lcom/kingroot/kinguser/aib$c;

    const/4 v2, 0x2

    .line 150
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f070302

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/kingroot/kinguser/aib$c;-><init>(ILjava/lang/String;)V

    .line 149
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bet;)Lcom/kingroot/common/utils/ui/ImageViewDot;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bet;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bet;->r(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bet;)Lcom/kingroot/kinguser/aib;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->blz:Lcom/kingroot/kinguser/aib;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bet;)Lcom/kingroot/kinguser/axm;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/kingroot/kinguser/bet;->Zx()Lcom/kingroot/kinguser/axm;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bet;)Lcom/kingroot/kinguser/anx;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->blD:Lcom/kingroot/kinguser/anx;

    return-object v0
.end method

.method private r(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 156
    new-instance v0, Lcom/kingroot/kinguser/aib;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kingroot/kinguser/aib;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bet;->blz:Lcom/kingroot/kinguser/aib;

    .line 157
    new-instance v0, Lcom/kingroot/kinguser/aib$b;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/kingroot/kinguser/bet;->Zy()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/bet$4;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/bet$4;-><init>(Lcom/kingroot/kinguser/bet;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/aib$b;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/kingroot/kinguser/aib$a;)V

    .line 174
    iget-object v1, p0, Lcom/kingroot/kinguser/bet;->blz:Lcom/kingroot/kinguser/aib;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aib;->init()V

    .line 175
    iget-object v1, p0, Lcom/kingroot/kinguser/bet;->blz:Lcom/kingroot/kinguser/aib;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aib;->a(Lcom/kingroot/kinguser/aib$b;)V

    .line 176
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->blz:Lcom/kingroot/kinguser/aib;

    new-instance v1, Lcom/kingroot/kinguser/bet$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bet$5;-><init>(Lcom/kingroot/kinguser/bet;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aib;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->blz:Lcom/kingroot/kinguser/aib;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aib;->show()V

    .line 209
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187a0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 210
    return-void
.end method


# virtual methods
.method public Jo()Lcom/kingroot/kinguser/anx;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->blD:Lcom/kingroot/kinguser/anx;

    return-object v0
.end method

.method public b(Lcom/kingroot/kinguser/anx$a;)V
    .locals 6

    .prologue
    .line 227
    invoke-static {}, Lcom/kingroot/kinguser/anf;->IU()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-interface {p1}, Lcom/kingroot/kinguser/anx$a;->xr()V

    .line 278
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/bet$6;

    invoke-direct {v5, p0, p1}, Lcom/kingroot/kinguser/bet$6;-><init>(Lcom/kingroot/kinguser/bet;Lcom/kingroot/kinguser/anx$a;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method public dK(Z)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->blB:Lcom/kingcore/uilib/RootStatusView;

    invoke-virtual {v0, p1}, Lcom/kingcore/uilib/RootStatusView;->setIcon(Z)V

    .line 135
    return-void
.end method

.method public hz(I)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->abE:Landroid/view/View;

    sget v1, Lcom/kingroot/kinguser/bet;->bly:I

    invoke-static {v0, p1, v1}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;II)V

    .line 223
    return-void
.end method

.method public j(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->blB:Lcom/kingcore/uilib/RootStatusView;

    invoke-virtual {v0, p1, p2}, Lcom/kingcore/uilib/RootStatusView;->j(Ljava/lang/String;Z)V

    .line 127
    return-void
.end method

.method protected oI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/bet;->ck(I)V

    .line 77
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bet;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0339

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bet;->abE:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    const v2, 0x7f0202d4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/utils/ui/ImageViewDot;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->aby:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    const v2, 0x7f0e00ed

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/xy;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    invoke-static {}, Lcom/kingroot/kinguser/bhv;->acN()Lcom/kingroot/kinguser/bhv;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bhv;->iR(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bet;->aq(Z)V

    .line 82
    new-instance v0, Lcom/kingroot/kinguser/bet$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bet$1;-><init>(Lcom/kingroot/kinguser/bet;)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bet;->b(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->abE:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bet;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f033b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/RootStatusView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bet;->blB:Lcom/kingcore/uilib/RootStatusView;

    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->blB:Lcom/kingcore/uilib/RootStatusView;

    invoke-virtual {v0, v3}, Lcom/kingcore/uilib/RootStatusView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->blB:Lcom/kingcore/uilib/RootStatusView;

    new-instance v1, Lcom/kingroot/kinguser/bet$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bet$2;-><init>(Lcom/kingroot/kinguser/bet;)V

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/RootStatusView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-static {}, Lcom/kingroot/kinguser/anf;->IU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/kingroot/kinguser/anx;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/anx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bet;->blD:Lcom/kingroot/kinguser/anx;

    .line 104
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bet;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f033d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 105
    iget-object v1, p0, Lcom/kingroot/kinguser/bet;->blD:Lcom/kingroot/kinguser/anx;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/anx;->getWholeView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->blD:Lcom/kingroot/kinguser/anx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->JP()V

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->blD:Lcom/kingroot/kinguser/anx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->Jm()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bet$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bet$3;-><init>(Lcom/kingroot/kinguser/bet;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bet;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f032f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bet;->blC:Landroid/widget/ImageView;

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->blC:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->abA:Landroid/view/View;

    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    const v2, 0x7f0202d5

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/wx;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 123
    return-void
.end method

.method protected oY()Landroid/view/View;
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bet;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030131

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public vd()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->blz:Lcom/kingroot/kinguser/aib;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/kingroot/kinguser/bet;->blz:Lcom/kingroot/kinguser/aib;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aib;->dismiss()V

    .line 219
    :cond_0
    return-void
.end method
