.class public Lcom/kingroot/kinguser/atl;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# instance fields
.field private aOe:Lcom/kingroot/kinguser/bih;

.field private aOf:Lcom/kingroot/kinguser/bht;

.field private aOg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/atl;->mType:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/atl;->aOg:Ljava/util/List;

    .line 39
    iput p2, p0, Lcom/kingroot/kinguser/atl;->mType:I

    .line 40
    iput-object p3, p0, Lcom/kingroot/kinguser/atl;->aOg:Ljava/util/List;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atl;Lcom/kingroot/kinguser/bht;)Lcom/kingroot/kinguser/bht;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/kingroot/kinguser/atl;->aOf:Lcom/kingroot/kinguser/bht;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atl;Lcom/kingroot/kinguser/bih;)Lcom/kingroot/kinguser/bih;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/kingroot/kinguser/atl;->aOe:Lcom/kingroot/kinguser/bih;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/atl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/atl;->aOg:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/atl;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/kingroot/kinguser/atl;->mType:I

    return v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bih;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/atl;->aOe:Lcom/kingroot/kinguser/bih;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/atl;)Lcom/kingroot/kinguser/bht;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/atl;->aOf:Lcom/kingroot/kinguser/bht;

    return-object v0
.end method


# virtual methods
.method protected oG()Landroid/view/View;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/kingroot/kinguser/atl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e010a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 47
    return-object v0
.end method

.method protected oI()V
    .locals 6

    .prologue
    .line 52
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->oI()V

    .line 54
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/atl$1;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/atl$1;-><init>(Lcom/kingroot/kinguser/atl;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 137
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/kingroot/kinguser/atl;->vd()V

    .line 142
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onDestroy()V

    .line 143
    return-void
.end method

.method public vd()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/atl;->aOe:Lcom/kingroot/kinguser/bih;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/atl;->aOe:Lcom/kingroot/kinguser/bih;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bih;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/kingroot/kinguser/atl;->aOe:Lcom/kingroot/kinguser/bih;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bih;->dismiss()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atl;->aOf:Lcom/kingroot/kinguser/bht;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/atl;->aOf:Lcom/kingroot/kinguser/bht;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bht;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/atl;->aOf:Lcom/kingroot/kinguser/bht;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bht;->dismiss()V

    .line 155
    :cond_1
    return-void
.end method
